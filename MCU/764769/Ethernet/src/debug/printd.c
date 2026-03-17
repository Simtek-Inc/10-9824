//================================================================================
// Module Name : printd.c
// Purpose     : AX11000 initialization and globe values setting.
// Author      : 
// Date        : 
// Notes       : 
//================================================================================
//= = = = = = = SIMTEK = = = = = = =
//
// Revision A    
//    added format specifier g for printd()
//
//= = = = = = = SIMTEK = = = = = = =
//

// INCLUDE FILE DECLARATIONS //
#include <stdarg.h>
#include "types.h"
#include "printd.h"
#include "uart.h"
#include "string.h"

// GLOBAL VARIABLES DECLARATIONS //
byte DEBUG_MsgEnable = 1;

// STATIC VARIABLE DECLARATIONS //

// LOCAL SUBPROGRAM DECLARATIONS //
static int prints(const char *string, int width, int pad);
static int printi(long i, int b, int sg, int width, int pad, int letbase);
static int printipa(long i, int width, int pad);

// LOCAL SUBPROGRAM BODIES //

//--------------------------------------------------------------------------------
// Name    : static int prints(const char *string, int width, int pad)
// Purpose : None
// Params  : None
// Returns : None
// Note    : None
//--------------------------------------------------------------------------------
static int prints(const char *string, int width, int pad)
{
	register int pc = 0, padchar = ' ';

	if (width > 0) 
	  {
		register int len = 0;
		register const char *ptr;
	  for (ptr = string; *ptr; ++ptr)
	    ++len;
	  if (len >= width)
	    width = 0;
	  else
	    width -= len;
		if (pad & PAD_ZERO) padchar = '0';
	}
	if (!(pad & PAD_RIGHT))
	  {
	  for ( ; width > 0; --width)
	    {
			DEBUG_PORT_PUTCHR(padchar);
			++pc;
		}
	}
	for ( ; *string ; ++string)
	  {
		DEBUG_PORT_PUTCHR(*string);
		++pc;
	}
	for ( ; width > 0; --width)
	  {
		DEBUG_PORT_PUTCHR ( padchar);
		++pc;
	}
	return pc;
}

//--------------------------------------------------------------------------------
// Name    : static int printi(long i, int b, int sg, int width, int pad, int letbase)
// Purpose : None
// Params  : None
// Returns : None
// Note    : None
//--------------------------------------------------------------------------------
static int printi(long i, int b, int sg, int width, int pad, int letbase)
{//  i       == value
 //  b       == number base
 //  sg      == signed numer 1 = yes, 0 = no
 //  width   == width of string
 //  pad     == pad flags
 //  letbase ==
	char print_buf[PRINT_BUF_LEN];
	register char *s;
	register long t, neg = 0, pc = 0;
	register unsigned long u = i;

	if (i == 0)
	  {
		print_buf[0] = '0';
		print_buf[1] = '\0';
		return prints ( print_buf, width, pad);
	}
	if (sg && b == 10 && i < 0)
	  {
		neg = 1;
		u = -i;
	}
	s = print_buf + PRINT_BUF_LEN-1;
	*s = '\0';
	while (u)
	  {
		t = u % b;
		if( t >= 10 )
			t += letbase - '0' - 10;
		*--s = t + '0';
		u /= b;
	}
	if (neg)
	  {
	  if( width && (pad & PAD_ZERO) )
	    {
			DEBUG_PORT_PUTCHR ('-');
			++pc;
			--width;
		}
	  else
	    { *--s = '-'; }
	}
	return pc + prints(s, width, pad);
}


// EXPORTED SUBPROGRAM BODIES /

//--------------------------------------------------------------------------------
// Name    : int printd(const char *format, ...)
// Purpose : None
// Params  : None
// Returns : number of cahracter written to the port
// Note    : None
//--------------------------------------------------------------------------------
int printd(const char *format, ...)
{
	register int width, pad;
	register int pc = 0;
 	char scr[2];
	
    va_list args;
    
    if (DEBUG_MsgEnable == 0)
        return 0;

    va_start( args, format );
	for (; *format != 0; ++format)
	  {
	  if (*format == '%')
	    {
			++format;
			width = pad = 0;
			if (*format == '\0') break;
			if (*format == '%') goto out;
	    if (*format == '-') 
	      {
				++format;
				pad = PAD_RIGHT;
			}
	    while (*format == '0')
	      {
				++format;
				pad |= PAD_ZERO;
			}
	    for ( ; *format >= '0' && *format <= '9'; ++format)
	      {
				width *= 10;
				width += *format - '0';
			}
			switch(*format)
			{
				case 'c' :
					scr[0] = (char)va_arg( args, char );
					scr[1] = '\0';
					pc += prints ( scr, width, pad);
					continue;
				case 's':
				    {
	          char *s = (char *)va_arg( args, char * );
					pc += prints ( s?s:"(null)", width, pad);
					continue;
					}
	      case 'i':
	          {
                ++format;
                if(*format == 'p')
                  {
	            pc += printipa(va_arg( args, long ), width, pad);
                  }
	          continue;
	          }
				case 'b':
					++format;
					if (*format == 'd')
						pc += printi ( va_arg( args, char ), 10, 1, width, pad, 'a');
					else if (*format == 'u')
	            pc += printi ( va_arg( args, byte ), 10, 0, width, pad, 'a');
					else if (*format == 'x')
	            pc += printi ( va_arg( args, byte ), 16, 0, width, pad, 'a');
					continue;
				case 'd':
					++format;
					if (*format == 'd')
					pc += printi ( va_arg( args, int ), 10, 1, width, pad, 'a');
					else if (*format == 'u')
	            pc += printi ( va_arg( args, uint ), 10, 0, width, pad, 'a');
					else if (*format == 'x')
	            pc += printi ( va_arg( args, uint ), 16, 0, width, pad, 'a');
					continue;
				case 'l':
					++format;
					if (*format == 'd')
						pc += printi ( va_arg( args, long ), 10, 1, width, pad, 'a');
					else if (*format == 'u')
	            pc += printi ( va_arg( args, ulong ), 10, 0, width, pad, 'a');
					else if (*format == 'x')
	            pc += printi ( va_arg( args, ulong ), 16, 0, width, pad, 'a');
					continue;
			}
		}
	  else
	    {
		out:
			DEBUG_PORT_PUTCHR(*format);
			++pc;
		}
	}
	va_end(args);
	return pc;
}

//----------------------------------------------------------------------------------------
// name      : printipa
// purpose   : convert long into IPv4 formatted string
// params    : 
// returns   : number of character converted
// note      :
//----------------------------------------------------------------------------------------
int printipa(long i, int width, int pad)
{//  i       == value
 //  width   == width of string
 //  pad     == pad flags
      char  print_buf[PRINT_BUF_LEN];
      char *s;
      long  t, pc = 0;
      ulong u = i;
      char  x = 0;

      memset(&print_buf[0], '\0', PRINT_BUF_LEN);
      s = &print_buf[0] + PRINT_BUF_LEN - 1;
      *s = '\0';

      do
        {
        u = (i >> x) & 0xFF;
        do
          {
          t = u % 10;
          *--s = t + '0';
          u /= 10;
          }
        while (u);
        x += 8;
        if((x <= 24))
          *--s = '.';
        }
      while(x < 25);

      return pc + prints(s, width, pad);
}