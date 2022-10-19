object frm_select: Tfrm_select
  Left = 192
  Top = 107
  Width = 801
  Height = 480
  Caption = 'frm_select'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 453
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 560
      Top = 0
      Width = 233
      Height = 453
      Align = alRight
      BevelOuter = bvLowered
      TabOrder = 0
      object Memo1: TMemo
        Left = 1
        Top = 1
        Width = 231
        Height = 391
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 1
        Top = 392
        Width = 231
        Height = 60
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn2: TBitBtn
          Left = 132
          Top = 23
          Width = 75
          Height = 25
          Caption = #28165#31354
          TabOrder = 0
          OnClick = BitBtn2Click
        end
        object BitBtn4: TBitBtn
          Left = 16
          Top = 24
          Width = 75
          Height = 25
          Caption = #20445#23384
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 560
      Height = 453
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 392
        Width = 560
        Height = 61
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 376
          Top = 22
          Width = 75
          Height = 25
          Caption = #36830#25509
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 22
          Width = 360
          Height = 25
          DataSource = DataSource1
          TabOrder = 1
        end
        object BitBtn1: TBitBtn
          Left = 468
          Top = 23
          Width = 75
          Height = 25
          Caption = #26597#35810
          TabOrder = 2
          OnClick = BitBtn1Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 560
        Height = 392
        Align = alClient
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDAORA.1;Password=manager;User ID=system;Data Source=t' +
      'raindat;Persist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 416
    Top = 280
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 456
    Top = 160
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 416
    Top = 240
  end
  object SaveDialog1: TSaveDialog
    Filter = 'SQL'#35821#21477'(*.sql)|*.sql'
    InitialDir = 'd:\'
    Left = 592
    Top = 56
  end
end
