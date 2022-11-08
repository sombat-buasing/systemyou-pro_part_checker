object frmStation_check: TfrmStation_check
  Left = 0
  Top = 0
  Caption = 'Station check'
  ClientHeight = 543
  ClientWidth = 1187
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Poppins'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1187
    543)
  PixelsPerInch = 96
  TextHeight = 19
  object dbgDisplay: TDBGrid
    Left = 8
    Top = 72
    Width = 1171
    Height = 463
    Anchors = [akLeft, akTop, akRight, akBottom]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Poppins'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1187
    Height = 66
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1030
    object Label12: TLabel
      Left = 24
      Top = 19
      Width = 66
      Height = 28
      Caption = 'JOB NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Poppins'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
  end
  object FDMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 192
    Top = 368
    object FDMemTablepart_matname: TStringField
      FieldName = 'part_matname'
      Size = 100
    end
    object FDMemTablestation1: TStringField
      FieldName = 'station1'
      Size = 30
    end
    object FDMemTablestation2: TStringField
      FieldName = 'station2'
      Size = 30
    end
    object FDMemTablestation3: TStringField
      FieldName = 'station3'
      Size = 30
    end
    object FDMemTablestation4: TStringField
      FieldName = 'station4'
      Size = 30
    end
    object FDMemTablestation5: TStringField
      FieldName = 'station5'
      Size = 30
    end
    object FDMemTablestation6: TStringField
      FieldName = 'station6'
      Size = 30
    end
    object FDMemTablestation7: TStringField
      FieldName = 'station7'
      Size = 30
    end
    object FDMemTablestation8: TStringField
      FieldName = 'station8'
      Size = 30
    end
    object FDMemTablestation9: TStringField
      FieldName = 'station9'
      Size = 30
    end
    object FDMemTablestation10: TStringField
      FieldName = 'station10'
      Size = 30
    end
    object FDMemTablematt_count: TIntegerField
      FieldName = 'matt_count'
    end
  end
  object qryTemp: TUniQuery
    Left = 80
    Top = 368
  end
  object dsDisplay: TDataSource
    Left = 120
    Top = 424
  end
end
