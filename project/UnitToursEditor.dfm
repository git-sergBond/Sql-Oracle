object FormTours: TFormTours
  Left = 791
  Top = 516
  Width = 549
  Height = 418
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1091#1088#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 336
    Width = 128
    Height = 13
    Caption = #1057#1074#1103#1079#1072#1085#1085#1099#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080':'
  end
  object Button1: TButton
    Left = 8
    Top = 352
    Width = 75
    Height = 25
    Caption = #1057#1090#1088#1072#1085#1099
    TabOrder = 0
  end
  object Button2: TButton
    Left = 248
    Top = 352
    Width = 75
    Height = 25
    Caption = #1042#1080#1076#1099' '#1090#1091#1088#1086#1074
    TabOrder = 1
  end
  object Button3: TButton
    Left = 328
    Top = 352
    Width = 75
    Height = 25
    Caption = #1055#1080#1090#1072#1085#1080#1077
    TabOrder = 2
  end
  object Button4: TButton
    Left = 88
    Top = 352
    Width = 75
    Height = 25
    Caption = #1054#1090#1077#1083#1080
    TabOrder = 3
  end
  object Button5: TButton
    Left = 168
    Top = 352
    Width = 75
    Height = 25
    Caption = #1057#1082#1080#1076#1082#1080
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 420
    Height = 33
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 521
    Height = 273
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Title.Caption = #1062#1077#1085#1072' ('#1088#1091#1073'.)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPARTURE_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088#1072#1074#1082#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPARTURE_CITY'
        Title.Caption = #1043#1086#1088#1086#1076' '#1086#1090#1087#1088#1072#1074#1082#1080
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERATOR_NAME'
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1090#1086#1088
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER_OF_ADULTS'
        Title.Caption = #1042#1079#1088#1086#1089#1083#1099#1093
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER_OF_CHILDREN'
        Title.Caption = #1044#1077#1090#1077#1081
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER_OF_DAYS'
        Title.Caption = #1044#1085#1077#1081
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER_OF_NIGHTS'
        Title.Caption = #1053#1086#1095#1077#1081
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_COUNTRY'
        Title.Caption = #1057#1090#1088#1072#1085#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_TOUR_TYPE'
        Title.Caption = #1042#1080#1076' '#1090#1091#1088#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_NUTRITION'
        Title.Caption = #1055#1080#1090#1072#1085#1080#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_HOTEL'
        Title.Caption = #1054#1090#1077#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_DISCOUNT'
        Title.Caption = #1057#1082#1080#1076#1082#1072
        Visible = True
      end>
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid  from TRVL_TOURS t')
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
    Session = FormMain.OracleSession1
    Active = True
    Left = 432
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 464
    Top = 8
  end
end
