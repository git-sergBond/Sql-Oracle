object FormSales: TFormSales
  Left = 275
  Top = 355
  Width = 539
  Height = 388
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
  object ButtonBuyTour: TButton
    Left = 8
    Top = 320
    Width = 105
    Height = 33
    Caption = #1047#1072#1082#1072#1079#1072#1090#1100' '#1090#1091#1088
    TabOrder = 2
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
    Left = 432
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 464
    Top = 8
  end
end
