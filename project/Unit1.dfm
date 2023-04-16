object FormMain: TFormMain
  Left = 824
  Top = 167
  Width = 539
  Height = 361
  Caption = #1058#1091#1088#1080#1089#1090#1080#1095#1077#1089#1082#1086#1077' '#1072#1075#1077#1085#1090#1089#1090#1074#1086
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonTourEditor: TButton
    Left = 152
    Top = 48
    Width = 129
    Height = 33
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1091#1088#1086#1074
    TabOrder = 0
    OnClick = ButtonTourEditorClick
  end
  object ButtonSales: TButton
    Left = 288
    Top = 49
    Width = 105
    Height = 32
    Caption = #1055#1088#1086#1076#1072#1078#1080
    TabOrder = 1
    OnClick = ButtonSalesClick
  end
  object ButtonClientEditor: TButton
    Left = 8
    Top = 48
    Width = 137
    Height = 33
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1083#1080#1077#1085#1090#1086#1074
    TabOrder = 2
    OnClick = ButtonClientEditorClick
  end
  object ButtonEmployeeEditor: TButton
    Left = 8
    Top = 88
    Width = 137
    Height = 33
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
    TabOrder = 3
    OnClick = ButtonEmployeeEditorClick
  end
  object ButtonRefundsEditor: TButton
    Left = 288
    Top = 89
    Width = 105
    Height = 32
    Caption = #1042#1086#1079#1074#1088#1072#1090#1099
    TabOrder = 4
    OnClick = ButtonRefundsEditorClick
  end
  object Button1: TButton
    Left = 8
    Top = 144
    Width = 185
    Height = 33
    Caption = #1042#1099#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093' '#1086' '#1090#1091#1088#1072#1093' '#1074' Excel'
    TabOrder = 5
    OnClick = Button1Click
  end
  object OracleSession1: TOracleSession
    LogonUsername = 'trvl_owner'
    LogonPassword = 'owner123'
    LogonDatabase = 'ORCL'
    Connected = True
    Left = 176
    Top = 8
  end
  object OracleQuery1: TOracleQuery
    Left = 216
    Top = 8
  end
  object OracleDataSetTours1: TOracleDataSet
    SQL.Strings = (
      'select t.* from TRVL_TOURS t')
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'TRVL_CLIENT_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      040000000F000000020000004944010000000000040000004E414D4501000000
      00000500000050524943450100000000000E0000004445504152545552455F44
      4154450100000000000E0000004445504152545552455F434954590100000000
      000D0000004F50455241544F525F4E414D45010000000000100000004E554D42
      45525F4F465F4144554C5453010000000000120000004E554D4245525F4F465F
      4348494C4452454E0100000000000E0000004E554D4245525F4F465F44415953
      010000000000100000004E554D4245525F4F465F4E4947485453010000000000
      0A00000049445F434F554E5452590100000000000C00000049445F544F55525F
      545950450100000000000C00000049445F4E5554524954494F4E010000000000
      0800000049445F484F54454C0100000000000B00000049445F444953434F554E
      54010000000000}
    Session = OracleSession1
    Active = True
    Left = 200
    Top = 144
  end
end
