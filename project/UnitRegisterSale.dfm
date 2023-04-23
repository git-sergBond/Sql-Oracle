object FormRegisterSale: TFormRegisterSale
  Left = 1221
  Top = 131
  Width = 464
  Height = 663
  Caption = #1047#1072#1082#1072#1079#1072#1090#1100' '#1090#1091#1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 441
    Height = 225
    Caption = '1. '#1055#1086#1080#1089#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    TabOrder = 0
    object LabelUserID: TLabel
      Left = 179
      Top = 184
      Width = 3
      Height = 13
    end
    object LabeledEditPasportNo: TLabeledEdit
      Left = 144
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 78
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1072#1089#1087#1086#1088#1090' '#1085#1086#1084#1077#1088
      TabOrder = 0
      Text = '788443'
    end
    object LabeledEditPasportSer: TLabeledEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1072#1089#1087#1086#1088#1090' '#1089#1077#1088#1080#1103
      TabOrder = 1
      Text = '4069'
    end
    object ButtonSelectUser: TButton
      Left = 8
      Top = 184
      Width = 161
      Height = 25
      Caption = '2. '#1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      TabOrder = 2
      OnClick = ButtonSelectUserClick
    end
    object ButtonFindUser: TButton
      Left = 272
      Top = 32
      Width = 75
      Height = 25
      Caption = '1.'#1053#1072#1081#1090#1080
      TabOrder = 3
      OnClick = ButtonFindUserClick
    end
  end
  object ListBoxUsers: TListBox
    Left = 16
    Top = 80
    Width = 425
    Height = 105
    ItemHeight = 13
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 472
    Width = 217
    Height = 161
    Caption = '3. '#1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1087#1086' '#1090#1091#1088#1091
    TabOrder = 2
    object LabeledEditCount: TLabeledEdit
      Left = 8
      Top = 80
      Width = 121
      Height = 21
      EditLabel.Width = 103
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1080#1083#1077#1090#1086#1074
      TabOrder = 0
      Text = '1'
    end
    object Button1: TButton
      Left = 8
      Top = 120
      Width = 97
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
    object LabeledEditEmployeeId: TLabeledEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 72
      EditLabel.Height = 13
      EditLabel.Caption = 'ID '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      TabOrder = 2
      Text = '4'
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 240
    Width = 441
    Height = 217
    Caption = '2. '#1055#1086#1080#1089#1082' '#1090#1091#1088#1072
    TabOrder = 3
    object LabelTourID: TLabel
      Left = 176
      Top = 176
      Width = 3
      Height = 13
    end
    object ListBoxTours: TListBox
      Left = 8
      Top = 64
      Width = 425
      Height = 105
      ItemHeight = 13
      TabOrder = 0
    end
    object Button3: TButton
      Left = 136
      Top = 32
      Width = 75
      Height = 25
      Caption = '1.'#1053#1072#1081#1090#1080
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 176
      Width = 161
      Height = 25
      Caption = '2. '#1074#1099#1073#1088#1072#1090#1100' '#1090#1091#1088
      TabOrder = 2
      OnClick = Button4Click
    end
    object LabeledEditCountry: TLabeledEdit
      Left = 8
      Top = 32
      Width = 113
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1090#1088#1072#1085#1072
      TabOrder = 3
      Text = #1043#1088#1077#1094#1080#1103
    end
  end
  object OracleDataSetEdit: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from TRVL_CLIENT t')
    Variables.Data = {
      0300000004000000080000003A565F434F554E54030000000000000000000000
      0A0000003A565F49445F544F55520300000000000000000000000C0000003A56
      5F49445F434C49454E540300000000000000000000000E0000003A565F49445F
      454D504C4F594545030000000000000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'TRVL_CLIENT_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000006000000020000004944010000000000040000004E414D4501000000
      0000070000005355524E414D450100000000000A000000504154524F4E594D49
      430100000000000500000050484F4E450100000000000800000050415353504F
      5254010000000000}
    Session = FormMain.OracleSession1
    Left = 232
    Top = 464
  end
  object OracleDataSetView: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from TRVL_CLIENT t')
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'TRVL_CLIENT_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000006000000020000004944010000000000040000004E414D4501000000
      0000070000005355524E414D450100000000000A000000504154524F4E594D49
      430100000000000500000050484F4E450100000000000800000050415353504F
      5254010000000000}
    Session = FormMain.OracleSession1
    Left = 232
    Top = 512
  end
end
