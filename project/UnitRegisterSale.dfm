object FormRegisterSale: TFormRegisterSale
  Left = 1239
  Top = 143
  Width = 314
  Height = 691
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
  object LabelUserID: TLabel
    Left = 184
    Top = 232
    Width = 3
    Height = 13
  end
  object LabelTourID: TLabel
    Left = 176
    Top = 488
    Width = 3
    Height = 13
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 289
    Height = 65
    Caption = #1055#1086#1080#1089#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    TabOrder = 0
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
  end
  object ButtonFindUser: TButton
    Left = 8
    Top = 80
    Width = 75
    Height = 25
    Caption = '1.'#1053#1072#1081#1090#1080
    TabOrder = 1
    OnClick = ButtonFindUserClick
  end
  object ListBoxUsers: TListBox
    Left = 8
    Top = 112
    Width = 289
    Height = 105
    ItemHeight = 13
    TabOrder = 2
  end
  object ButtonSelectUser: TButton
    Left = 8
    Top = 224
    Width = 161
    Height = 25
    Caption = '2. '#1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    TabOrder = 3
    OnClick = ButtonSelectUserClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 512
    Width = 289
    Height = 65
    Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1087#1086' '#1090#1091#1088#1091
    TabOrder = 4
    object LabeledEditCount: TLabeledEdit
      Left = 144
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 103
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1080#1083#1077#1090#1086#1074
      TabOrder = 0
      Text = '1'
    end
    object LabeledEditEmployeeId: TLabeledEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 72
      EditLabel.Height = 13
      EditLabel.Caption = 'ID '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      TabOrder = 1
      Text = '4'
    end
  end
  object Button1: TButton
    Left = 8
    Top = 624
    Width = 97
    Height = 25
    Caption = '3. '#1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 624
    Width = 89
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 6
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 264
    Width = 289
    Height = 65
    Caption = #1055#1086#1080#1089#1082' '#1090#1091#1088#1072
    TabOrder = 7
    object LabeledEditCountry: TLabeledEdit
      Left = 8
      Top = 32
      Width = 265
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1090#1088#1072#1085#1072
      TabOrder = 0
      Text = #1043#1088#1077#1094#1080#1103
    end
  end
  object Button3: TButton
    Left = 8
    Top = 336
    Width = 75
    Height = 25
    Caption = '3.'#1053#1072#1081#1090#1080
    TabOrder = 8
    OnClick = Button3Click
  end
  object ListBoxTours: TListBox
    Left = 8
    Top = 368
    Width = 289
    Height = 105
    ItemHeight = 13
    TabOrder = 9
  end
  object Button4: TButton
    Left = 8
    Top = 480
    Width = 161
    Height = 25
    Caption = '4. '#1074#1099#1073#1088#1072#1090#1100' '#1090#1091#1088
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 120
    Top = 624
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 11
  end
  object OracleDataSet1: TOracleDataSet
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
    Active = True
    Left = 96
    Top = 80
  end
end
