object frmReadBarcode: TfrmReadBarcode
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #3629#3656#3634#3609#3610#3634#3619#3660#3650#3588#3657#3604
  ClientHeight = 302
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  GlassFrame.SheetOfGlass = True
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 9
    Width = 9
    Height = 286
    Align = alLeft
    Shape = bsSpacer
    ExplicitTop = 0
    ExplicitHeight = 549
  end
  object Bevel2: TBevel
    Left = 499
    Top = 9
    Width = 9
    Height = 286
    Align = alRight
    Shape = bsSpacer
    ExplicitLeft = 8
    ExplicitTop = 0
    ExplicitHeight = 549
  end
  object Bevel3: TBevel
    Left = 0
    Top = 0
    Width = 508
    Height = 9
    Align = alTop
    Shape = bsSpacer
    ExplicitLeft = 9
    ExplicitWidth = 549
  end
  object Bevel4: TBevel
    Left = 0
    Top = 295
    Width = 508
    Height = 7
    Align = alBottom
    Shape = bsSpacer
    ExplicitTop = 431
    ExplicitWidth = 538
  end
  object CurvyPanel1: TCurvyPanel
    Left = 9
    Top = 9
    Width = 490
    Height = 286
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 475
    ExplicitHeight = 298
    DesignSize = (
      490
      286)
    object SpeedButton1: TSpeedButton
      Left = 429
      Top = 23
      Width = 40
      Height = 31
      Visible = False
      OnClick = SpeedButton1Click
    end
    object btnSave: TAdvGlowButton
      Left = 24
      Top = 250
      Width = 219
      Height = 28
      BorderStyle = bsNone
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
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
      OnClick = btnSaveClick
      Appearance.BorderColor = 15036461
      Appearance.BorderColorHot = 11565130
      Appearance.BorderColorCheckedHot = 11565130
      Appearance.BorderColorDown = 11565130
      Appearance.BorderColorChecked = 13744549
      Appearance.BorderColorDisabled = 13948116
      Appearance.Color = 15036461
      Appearance.ColorTo = 15036461
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirror = 15036461
      Appearance.ColorMirrorTo = 15036461
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
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
    object btnCancel: TAdvGlowButton
      Left = 261
      Top = 251
      Width = 208
      Height = 28
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
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
      TabOrder = 1
      OnClick = btnCancelClick
      Appearance.BorderColor = 8421631
      Appearance.BorderColorHot = 11565130
      Appearance.BorderColorCheckedHot = 11565130
      Appearance.BorderColorDown = 11565130
      Appearance.BorderColorChecked = 13744549
      Appearance.BorderColorDisabled = 13948116
      Appearance.BorderColorFocused = 8421631
      Appearance.Color = 8421631
      Appearance.ColorTo = 8421631
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirror = 8421631
      Appearance.ColorMirrorTo = 8421631
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
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
      Top = 57
      Width = 484
      Height = 189
      Anchors = [akLeft, akTop, akRight]
      Caption = ' '#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604' Part ID : K.Aun_Bed '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 463
      object Label1: TLabel
        Left = 18
        Top = 26
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
        Top = 26
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
        Top = 52
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
        Top = 78
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
        Top = 78
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
        Top = 78
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
        Top = 104
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
        Top = 130
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
        Top = 130
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
        Top = 161
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
        Top = 157
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
      object pnlMessage: TPanel
        Left = 353
        Top = 21
        Width = 504
        Height = 51
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Poppins'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
    object Panel2: TPanel
      Left = 24
      Top = 2
      Width = 401
      Height = 58
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
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
