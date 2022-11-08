object frmReadBarcode2: TfrmReadBarcode2
  Left = 0
  Top = 0
  Caption = 'frmReadBarcode2'
  ClientHeight = 465
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = ForCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 9
    Width = 9
    Height = 447
    Align = alLeft
    Shape = bsSpacer
    ExplicitTop = 3
    ExplicitHeight = 448
  end
  object Bevel2: TBevel
    Left = 504
    Top = 9
    Width = 9
    Height = 447
    Align = alRight
    Shape = bsSpacer
    ExplicitLeft = 513
    ExplicitTop = 3
    ExplicitHeight = 448
  end
  object Bevel3: TBevel
    Left = 0
    Top = 0
    Width = 513
    Height = 9
    Align = alTop
    Shape = bsSpacer
    ExplicitLeft = 9
    ExplicitWidth = 549
  end
  object Bevel4: TBevel
    Left = 0
    Top = 456
    Width = 513
    Height = 9
    Align = alBottom
    Shape = bsSpacer
    ExplicitTop = 442
    ExplicitWidth = 522
  end
  object pnReadBarcode: TCurvyPanel
    Left = 9
    Top = 9
    Width = 495
    Height = 447
    Align = alClient
    Rounding = 20
    TabOrder = 0
    ExplicitTop = 3
    ExplicitWidth = 504
    ExplicitHeight = 448
    DesignSize = (
      495
      447)
    object Bevel5: TBevel
      Left = 0
      Top = 426
      Width = 495
      Height = 21
      Align = alBottom
      Shape = bsSpacer
      ExplicitTop = 344
      ExplicitWidth = 433
    end
    object Bevel6: TBevel
      Left = 0
      Top = 0
      Width = 495
      Height = 21
      Align = alTop
      Shape = bsSpacer
      ExplicitLeft = 3
      ExplicitTop = -15
      ExplicitWidth = 433
    end
    object SpeedButton1: TSpeedButton
      Left = 431
      Top = 43
      Width = 40
      Height = 31
      Visible = False
    end
    object btnLogin: TAdvGlowButton
      Left = 24
      Top = 351
      Width = 219
      Height = 43
      Caption = #3618#3639#3609#3618#3633#3609' '#3610#3633#3609#3607#3638#3585#3648#3626#3619#3655#3592#3591#3634#3609
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Poppins'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = True
      TabOrder = 0
      Appearance.BorderColor = 11382963
      Appearance.BorderColorHot = 11565130
      Appearance.BorderColorCheckedHot = 11565130
      Appearance.BorderColorDown = 11565130
      Appearance.BorderColorChecked = 13744549
      Appearance.BorderColorDisabled = 13948116
      Appearance.Color = clWhite
      Appearance.ColorTo = clWhite
      Appearance.ColorChecked = 13744549
      Appearance.ColorCheckedTo = 13744549
      Appearance.ColorDisabled = clWhite
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 11565130
      Appearance.ColorDownTo = 11565130
      Appearance.ColorHot = 16444643
      Appearance.ColorHotTo = 16444643
      Appearance.ColorMirror = clWhite
      Appearance.ColorMirrorTo = clWhite
      Appearance.ColorMirrorHot = 16444643
      Appearance.ColorMirrorHotTo = 16444643
      Appearance.ColorMirrorDown = 11565130
      Appearance.ColorMirrorDownTo = 11565130
      Appearance.ColorMirrorChecked = 13744549
      Appearance.ColorMirrorCheckedTo = 13744549
      Appearance.ColorMirrorDisabled = clWhite
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Appearance.TextColorChecked = 3750459
      Appearance.TextColorDown = 2303013
      Appearance.TextColorHot = 2303013
      Appearance.TextColorDisabled = 13948116
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 88
      Width = 483
      Height = 257
      Anchors = [akLeft, akTop, akRight]
      Caption = ' '#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604' Part ID : K.Aun_Bed '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 492
      object Label1: TLabel
        Left = 18
        Top = 32
        Width = 75
        Height = 19
        Caption = 'Part ID : 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 107
        Top = 32
        Width = 147
        Height = 19
        Caption = #3594#3639#3656#3629#3648#3615#3629#3619#3660#3609#3636#3648#3592#3629#3619#3660' : 1..02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 18
        Top = 66
        Width = 179
        Height = 19
        Caption = #3605#3635#3649#3627#3609#3656#3591#3594#3636#3657#3609#3591#3634#3609' : Left END'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 18
        Top = 100
        Width = 112
        Height = 19
        Caption = #3588#3623#3634#3617#3627#3609#3634' : 18.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 140
        Top = 100
        Width = 126
        Height = 19
        Caption = #3588#3623#3634#3617#3585#3623#3657#3634#3591' : 579.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 290
        Top = 100
        Width = 132
        Height = 19
        Caption = #3588#3623#3634#3617#3618#3634#3623' : 1,998.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 18
        Top = 134
        Width = 131
        Height = 19
        Caption = #3594#3639#3656#3629#3623#3633#3626#3604#3640' : csCarcass'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 18
        Top = 174
        Width = 267
        Height = 19
        Caption = #3623#3633#3609#3607#3637#3656' '#3610#3633#3609#3607#3638#3585#3611#3636#3604#3591#3634#3609' : 16 '#3585#3588' 65 17.48 '#3609'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 312
        Top = 175
        Width = 145
        Height = 19
        Caption = #3611#3636#3604#3591#3634#3609#3650#3604#3618' : '#3588#3640#3603#3648#3610#3636#3619#3660#3604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 18
        Top = 214
        Width = 55
        Height = 19
        Caption = #3626#3606#3634#3609#3632' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbPart_status: TComboBox
        Left = 79
        Top = 210
        Width = 362
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'A-ddd'
        Items.Strings = (
          'A-ddd'
          'B-ddd')
      end
    end
    object Panel1: TPanel
      Left = 24
      Top = 24
      Width = 401
      Height = 58
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object edPart_barcode: TLabeledEdit
        Left = 7
        Top = 19
        Width = 393
        Height = 31
        AutoSize = False
        EditLabel.Width = 56
        EditLabel.Height = 19
        EditLabel.Caption = 'Barcode'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -16
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Poppins'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 263
      Top = 351
      Width = 208
      Height = 43
      Caption = #3618#3585#3648#3621#3636#3585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Poppins'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = True
      TabOrder = 3
      Appearance.BorderColor = 11382963
      Appearance.BorderColorHot = 11565130
      Appearance.BorderColorCheckedHot = 11565130
      Appearance.BorderColorDown = 11565130
      Appearance.BorderColorChecked = 13744549
      Appearance.BorderColorDisabled = 13948116
      Appearance.BorderColorFocused = 8421631
      Appearance.Color = clWhite
      Appearance.ColorTo = clWhite
      Appearance.ColorChecked = 13744549
      Appearance.ColorCheckedTo = 13744549
      Appearance.ColorDisabled = clWhite
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 11565130
      Appearance.ColorDownTo = 11565130
      Appearance.ColorHot = 16444643
      Appearance.ColorHotTo = 16444643
      Appearance.ColorMirror = clWhite
      Appearance.ColorMirrorTo = clWhite
      Appearance.ColorMirrorHot = 16444643
      Appearance.ColorMirrorHotTo = 16444643
      Appearance.ColorMirrorDown = 11565130
      Appearance.ColorMirrorDownTo = 11565130
      Appearance.ColorMirrorChecked = 13744549
      Appearance.ColorMirrorCheckedTo = 13744549
      Appearance.ColorMirrorDisabled = clWhite
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Appearance.TextColorChecked = 3750459
      Appearance.TextColorDown = 2303013
      Appearance.TextColorHot = 2303013
      Appearance.TextColorDisabled = 13948116
    end
    object Panel2: TPanel
      Left = 0
      Top = 399
      Width = 495
      Height = 27
      Align = alBottom
      TabOrder = 4
      ExplicitTop = 400
      ExplicitWidth = 504
    end
  end
  object qryTemp: TUniQuery
    Left = 336
    Top = 138
  end
  object qryFind: TUniQuery
    Left = 392
    Top = 138
  end
end
