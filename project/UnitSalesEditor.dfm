object FormSales: TFormSales
  Left = 766
  Top = 499
  Width = 788
  Height = 347
  Caption = #1047#1072#1082#1072#1079#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBTextId: TDBText
    Left = 456
    Top = 16
    Width = 65
    Height = 17
    DataField = 'ID'
    DataSource = DataSource1
  end
  object Label1: TLabel
    Left = 440
    Top = 16
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object DBTextCount: TDBText
    Left = 616
    Top = 16
    Width = 65
    Height = 17
    DataField = 'count'
    DataSource = DataSource1
    Visible = False
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 420
    Height = 33
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 513
    Height = 257
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date'
        Title.Caption = #1044#1072#1090#1072' '#1087#1088#1086#1076#1072#1078#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'count'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1080#1083#1077#1090#1086#1074
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_TOUR'
        Title.Caption = #1058#1091#1088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENT'
        Title.Caption = #1050#1083#1080#1077#1085#1090
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_EMPLOYEE'
        Title.Caption = #1055#1088#1086#1076#1072#1074#1077#1094
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 528
    Top = 48
    Width = 177
    Height = 257
    Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1041#1044
    TabOrder = 2
    object GroupBoxUpdate: TGroupBox
      Left = 8
      Top = 80
      Width = 161
      Height = 121
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077
      TabOrder = 0
      object LabeledEditCount: TLabeledEdit
        Left = 8
        Top = 60
        Width = 121
        Height = 21
        EditLabel.Width = 103
        EditLabel.Height = 13
        EditLabel.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1080#1083#1077#1090#1086#1074
        TabOrder = 0
        Text = '1'
      end
      object ButtonUpdate: TButton
        Left = 6
        Top = 88
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 1
        OnClick = ButtonUpdateClick
      end
    end
    object ButtonBuyTour: TButton
      Left = 8
      Top = 32
      Width = 89
      Height = 25
      Caption = #1047#1072#1082#1072#1079#1072#1090#1100' '#1090#1091#1088
      TabOrder = 1
      OnClick = ButtonBuyTourClick
    end
    object ButtonDelete: TButton
      Left = 8
      Top = 224
      Width = 89
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = ButtonDeleteClick
    end
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from TRVL_SALES t')
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'TRVL_CLIENT_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000006000000020000004944010000000000040000006461746501000000
      000005000000636F756E740100000000000700000049445F544F555201000000
      00000900000049445F434C49454E540100000000000B00000049445F454D504C
      4F594545010000000000}
    Session = FormMain.OracleSession1
    Active = True
    Left = 528
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    OnDataChange = DataSource1DataChange
    Left = 560
    Top = 8
  end
  object OracleDataSetDelete: TOracleDataSet
    Variables.Data = {0300000001000000050000003A565F4944030000000000000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'TRVL_CLIENT_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000006000000020000004944010000000000040000006461746501000000
      000005000000636F756E740100000000000700000049445F544F555201000000
      00000900000049445F434C49454E540100000000000B00000049445F454D504C
      4F594545010000000000}
    Session = FormMain.OracleSession1
    Left = 648
    Top = 264
  end
  object OracleDataSetUpdate: TOracleDataSet
    Variables.Data = {
      0300000002000000050000003A565F4944030000000000000000000000080000
      003A565F434F554E54030000000000000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'TRVL_CLIENT_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000006000000020000004944010000000000040000006461746501000000
      000005000000636F756E740100000000000700000049445F544F555201000000
      00000900000049445F434C49454E540100000000000B00000049445F454D504C
      4F594545010000000000}
    Session = FormMain.OracleSession1
    Left = 648
    Top = 216
  end
end
