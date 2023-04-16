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
  object Button2: TButton
    Left = 8
    Top = 184
    Width = 185
    Height = 33
    Caption = #1054#1090#1095#1077#1090' '#1074' FastReport'
    TabOrder = 6
    OnClick = Button2Click
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
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = OracleDataSetTopTours1
    BCDToCurrency = False
    Left = 232
    Top = 184
  end
  object frxReport1: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45033.012827326400000000
    ReportOptions.LastChange = 45033.034376805600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 264
    Top = 184
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 706.772110000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1115#1056#1119' '#1056#1111#1057#1107#1057#8218#1056#181#1056#1030#1056#1109#1056#1108' '#1056#1111#1056#1109' '#1056#1111#1057#1026#1056#1105#1056#177#1057#8249#1056#187#1056#1105)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 117.165430000000000000
          Top = 37.795300000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 325.039580000000000000
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1038#1057#8218#1056#1109#1056#1105#1056#1112#1056#1109#1057#1027#1057#8218#1057#1034' '#1056#160#1057#1107#1056#177'.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 442.205010000000000000
          Top = 37.795300000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109' '#1056#1111#1057#1026#1056#1109#1056#1169#1056#176#1056#182)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 582.047620000000000000
          Top = 37.795300000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1169#1056#176#1056#182' '#1056#160#1057#1107#1056#177'.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1115#1056#1115' "'#1056#8217#1056#1115#1056#160#1056#1115#1056#1116#1056#8226#1056#8211'/'#1056#1118#1056#1032#1056#160'"')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 10
        object frxDBDataset1ID: TfrxMemoView
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."ID"]')
        end
        object frxDBDataset1NAME: TfrxMemoView
          Left = 117.165430000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."NAME"]')
        end
        object frxDBDataset1PRICE: TfrxMemoView
          Left = 336.378170000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRICE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."PRICE"]')
        end
        object frxDBDataset1cnt: TfrxMemoView
          Left = 442.205010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'cnt'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."cnt"]')
        end
        object frxDBDataset1TOTAL: TfrxMemoView
          Left = 582.047620000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."TOTAL"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 706.772110000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1115#1056#1115' "'#1056#8217#1056#1115#1056#160#1056#1115#1056#1116#1056#8226#1056#8211'/'#1056#1118#1056#1032#1056#160'"')
          ParentFont = False
        end
      end
    end
  end
  object frxChartObject1: TfrxChartObject
    Left = 296
    Top = 184
  end
  object OracleDataSetTopTours1: TOracleDataSet
    SQL.Strings = (
      'WITH cnt_q AS (SELECT DISTINCT'
      #9't.id,'
      #9'SUM(s."count") OVER (PARTITION BY t.id) AS "cnt"'
      'FROM trvl_sales s'
      'JOIN trvl_tours t ON s.id_tour = t.id'
      'GROUP BY t.id, s."count")'
      ''
      'SELECT '
      #9't.id,'
      #9't.name,'
      #9't.price,'
      #9'"cnt",'
      #9'"cnt" * price AS total'
      'FROM cnt_q'
      'JOIN trvl_tours t ON cnt_q.id = t.id'
      'ORDER BY total DESC')
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'TRVL_CLIENT_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000005000000020000004944010000000000040000004E414D4501000000
      000005000000505249434501000000000003000000636E740100000000000500
      0000544F54414C010000000000}
    Session = OracleSession1
    Active = True
    Left = 200
    Top = 184
  end
end
