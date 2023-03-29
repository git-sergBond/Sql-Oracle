object FormEmployee: TFormEmployee
  Left = 1350
  Top = 512
  Width = 505
  Height = 411
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
    Width = 481
    Height = 329
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1048#1084#1103
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SURNAME'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PATRONYMIC'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PHONE'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 100
        Visible = True
      end>
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid  from TRVL_EMPLOYEE t')
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'TRVL_CLIENT_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000005000000020000004944010000000000040000004E414D4501000000
      0000070000005355524E414D450100000000000A000000504154524F4E594D49
      430100000000000500000050484F4E45010000000000}
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
