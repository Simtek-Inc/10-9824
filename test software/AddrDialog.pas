unit AddrDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls;

type
  TAddrDlg = class(TForm)
    cb_newAddress: TComboBox;
    lbl_chngAddr: TLabel;
    btn_OK: TButton;
    btn_Cancel: TButton;
//    procedure btn_OKClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure cb_newAddressChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddrDlg: TAddrDlg;
  changebit : boolean;

implementation

uses Main;

{$R *.dfm}

procedure TAddrDlg.btn_CancelClick(Sender: TObject);
begin
close;
end;

//procedure TAddrDlg.btn_OKClick(Sender: TObject);
//begin
//  if changebit then
//  begin
//    newAddress := cb_newAddress.ItemIndex;
//    fC5Request := true;
//  end;
//  close;
//end;

procedure TAddrDlg.cb_newAddressChange(Sender: TObject);
begin
  changebit :=  True;
end;

procedure TAddrDlg.FormCreate(Sender: TObject);
begin
//  cb_newAddress.ItemIndex := gAddress;
  changebit := false;
  Activecontrol := nil;
end;

end.
