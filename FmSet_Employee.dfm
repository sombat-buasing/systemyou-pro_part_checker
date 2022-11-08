object FrmSet_Employee: TFrmSet_Employee
  Left = 0
  Top = 0
  Caption = #3586#3657#3629#3617#3641#3621#3614#3609#3633#3585#3591#3634#3609
  ClientHeight = 573
  ClientWidth = 1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Poppins'
  Font.Style = []
  GlassFrame.Enabled = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 1080
    Height = 6
    Align = alTop
    Shape = bsSpacer
    ExplicitWidth = 1379
  end
  object Bevel2: TBevel
    Left = 0
    Top = 6
    Width = 7
    Height = 561
    Align = alLeft
    Shape = bsSpacer
    ExplicitTop = 14
    ExplicitHeight = 759
  end
  object Bevel4: TBevel
    Left = 0
    Top = 567
    Width = 1080
    Height = 6
    Align = alBottom
    Shape = bsSpacer
    ExplicitTop = 780
    ExplicitWidth = 1379
  end
  object Bevel3: TBevel
    Left = 1074
    Top = 6
    Width = 6
    Height = 561
    Align = alRight
    Shape = bsSpacer
    ExplicitLeft = 1372
    ExplicitHeight = 775
  end
  object pnLogin: TCurvyPanel
    Left = 7
    Top = 6
    Width = 1067
    Height = 561
    Align = alClient
    Rounding = 20
    TabOrder = 0
    object dxBevel1: TdxBevel
      Left = 344
      Top = 27
      Width = 705
      Height = 502
      Shape = dxbsFrame
    end
    object Label1: TLabel
      Left = 6
      Top = 10
      Width = 162
      Height = 42
      Caption = 'Employee List'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 404
      Top = 214
      Width = 53
      Height = 28
      Caption = #3605#3635#3649#3627#3609#3656#3591
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 747
      Top = 214
      Width = 38
      Height = 28
      Caption = #3649#3612#3609#3585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 709
      Top = 103
      Width = 76
      Height = 28
      Caption = #3623#3633#3609#3607#3637#3656#3648#3586#3657#3634#3591#3634#3609
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
    end
    object LabeledEdit1: TLabeledEdit
      Left = 461
      Top = 136
      Width = 217
      Height = 31
      EditLabel.Width = 75
      EditLabel.Height = 28
      EditLabel.Caption = #3594#3639#3656#3629#3614#3609#3633#3585#3591#3634#3609
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Poppins'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 6
      Top = 88
      Width = 332
      Height = 441
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxGridDBColumn1
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = #3621#3635#3604#3633#3610
          DataBinding.FieldName = 'Item_Code'
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = #3594#3639#3656#3629#3614#3609#3633#3585#3591#3634#3609
          DataBinding.FieldName = 'Item_Name'
          HeaderAlignmentHorz = taCenter
          Width = 192
        end
        object cxGridDBTableView2Column1: TcxGridDBColumn
          Caption = #3594#3639#3656#3629#3648#3621#3656#3609
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object Edit1: TEdit
      Left = 56
      Top = 55
      Width = 253
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = #3588#3657#3609#3627#3634
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 445
      Top = 35
      Width = 81
      Height = 30
      Caption = 'Edit'
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
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000B1300000B1301009A9C18000000017352474200AE
        CE1CE90000000467414D410000B18F0BFC610500000114494441547801ED9441
        8E82301486FF1671323B8EC011981B3837991D21B3D11BE80974E7528FE00DE4
        08BD81DCC0BA322AB6BE12121B5141A83BFF84B4F4C1F7159A16F8A4260C1DA2
        1751A0F6F8234AA039442F162B67023D8F4282AEA91B5AB0198BC5C87E8EA345
        2C38CE0ABF3C164C2B4C34303CCDA34127810D3F10DC4F446AFA5E22C62570D0
        5A700BFF4E4466D78A16C85A09EAE0652D3B01A9FD5EA3456E08AFD41A09BAC0
        6B055DE14F052EE00F05AEE077052EE115816BB849CFBEC9E95CF1E83A3B829B
        F01B5B58B43EDBB88097CC6B944650FC334FEFF604F63922DAFA531A0908FEF3
        2ABC2230E77A31EB23B65FD76F93794E33FF7F1D5E111073A99431406A064903
        D2EB23EDC742E29377E5023555E46BCEC3AE2A0000000049454E44AE426082}
      TabOrder = 3
      Appearance.BorderColor = 15036461
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
    end
    object AdvGlowButton3: TAdvGlowButton
      Left = 358
      Top = 35
      Width = 81
      Height = 30
      Caption = 'New'
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
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000B1300000B1301009A9C18000000017352474200AE
        CE1CE90000000467414D410000B18F0BFC610500000061494441547801EDD3CD
        09C0200C05E017E9401DA59BB4A3741527E80ADD288DD08388821E5484F74108
        C49F77518096A2AAA7D5855EECF22754CB1987CE18303F40D241788AD68EC2FE
        FDEF6F61DD8BC81D0F5C4DE830FC070CC8DAD0C68396F3010CEB1C9720E5DBB7
        0000000049454E44AE426082}
      TabOrder = 4
      Appearance.BorderColor = 15036461
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
    end
    object AdvGlowButton4: TAdvGlowButton
      Left = 957
      Top = 491
      Width = 81
      Height = 30
      Caption = 'Save'
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
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001000000013080600000099678D
        CF000000097048597300000B1300000B1301009A9C18000000017352474200AE
        CE1CE90000000467414D410000B18F0BFC6105000000E5494441547801C55451
        11C2300C4D3904CC0195000E86031C301480039030079D13E68039A012E6A024
        233D4ADBF4C6ED837797A54D96B7267D37050CE79C46A7A100A5549F4D60B171
        F3F040ABE2E286932D5AC7EB3A301FBB789298E046D1782DE4FDC78CCFAF8596
        EA60BB0966D03197218FFB534C60D9DFA3F820917C1170D2428A21F3DE1697E7
        A405F1AA528CF458C1422427E0A355851A8BA7B45902BA267406CAA079ECB204
        F091F25E286ED08E6120AB036990913E262C1EE2FF09680693CAB0BF2BB0EE73
        BD327CFE00EF61F6C081D6FD8E279A569EDACDF82305201993A0C61787D3FE73
        0EFBA31D0000000049454E44AE426082}
      TabOrder = 5
      Appearance.BorderColor = 15036461
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
    end
    object LabeledEdit3: TLabeledEdit
      Left = 461
      Top = 99
      Width = 217
      Height = 31
      Color = clWhite
      EditLabel.Width = 82
      EditLabel.Height = 28
      EditLabel.Caption = #3619#3627#3633#3626#3614#3609#3633#3585#3591#3634#3609
      EditLabel.Color = clWhite
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Poppins'
      EditLabel.Font.Style = []
      EditLabel.ParentColor = False
      EditLabel.ParentFont = False
      EditLabel.Transparent = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 6
    end
    object LabeledEdit4: TLabeledEdit
      Left = 461
      Top = 173
      Width = 217
      Height = 31
      EditLabel.Width = 43
      EditLabel.Height = 28
      EditLabel.Caption = #3594#3639#3656#3629#3648#3621#3656#3609
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Poppins'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 7
    end
    object LabeledEdit9: TLabeledEdit
      Left = 693
      Top = 379
      Width = 138
      Height = 31
      EditLabel.Width = 35
      EditLabel.Height = 28
      EditLabel.Caption = 'User'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Poppins'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 8
    end
    object LabeledEdit10: TLabeledEdit
      Left = 693
      Top = 416
      Width = 138
      Height = 31
      EditLabel.Width = 76
      EditLabel.Height = 28
      EditLabel.Caption = 'Password'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Poppins'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      PasswordChar = '#'
      TabOrder = 9
    end
    object LabeledEdit11: TLabeledEdit
      Left = 789
      Top = 141
      Width = 217
      Height = 31
      EditLabel.Width = 55
      EditLabel.Height = 28
      EditLabel.Caption = #3648#3610#3629#3619#3660#3650#3607#3619
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Poppins'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Poppins'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 10
      TextHint = 'Tel / Fax'
    end
    object CheckBox1: TCheckBox
      Left = 461
      Top = 261
      Width = 82
      Height = 17
      Caption = 'Active'
      TabOrder = 11
    end
    object AdvGlowButton5: TAdvGlowButton
      Left = 532
      Top = 35
      Width = 146
      Height = 30
      Caption = 'Import Excel'
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
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000006984944415478DAC597096C145518C7FF33BBD3EE766929DBD2963294
        965010821824844042905020A0A080927214410885000D02D62301032251C428
        9008D104B148508942A306B1DC2287D4D61E5081D263DB9296A3F4DAEE3197DF
        CCCE0EDD7640A228AF79FDE6BD79DF7BBF7DEF7BDFF70D83C75C98FBF4B354FB
        50B53FA2753C546BA8CA7F07A02E9C45750D63637B5B6C2CC34001FDD306863E
        07DAEA83424209B44C9F25AFAC285EB98EBA3EA4BABD2308D3092687ED1B312F
        7A611F440FB1219293106191E0B08A8674908CB006FB644DC92DB16817AD708B
        16B44B166A7778A6FE36C182BBA51E34EFAE81E4F27C492AF355BECE00E988B7
        ED4FF9281599A36E60587C0BACAC0C49A15F20339055492A72483BD0A7B64585
        2509928CDEBE274589415DAB0D874B9DA85A7D0D4A837736ADF7556780BCB8AC
        A4B4CF37D723DA264050956556970C495697A1FDA16398078EB1D18EEDDB65C5
        ED1DAEA3B4DE84CE00D56B7F8A4A9A9ED6FA9F2C1E9CA7EE92846319B52E5AAF
        6F67809ADD052CDF6F08342507866300F73E38C4682F15FDC494E0E129BA34DA
        4C685BD7714B77F16DFD26143795691077CB051C4EAFABD56F595780A4C101E2
        D1E1E710C50E7F2477B0512CC0EA921964A82C1AAF893836B7C61CE0D37C0BDF
        677060BBC7D9CBE060FB3D1200B75C8195C5E3D0E4E30840C0A90C9739C0CE8B
        569E1FC4C24FD76AA2E332BA5952B417B2626CBC5118F58F61F4AD56A0747AAF
        8E60F5F76D5225961511809743131DC19997ABCD01765CE0F8DE832C1AC0E4C8
        5244E90007AA8F21EBE2BB08A7FB1F4E96ACD6CCD479589EBA4C5B7CDBD56DD8
        53F10D7CA4E715557D0B768EDC8069FC184DBF850096148C47B3CFAA019C5F58
        650EF0F1B9303E9100D489A64695A2BB35D9F8856B0ADF416EED2103C26E65B0
        7DD82EDCF6D763D3E575B43063002CED9F893583961A13378B5578253F0DCD7E
        2B9ACBFDC85F54690EB0F56C38DFEB09022063991E5D82682ED978E9113D987F
        612E6A3C5710460061160571B628F8E436B80551DB3515604CEC646C1EFA016D
        3F6BE8360955C8B83801ADB4032D157E142EAE300778EF8C8D00ACF42B58BCE8
        2C82B303805AAADCD7B1B2F0254868838D76A25B98A419AC5F0ED84DB2FD296C
        79722F399CD018D6480073CE4FD25C72CB753F4A965C3707D8743A824FA01DF0
        D036CE8EF90331617DBB58F4C95BB9F8A4EA55C490B754CD2EE860BAB1BDB071
        D041D249E8A273C75F8D59E754002B5A2B7C28CB2C3707D870CAC1C70FA42042
        A41971858835019015095B2AC7D2D95FD76281A87BC9F4C48D181BB3D0F41ADE
        268019BF4EA6A3B2A08D00AE2EBB660EB0EE443702B06A0317C417202E3C2964
        22D518F31A37E04CD34E2DF00400182D4447734EAC48CA23C34DEC0270D3E7C2
        B45F269323A2E8480015CBAF9A03BC792C928FD3011627FC4EC13114A0A8751F
        7EB8B3CA888A81C8484904A3560529F691C8E8F51D2C0C17A2D7E07561CAE967
        E1A179DD555EB8565C3107C83E1AC5F71C40E7E4B76059EF7C2474007079CFE2
        EB9B3329BC0A9A8F573381386E28EABCA5DAE2810A8CEEBE12CFF458A739AA60
        A9278089279E8387FC437BA50F37B2CACC0156FFDC9D8FD50156F0F948B4F731
        AE514EC32478E43B46204A087B1A73E30FD191BC8DC2B63D46B6A47ABF993DF7
        A1BF7DA231F10D4F0DC61F9F0A2FDD140F0134ACBA6C0E907584005239B4D07D
        5DD5F737F4260041F6E0C0AD74DC16CA8C81763606E9710711694D201BF0626F
        C31434F88BB5D918EDBD130B128E23CACA6BE3EB0860ECD169046081B7D28B3B
        AB2F99032C3FDC8377A692B3A0A0B136F902F8081E0F531A850AE4D4A7C1A7B4
        187D89612330273E97EC210CB5EDB5189DF73CFCE45F7CD55E34AD293507C8FC
        D149009CE6B35F4F398F24C7C301A8C52B37917DF842FAD49D500DD2E5AEC5C8
        23D321506AE62780D6D74ACC01167D1FC3F7D0003864A79C46FFC8E487067850
        296FADC2A823B308803CA6CB034F76B12940F5FC83B149CE819CE656A3A54CAC
        1FF206051EEE9FADAA179F2420BB702BBEA8C80DB8EDCA76086F159BA6647913
        3645A70D7CC1A16544AA21D6B5C4836322E9BE07EF7D20CF0F3E7794C1AB1932
        96648BD08E36D1AD392D755EE1E42D289F959B26A5E9DD932CFB67EC8F07EBB0
        744D44A50E09AA1448B743C6D0AE094AA731BAAEA82F2EB6C990D717A99EC934
        2D579FF7380770F347643BE11C6A87887FB9B8A28FA15C41FCB315F2DE4AF268
        EE1C5A67014C3E4CD4A206F19554D75A2318EDD30CE8908C8564C2C174EC9E72
        E838E65E9F8F0EC42BA99F665BA9EEC07D3ECD3A833C968FD3FFBDFC053C0ED2
        4E06F90A970000000049454E44AE426082}
      TabOrder = 12
      Appearance.BorderColor = 15036461
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
    end
    object ComboBox1: TComboBox
      Left = 461
      Top = 210
      Width = 217
      Height = 36
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      TextHint = #3605#3635#3649#3627#3609#3656#3591
    end
    object ComboBox2: TComboBox
      Left = 789
      Top = 210
      Width = 217
      Height = 36
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      TextHint = #3649#3612#3609#3585
    end
    object DateTimePicker1: TDateTimePicker
      Left = 789
      Top = 99
      Width = 217
      Height = 36
      Date = 44755.000000000000000000
      Time = 0.421259467591880800
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Poppins'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object AdvGlowButton9: TAdvGlowButton
      Left = 1007
      Top = 27
      Width = 42
      Height = 42
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
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001F0000001F08060000001FAE16
        3900000009704859730000084E0000084E018C3100EC000000017352474200AE
        CE1CE90000000467414D410000B18F0BFC6105000003E8494441547801B5574B
        4C134118FE6776B3E003AD8F22ED4A291A1F89EF88468906D0E8492FCAC11BEA
        41EFC6B3C457E2C16834F16414D4281890838F13101113634C94838FC400B2D0
        524A0C50D2125EDD5DFF19682DEDBE8AF225D39DDDFDE7FFBEFDE79F7FA604B2
        80E2F5960A94EED155751350BA883D23BA1E8D13F22B47D33E7B0706DE67E38F
        D819F4783C9B91F01C76CF6073D9982BD8DA5455BD5C1C0E2B305FF211BFDF15
        9D9EBE8DDD2A7020321D3A40AD6623C2D0695F41C11E2208AFD1413EFC1B144D
        D74FF843A10EA39734C3DAEB3D0B82D0FE1F8819FC94902F4159AE327A39E7CB
        7B65F9183E78050B005DD78F168542CD86E43D05057E51103A74FBA49A2F2298
        88BB5273201976246E5A40620697200835A90F383986BB0A8977198D90B66C81
        E5172F82B8762DD8812E5B0679E7CF43EE91236626E58A2C1F4ADC9059F26EEC
        AC33B2763F7D0AB96565100F06E1776525BF9A11BB1F3F06A9A404A64221E8DE
        BE1D96E6E666D81142DE150683E57C4C8F2CEF342366186F6DE557F6E5EEC646
        C30830E2D50F1F726286C1070F60381A85D8C444862D265E59D0EDDEC9C70900
        C7C00231741AB974C9540059BC9813E7ECDBC7EF0357AF42DFB56BBC6F26202E
        49C73939B6C36083283A1FC6794F17C088F39F3D33244EC04800AEFD035C7840
        96079D169425A74EC1CA9B3767D4E3DC6BE17032D446C4A9589997979A0303BE
        FE7EAF984D251BABAF078A5FEBBA726526F4B3E1B723666011609815E0613F14
        B2440C05689148F23E8EFDC1274F1C8D4D9F028A99AE8243F0396E6800EAFA5B
        8B44EC6F6B6E869CA222473E5205504CFD80934189E49276ECE0F7010C73CF85
        0BBCCF88B31130128B7572E1D83E61F3DB12D7D581B47BF70C71DA1C17DFBA95
        14F015ABDB646F2F5842D77FB20B25947EB023E695CB843874EF5ED611C03DBE
        8993E788E2732BC315D7AF5BAEE384802EACE909011B6B6AAC5CB24DEC2D27CF
        5794305EDBCC0CB5D1514BE204066B6B9311C05390A91D16F797FB272614DE65
        3F7D1ECF413C8DB69BD98F61460F75768213B0EC5731A3F1846BF85E02D8BA77
        6AEA3BEBF375EEC323AF4AC85D33874B702D1BED504660EBDE8C1897D69D0471
        927C46B2588D59A898394D2B8FF381224AD28D3962129D624589E8A278788104
        28D39456EC1D1B0BA73ECC383AF71516AE07556DC1C4F09B7932DB2AAD882B66
        932C1519B5DD170874AB9A56811BCE0B336F8E2340480BD691722362FEDA6A2C
        9E724E0BBA5E6D16058B08F4E25FAC6A5C528FC04A1B38001EFA2BB12A9D0476
        EA2164E91C01B118C4C6C7D9F12882841FD1EEFE1A9FEFCD86AEAE493BBF59FF
        07C39C28C1A5E4D10859C51D68DA547868E8DB7869E98F8AB6B67836BEFE0019
        4AA8602439C4B70000000049454E44AE426082}
      TabOrder = 16
      OnClick = AdvGlowButton9Click
      Appearance.BorderColor = 15036461
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
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 682
      Top = 216
      Width = 25
      Height = 25
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
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000B1300000B1301009A9C18000000017352474200AE
        CE1CE90000000467414D410000B18F0BFC610500000061494441547801EDD3CD
        09C0200C05E017E9401DA59BB4A3741527E80ADD288DD08388821E5484F74108
        C49F77518096A2AAA7D5855EECF22754CB1987CE18303F40D241788AD68EC2FE
        FDEF6F61DD8BC81D0F5C4DE830FC070CC8DAD0C68396F3010CEB1C9720E5DBB7
        0000000049454E44AE426082}
      TabOrder = 17
      Appearance.BorderColor = 15036461
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
    end
    object AdvGlowButton6: TAdvGlowButton
      Left = 1007
      Top = 216
      Width = 25
      Height = 25
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
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000B1300000B1301009A9C18000000017352474200AE
        CE1CE90000000467414D410000B18F0BFC610500000061494441547801EDD3CD
        09C0200C05E017E9401DA59BB4A3741527E80ADD288DD08388821E5484F74108
        C49F77518096A2AAA7D5855EECF22754CB1987CE18303F40D241788AD68EC2FE
        FDEF6F61DD8BC81D0F5C4DE830FC070CC8DAD0C68396F3010CEB1C9720E5DBB7
        0000000049454E44AE426082}
      TabOrder = 18
      Appearance.BorderColor = 15036461
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
    end
    object AdvGlowButton7: TAdvGlowButton
      Left = 311
      Top = 55
      Width = 27
      Height = 27
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
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001200000012080600000056CE8E
        57000000097048597300000B1300000B1301009A9C18000000017352474200AE
        CE1CE90000000467414D410000B18F0BFC6105000000F0494441547801A59481
        0DC2201045C1380023B0818CE0088EC006BA41DDC015DCA07182BA81DDA03A41
        DD00EFEA27414A01F5273F6DA07DF72947A588E49C5374B1E40D5963B8275FA4
        9457512382ECC9A37B6B2077B0D78DAC4B90060FF38BDB3825D902CE36B924AC
        63A1980E606A69B21515E2B4C9A288EC16E3A661BCFC311E6C678365D0ACF88A
        CC6BEDC577BAE3AA42D0331CF8550C7A90CD6C17F23251B2CC2E64E49B353531
        ED42B16BC547E3DAD4A406685882A1BB4FBEFB73950C400E2D61B1EC1D528CC1
        1162353918273B07C0509D3F83FC3D8BB028E1165689F97A5845310F3BACC51F
        A21F1D83A6FB17D7BC6BBE846754980000000049454E44AE426082}
      TabOrder = 19
      Appearance.BorderColor = 15036461
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
    end
  end
end
