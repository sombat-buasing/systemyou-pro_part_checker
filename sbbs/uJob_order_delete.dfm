object frmJob_order_delete: TfrmJob_order_delete
  Left = 0
  Top = 0
  Caption = #3621#3610#3586#3657#3629#3617#3641#3621' Job order.'
  ClientHeight = 138
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 138
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Poppins'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 597
    ExplicitHeight = 185
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 120
      Width = 566
      Height = 17
      Align = alBottom
      TabOrder = 0
      Visible = False
      ExplicitTop = 167
      ExplicitWidth = 595
    end
    object edPart_model: TLabeledEdit
      Left = 64
      Top = 56
      Width = 305
      Height = 27
      EditLabel.Width = 80
      EditLabel.Height = 19
      EditLabel.Caption = 'Part model :'
      TabOrder = 1
      OnChange = edPart_modelChange
    end
    object btnDelete: TButton
      Left = 375
      Top = 56
      Width = 145
      Height = 27
      Caption = #3621#3610#3586#3657#3629#3617#3641#3621
      Enabled = False
      TabOrder = 2
      OnClick = btnDeleteClick
    end
  end
  object qryTemp: TUniQuery
    Left = 8
    Top = 98
  end
  object qryFind: TUniQuery
    Left = 56
    Top = 98
  end
end
