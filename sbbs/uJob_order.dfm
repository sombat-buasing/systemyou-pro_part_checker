object frmJob_order: TfrmJob_order
  Left = 0
  Top = 0
  Caption = 'JOB ORDER'
  ClientHeight = 237
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 237
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Poppins'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitHeight = 132
    object SpeedButton1: TSpeedButton
      Left = 495
      Top = 46
      Width = 25
      Height = 29
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 19
      Top = 83
      Width = 4
      Height = 19
    end
    object Label2: TLabel
      Left = 266
      Top = 88
      Width = 60
      Height = 19
      Caption = #3623#3633#3609#3607#3637#3656#3626#3656#3591#3591#3634#3609' :'
    end
    object edFilename: TLabeledEdit
      Left = 64
      Top = 48
      Width = 425
      Height = 27
      Color = clWhite
      EditLabel.Width = 81
      EditLabel.Height = 19
      EditLabel.Caption = #3648#3621#3639#3629#3585#3652#3615#3621#3660#3609#3635#3648#3586#3657#3634' :'
      TabOrder = 0
      OnChange = edFilenameChange
    end
    object Button1: TButton
      Left = 64
      Top = 161
      Width = 456
      Height = 25
      Caption = #3618#3639#3609#3618#3633#3609#3609#3635#3648#3586#3657#3634' Job order'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 219
      Width = 595
      Height = 17
      Align = alBottom
      TabOrder = 2
      Visible = False
      ExplicitTop = 114
    end
    object dtDate_send: TDateTimePicker
      Left = 336
      Top = 83
      Width = 153
      Height = 31
      Date = 44832.000000000000000000
      Time = 0.236488599533913700
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    FileName = 'C:\Delphi Application\KIN\Check Part\Data'
    Filter = 'CSV Files.|*.csv|All Files.|*.*'
    Left = 640
    Top = 40
  end
  object qryTemp: TUniQuery
    Left = 48
    Top = 464
  end
  object qryFind: TUniQuery
    Left = 104
    Top = 464
  end
end
