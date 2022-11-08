object frmChange_status: TfrmChange_status
  Left = 0
  Top = 0
  Caption = #3611#3619#3633#3610#3626#3606#3634#3609#3632
  ClientHeight = 366
  ClientWidth = 640
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
  PixelsPerInch = 96
  TextHeight = 19
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 325
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 41
    ExplicitWidth = 448
    ExplicitHeight = 147
    object GroupBox1: TGroupBox
      Left = 8
      Top = 6
      Width = 617
      Height = 67
      TabOrder = 0
      object Label2: TLabel
        Left = 23
        Top = 26
        Width = 59
        Height = 19
        Caption = #3611#3619#3633#3610#3626#3606#3634#3609#3632' :'
      end
      object cbStatus: TComboBox
        Left = 88
        Top = 23
        Width = 233
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Poppins'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          #3585#3635#3621#3633#3591#3607#3635
          #3605#3636#3604#3611#3633#3597#3627#3634
          #3648#3626#3619#3655#3592#3649#3621#3657#3623
          #3621#3641#3585#3588#3657#3634#3648#3621#3639#3656#3629#3609#3626#3656#3591
          #3592#3633#3604#3626#3656#3591#3610#3634#3591#3626#3656#3623#3609
          #3619#3633#3610#3591#3634#3609#3649#3621#3657#3623
          #3626#3656#3591#3591#3634#3609#3588#3619#3610#3649#3621#3657#3623)
      end
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 79
      Width = 617
      Height = 240
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Poppins'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 325
    Width = 640
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 188
    ExplicitWidth = 448
    object btnSave: TBitBtn
      Left = 461
      Top = 3
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnCancel: TBitBtn
      Left = 550
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object qryTemp: TUniQuery
    Connection = DM.Main_Connection
    Left = 388
    Top = 177
  end
  object FDMemJob_order_status: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 560
    Top = 72
    object FDMemJob_order_statuspart_selected: TBooleanField
      FieldName = 'part_selected'
    end
    object FDMemJob_order_statuspart_model: TStringField
      FieldName = 'part_model'
      Size = 100
    end
    object FDMemJob_order_statuspart_status: TStringField
      FieldName = 'part_status'
      Size = 30
    end
    object FDMemJob_order_statuspart_send_date: TStringField
      FieldName = 'part_send_date'
    end
    object FDMemJob_order_statuspart_created_date: TStringField
      FieldName = 'part_created_date'
    end
    object FDMemJob_order_statuslate_days: TIntegerField
      FieldName = 'late_days'
    end
  end
  object dsJob_order_status: TDataSource
    Left = 504
    Top = 122
  end
  object DataSource1: TDataSource
    Left = 512
    Top = 202
  end
end
