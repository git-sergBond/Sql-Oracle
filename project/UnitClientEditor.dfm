object FormClientEditor: TFormClientEditor
  Left = 1184
  Top = 170
  Width = 591
  Height = 556
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1083#1080#1077#1085#1090#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 561
    Height = 329
    DataSource = FormMain.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SURNAME'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PATRONYMIC'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PHONE'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PASSPORT'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 560
    Height = 33
    DataSource = FormMain.DataSource1
    TabOrder = 1
  end
end
