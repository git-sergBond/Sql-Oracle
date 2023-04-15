object FormRefunds: TFormRefunds
  Left = 537
  Top = 275
  Width = 990
  Height = 347
  Caption = #1042#1086#1079#1074#1088#1072#1090#1099
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
    Left = 760
    Top = 104
    Width = 50
    Height = 13
    Caption = 'ID '#1079#1072#1082#1072#1079#1072
  end
  object Label2: TLabel
    Left = 760
    Top = 184
    Width = 59
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Label3: TLabel
    Left = 760
    Top = 144
    Width = 55
    Height = 13
    Caption = 'ID '#1082#1083#1080#1077#1085#1090#1072
  end
  object Label4: TLabel
    Left = 760
    Top = 64
    Width = 67
    Height = 13
    Caption = 'ID '#1088#1072#1073#1086#1090#1085#1080#1082#1072
  end
  object Label5: TLabel
    Left = 760
    Top = 224
    Width = 43
    Height = 13
    Caption = #1055#1088#1080#1095#1080#1085#1072
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 420
    Height = 33
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 48
    Width = 729
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
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'count'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_TOUR'
        Title.Caption = 'ID '#1090#1091#1088#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENT'
        Title.Caption = 'ID '#1082#1083#1080#1077#1085#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_EMPLOYEE'
        Title.Caption = 'ID '#1088#1072#1073#1086#1090#1085#1080#1082#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_SALE'
        Title.Caption = 'ID '#1089#1076#1077#1083#1082#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REASON'
        Title.Caption = #1055#1088#1080#1095#1080#1085#1072
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 824
    Top = 96
    Width = 137
    Height = 25
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 824
    Top = 176
    Width = 137
    Height = 25
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 824
    Top = 136
    Width = 137
    Height = 25
    TabOrder = 4
    Text = 'Edit1'
  end
  object Edit4: TEdit
    Left = 832
    Top = 56
    Width = 129
    Height = 25
    TabOrder = 5
    Text = 'Edit1'
  end
  object Edit5: TEdit
    Left = 824
    Top = 216
    Width = 137
    Height = 25
    TabOrder = 6
    Text = 'Edit1'
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from TRVL_REFUNDS t')
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'TRVL_CLIENT_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000008000000020000004944010000000000040000006461746501000000
      000005000000636F756E740100000000000700000049445F544F555201000000
      00000900000049445F434C49454E540100000000000B00000049445F454D504C
      4F5945450100000000000700000049445F53414C450100000000000600000052
      4541534F4E010000000000}
    Session = FormMain.OracleSession1
    Active = True
    Left = 440
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 472
    Top = 8
  end
end
