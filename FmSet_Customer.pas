unit FmSet_Customer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  AdvGlowButton, dxBevel, CurvyControls, cxTextEdit,Unit_SysCenter;

type
  TFrmSet_Customer = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    pnLogin: TCurvyPanel;
    AdvGlowButton10: TAdvGlowButton;
    pnInfo: TPanel;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Bevel5: TBevel;
    Panel2: TPanel;
    lbHead: TLabel;
    Bevel6: TBevel;
    AdvGlowButton9: TAdvGlowButton;
    btnNew: TAdvGlowButton;
    btnImpExcel: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    Panel3: TPanel;
    btnSave: TAdvGlowButton;
    Panel4: TPanel;
    btnFind: TAdvGlowButton;
    EditFind: TLabeledEdit;
    dxBevel1: TdxBevel;
    GridComp: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2Cust_Id: TcxGridDBColumn;
    cxGridDBTableView2Cust_Code: TcxGridDBColumn;
    cxGridDBTableView2Cust_Name: TcxGridDBColumn;
    cxGridDBTableView2Cust_ShortName: TcxGridDBColumn;
    cxGridDBTableView2Cust_TaxNo: TcxGridDBColumn;
    cxGridDBTableView2Cust_Add1: TcxGridDBColumn;
    cxGridDBTableView2Cust_Add2: TcxGridDBColumn;
    cxGridDBTableView2Cust_Add3: TcxGridDBColumn;
    cxGridDBTableView2Cust_Province: TcxGridDBColumn;
    cxGridDBTableView2Cust_Zipcode: TcxGridDBColumn;
    cxGridDBTableView2Comp_Contact1: TcxGridDBColumn;
    cxGridDBTableView2Comp_Contact2: TcxGridDBColumn;
    cxGridDBTableView2Cust_Tel1: TcxGridDBColumn;
    cxGridDBTableView2Cust_Tel2: TcxGridDBColumn;
    cxGridDBTableView2Cust_Status: TcxGridDBColumn;
    cxGridDBTableView2Cust_Type: TcxGridDBColumn;
    cxGridDBTableView2Comp_Id: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckShowPN;
    procedure cxGridDBTableView2Column1GetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGridDBTableView2Column2GetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGridDBTableView2Cust_TypeGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure btnFindClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ShowPN : boolean;
    Cust_Id : integer;
    Cust_Code ,
    Cust_Name ,
    Cust_Shortname : String;

    DBClickReturnVAR : boolean;
  end;

var
  FrmSet_Customer: TFrmSet_Customer;

implementation

{$R *.dfm}

uses DMModule;

procedure TFrmSet_Customer.AdvGlowButton9Click(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TFrmSet_Customer.FormCreate(Sender: TObject);
begin
    self.BorderStyle := bsNone;
end;

procedure TFrmSet_Customer.btnFindClick(Sender: TObject);
    function FCondCustomer : String;
    var FCond : String;
    begin
        FCond := '';
        Result := FCond;

    end;
    function FOrderByCustomer : String;
    var FOrderBy : String;
    begin
        FOrderBy := ' Order by Cust_ShortName';
        Result := FOrderBy;
    end;
begin
    cmd := 'select * from Tb_Set_Customer where comp_id = '+
        IntToStr(K_Comp_Id)+FCondCustomer+FOrderByCustomer;
    SelectQry(dm.QrySetCust,cmd,0);
end;

procedure TFrmSet_Customer.btnNewClick(Sender: TObject);
begin
    ShowPN := true;
    CheckShowPN;
end;

procedure TFrmSet_Customer.CheckShowPN;
begin
    if ShowPN = false then
        pnInfo.Visible := false else
        pnInfo.Visible := true;
end;

procedure TFrmSet_Customer.cxGridDBTableView2Column1GetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
 AFocusedRecordIndex, ARecno: Integer;
begin
  ARecno := TcxGridDBTableView(Sender.GridView).DataController.DataSource.DataSet.RecNo;
  AFocusedRecordIndex :=  TcxGridDBTableView(Sender.GridView).Controller.FocusedRecordIndex;
  AText := IntToStr( ARecno - AFocusedRecordIndex + ARecordIndex);

end;

procedure TFrmSet_Customer.cxGridDBTableView2Column2GetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var V_GetData : Integer;
begin

end;

procedure TFrmSet_Customer.cxGridDBTableView2Cust_TypeGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
    case StrtoInt(AText) of
      0 : AText := 'ไม่ระบุ';
      1 : AText := 'นิติบุคคล';
      2 : AText := 'บุคคลธรรมดา';
    end;

end;

procedure TFrmSet_Customer.cxGridDBTableView2DblClick(Sender: TObject);
begin
    if DBClickReturnVAR = true then
    begin
        Cust_Id := dm.QrySetCustCust_Id.AsInteger;
        Cust_Code := dm.QrySetCustCust_Code.AsString;
        Cust_Name := dm.QrySetCustCust_Name.AsString;
        Cust_Shortname := dm.QrySetCustCust_ShortName.AsString;
        ModalResult := mrOK;
    end;
end;

procedure TFrmSet_Customer.FormShow(Sender: TObject);
begin
    CheckShowPN;
    btnFindClick(sender);
end;

end.
