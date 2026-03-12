object AddrDlg: TAddrDlg
  Left = 880
  Top = 393
  Caption = 'Change Address'
  ClientHeight = 97
  ClientWidth = 244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_chngAddr: TLabel
    Left = 4
    Top = 24
    Width = 70
    Height = 13
    Caption = 'New Address :'
  end
  object cb_newAddress: TComboBox
    Left = 91
    Top = 21
    Width = 148
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    Text = '0'
    OnChange = cb_newAddressChange
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '31'
      '32'
      '33'
      '34'
      '35'
      '36'
      '37'
      '38'
      '39'
      '40'
      '41'
      '42'
      '43'
      '44'
      '45'
      '46'
      '47'
      '48'
      '49'
      '50'
      '51'
      '52'
      '53'
      '54'
      '55'
      '56'
      '57'
      '58'
      '59'
      '60'
      '61'
      '62'
      '63'
      '64'
      '65'
      '66'
      '67'
      '68'
      '69'
      '70'
      '71'
      '72'
      '73'
      '74'
      '75'
      '76'
      '77'
      '78'
      '79'
      '80'
      '81'
      '82'
      '83'
      '84'
      '85'
      '86'
      '87'
      '88'
      '89'
      '90'
      '91'
      '92'
      '93'
      '94'
      '95'
      '96'
      '97'
      '98'
      '99'
      '100'
      '101'
      '102'
      '103'
      '104'
      '105'
      '106'
      '107'
      '108'
      '109'
      '110'
      '111'
      '112'
      '113'
      '114'
      '115'
      '116'
      '117'
      '118'
      '119'
      '120'
      '121'
      '122'
      '123'
      '124'
      '125'
      '126'
      '127')
  end
  object btn_OK: TButton
    Left = 4
    Top = 64
    Width = 116
    Height = 25
    Caption = 'OK'
    TabOrder = 1
  end
  object btn_Cancel: TButton
    Left = 123
    Top = 64
    Width = 116
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btn_CancelClick
  end
end
