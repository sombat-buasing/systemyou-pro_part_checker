unit FmSet_Company;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  AdvGlowButton, CurvyControls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, dxBevel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid,Unit_SysCenter;

type
  TFrmSet_Company = class(TForm)
    pnLogin: TCurvyPanel;
    AdvGlowButton1: TAdvGlowButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    EditComp_Name_EN: TLabeledEdit;
    GridComp: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    EditFind: TEdit;
    dxBevel1: TdxBevel;
    EditComp_Name_TH: TLabeledEdit;
    EditComp_ShortName: TLabeledEdit;
    EditComp_TaxNo: TLabeledEdit;
    EditComp_Add2: TLabeledEdit;
    EditComp_Add3: TLabeledEdit;
    EditComp_Add1: TLabeledEdit;
    EditComp_Province: TLabeledEdit;
    EditComp_Post: TLabeledEdit;
    EditComp_Tel1: TLabeledEdit;
    EditComp_Tel2: TLabeledEdit;
    EditComp_Contact1: TLabeledEdit;
    EditComp_Contact2: TLabeledEdit;
    Label1: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    btnSave: TAdvGlowButton;
    cxGridDBTableView2Comp_Id: TcxGridDBColumn;
    cxGridDBTableView2Comp_Code: TcxGridDBColumn;
    cxGridDBTableView2Comp_Name_TH: TcxGridDBColumn;
    cxGridDBTableView2Comp_Name_EN: TcxGridDBColumn;
    cxGridDBTableView2Comp_Add1: TcxGridDBColumn;
    cxGridDBTableView2Comp_Add2: TcxGridDBColumn;
    cxGridDBTableView2Comp_Add3: TcxGridDBColumn;
    cxGridDBTableView2Comp_TaxNo: TcxGridDBColumn;
    cxGridDBTableView2Comp_Tel1: TcxGridDBColumn;
    cxGridDBTableView2Comp_Tel2: TcxGridDBColumn;
    cxGridDBTableView2Comp_ShortName: TcxGridDBColumn;
    cxGridDBTableView2Comp_Province: TcxGridDBColumn;
    cxGridDBTableView2Comp_Post: TcxGridDBColumn;
    cxGridDBTableView2Comp_Contact1: TcxGridDBColumn;
    cxGridDBTableView2Comp_Contact2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    Action : TState;
  public
    { Public declarations }

    procedure ClearEdit;
  end;

var
  FrmSet_Company: TFrmSet_Company;

implementation

{$R *.dfm}

uses DMModule;

procedure TFrmSet_Company.AdvGlowButton1Click(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TFrmSet_Company.FormCreate(Sender: TObject);
begin
    self.BorderStyle := bsNone;
    //ClearEdit;

    //self.BorderIcons
end;

procedure TFrmSet_Company.FormShow(Sender: TObject);
begin
    //AddDBToCombo(dm.QryShipping,cmSHP,'Shipping_Name','Shipping_Id',0);
end;

procedure TFrmSet_Company.AdvGlowButton3Click(Sender: TObject);
begin
    ClearEdit;
    EditComp_Name_TH.SetFocus;
    Action := fadd;
end;

procedure TFrmSet_Company.btnSaveClick(Sender: TObject);
begin
    if Action = fAdd then
    begin
        cmd := 'insert into tb_set_Company (Comp_Name_TH, Comp_Name_EN,  '+
               'Comp_ShortName, Comp_TaxNo, Comp_Add1, Comp_Add2, Comp_Add3, '+
               'Comp_Province, Comp_Post, Comp_Tel1, Comp_Tel2, '+
               'Comp_Contact1, Comp_Contact2) values ('+
               InsVar(EditComp_Name_TH.Text,str)+
               InsVar(EditComp_Name_EN.Text,str)+
               InsVar(EditComp_ShortName.Text,str)+
               InsVar(EditComp_TaxNo.Text,str)+
               InsVar(EditComp_Add1.Text,str)+
               InsVar(EditComp_Add2.Text,str)+
               InsVar(EditComp_Add3.Text,str)+
               InsVar(EditComp_Province.Text,str)+
               InsVar(EditComp_Post.Text,str)+
               InsVar(EditComp_Tel1.Text,str)+
               InsVar(EditComp_Tel2.Text,str)+
               InsVar(EditComp_Contact1.Text,str)+
               AutoVar(EditComp_Contact2.Text,str)+')';
        if Execute(dm.QryExecute,cmd,'') then
        begin
            MyMSG('บันทึกข้อมูล '+EditComp_Name_TH.Text,' สำเร็จ');
            dm.QryComp.Active := false;
            dm.QryComp.Active := true;
            Action := fNone;
        end;
    end;

end;

procedure TFrmSet_Company.ClearEdit;
var i : integer;
    cpn : TLabeledEdit;
begin
    for i := ComponentCount-1 downto 0 do
    begin
        if (Components[i] is TLabeledEdit) then
        begin
            cpn := Components[i] as TLabeledEdit;
            cpn.Clear;
        end;
    end;
end;

end.
