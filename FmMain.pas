unit FmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, AdvMenus, W7Classes, W7Panels,
  Vcl.Buttons, AeroButtons, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxNavBarOfficeNavigationBar, Vcl.ExtCtrls, AdvNavBar,
  System.ImageList, Vcl.ImgList, AdvGlowButton, dxStatusBar, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, cxPC, AdvPageControl, Vcl.ComCtrls,
  Vcl.WinXCalendars, dxGDIPlusClasses, CurvyControls, AdvSplitter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Grids, Vcl.ValEdit, AdvSmoothPanel, cxContainer, cxGroupBox,
  AdvDateTimePicker,Unit_SysCenter,cxGridExportLink, DBAccess, Uni, MemDS,
  UniProvider, SQLServerUniProvider, cxTextEdit, dxBevel, Vcl.DBGrids, StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DateUtils, Vcl.NumberBox;

type
  TMyDBgrid = class(TDBGrid);

  TFrmMain = class(TForm)
    Menustyle: TAdvMenuStyler;
    W7Panel1: TW7Panel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    MainMenu: TAdvMainMenu;
    file1: TMenuItem;
    Exit1: TMenuItem;
    AboutUs1: TMenuItem;
    UpdateVersion1: TMenuItem;
    VersionInfo1: TMenuItem;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    MStatusBar: TAdvOfficeStatusBar;
    Stbarstye: TAdvOfficeStatusBarOfficeStyler;
    PageMain: TcxPageControl;
    sheetMain: TcxTabSheet;
    sheetJobOrder: TcxTabSheet;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    pnGroupPOList: TPanel;
    AdvGlowButton10: TAdvGlowButton;
    sheetDashboard: TcxTabSheet;
    pnDB_SumDailySO: TAdvSmoothPanel;
    pnDB_Sum_Lost: TAdvSmoothPanel;
    pnDB_Sum_Complete: TAdvSmoothPanel;
    pnDB_SumDueCTMPay: TAdvSmoothPanel;
    pnDB_SumTop10SO: TAdvSmoothPanel;
    mmSetting: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N7: TMenuItem;
    N10: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N6: TMenuItem;
    cxTabSheet5: TcxTabSheet;
    N20: TMenuItem;
    Job1: TMenuItem;
    pnLogin: TCurvyPanel;
    imglogo: TImage;
    Label1: TLabel;
    btnLogin: TAdvGlowButton;
    EditUUser: TLabeledEdit;
    EditPPass: TLabeledEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView4Comp_ShortName: TcxGridDBColumn;
    cxGridDBTableView4Comp_Code: TcxGridDBColumn;
    cxGridDBTableView4Comp_Id: TcxGridDBColumn;
    cxGridDBTableView4Comp_Name_TH: TcxGridDBColumn;
    cxGridDBTableView4Comp_Name_EN: TcxGridDBColumn;
    cxGridDBTableView4Comp_Add1: TcxGridDBColumn;
    cxGridDBTableView4Comp_Add2: TcxGridDBColumn;
    cxGridDBTableView4Comp_Add3: TcxGridDBColumn;
    cxGridDBTableView4Comp_TaxNo: TcxGridDBColumn;
    cxGridDBTableView4Comp_Tel1: TcxGridDBColumn;
    cxGridDBTableView4Comp_Tel2: TcxGridDBColumn;
    cxGridDBTableView4Comp_Province: TcxGridDBColumn;
    cxGridDBTableView4Comp_Post: TcxGridDBColumn;
    cxGridDBTableView4Comp_Contact1: TcxGridDBColumn;
    cxGridDBTableView4Comp_Contact2: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    CurvyPanel1: TCurvyPanel;
    lbSearch_part_model: TLabeledEdit;
    dxBevel1: TdxBevel;
    btnFind: TAdvGlowButton;
    CurvyPanel9: TCurvyPanel;
    Bevel1: TBevel;
    lbDB_SumDueCTMPay: TLabel;
    lbDB_SumROP: TLabel;
    lbDB_Sum_Lost: TLabel;
    lbDB_SumDailySO: TLabel;
    CurvyPanel2: TCurvyPanel;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    Image1: TImage;
    imgMainMenu: TImageList;
    Button2: TButton;
    EditSStation: TLabeledEdit;
    CurvyPanel4: TCurvyPanel;
    qryJob_order: TUniQuery;
    dsJob_order: TDataSource;
    dbgJob_order: TDBGrid;
    Button3: TButton;
    qryPart_model: TUniQuery;
    dsPart_model: TDataSource;
    dbgPart_model: TDBGrid;
    qryTemp: TUniQuery;
    PopupMenu1: TPopupMenu;
    Splitter1: TSplitter;
    EditFind: TLabeledEdit;
    rbCheckPart: TRadioButton;
    rbCheckAll: TRadioButton;
    Button4: TButton;
    N4: TMenuItem;
    ScrollBox1: TScrollBox;
    FlowPanel1: TFlowPanel;
    Panel1: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    btnCheckAll: TBitBtn;
    btnClearAll: TBitBtn;
    fndTemp: TUniQuery;
    N1: TMenuItem;
    BitBtn1: TBitBtn;
    qryJob_not_complete: TUniQuery;
    dsJob_not_complete: TDataSource;
    PageControl1: TPageControl;
    tabJob_not_complete: TTabSheet;
    btnRefresh_header: TBitBtn;
    dbgJob_not_complete: TDBGrid;
    Label13: TLabel;
    BitBtn3: TBitBtn;
    tabJob_complete: TTabSheet;
    dbgJob_complete: TDBGrid;
    Label14: TLabel;
    qryJob_complete: TUniQuery;
    dsJob_complete: TDataSource;
    tabJob_lost: TTabSheet;
    Label15: TLabel;
    dbgJob_lost: TDBGrid;
    qryJob_lost: TUniQuery;
    dsJob_lost: TDataSource;
    FDMem_Part_lost: TFDMemTable;
    FDMem_Part_lostpart_model: TStringField;
    FDMem_Part_lostpart_created_date: TDateTimeField;
    FDMem_Part_lostpart_send_date: TDateTimeField;
    FDMem_Part_lostpart_all_count: TIntegerField;
    FDMem_Part_lostpart_lost_count: TIntegerField;
    FDMem_Part_lostpart_lost_percent: TFloatField;
    tabJob_late: TTabSheet;
    FDMem_Part_late: TFDMemTable;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    dbgJob_late: TDBGrid;
    Label16: TLabel;
    qryJob_late: TUniQuery;
    dsJob_late: TDataSource;
    dtBegin_complete: TDateTimePicker;
    Label17: TLabel;
    Label18: TLabel;
    dtEnd_complete: TDateTimePicker;
    Label19: TLabel;
    numLost_percent: TNumberBox;
    btnStation_check: TBitBtn;
    dbgPart_Left: TDBGrid;
    FDMemJob_order: TFDMemTable;
    FDMemJob_orderpart_model: TStringField;
    FDMemJob_orderpart_status: TStringField;
    FDMemJob_orderpart_send_date: TStringField;
    FDMemJob_orderpart_created_date: TStringField;
    FDMemJob_orderpart_selected: TBooleanField;
    FDMemJob_orderlate_days: TIntegerField;
    FDMemTemp1: TFDMemTable;
    BooleanField1: TBooleanField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField3: TIntegerField;
    FDMemJob_ordersend_date: TStringField;
    FDMemJob_ordercreated_date: TStringField;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure PageMainPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure Exit1Click(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure EditUUserKeyPress(Sender: TObject; var Key: Char);
    procedure EditPPassKeyPress(Sender: TObject; var Key: Char);
    procedure btnFindClick(Sender: TObject);
    procedure cxGridDBTableView7Column1GetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure cxGridDBTableView2Part_StatusGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGridDBColumn13GetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure cxGridDBColumn12GetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure cxGridDBColumn17GetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure cxGridDBColumn18GetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure lbSearch_part_modelChange(Sender: TObject);
    procedure dbgJob_orderCellClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbMatt_01Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure EditSStationKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPart_modelDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgPart_modelDblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure rbCheckAllClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure btnCheckAllClick(Sender: TObject);
    procedure dbgJob_orderKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnClearAllClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure dbgJob_orderTitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure pnDB_SumDueCTMPayClick(Sender: TObject);
    procedure btnRefresh_headerClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure pnDB_Sum_CompleteClick(Sender: TObject);
    procedure pnDB_Sum_LostClick(Sender: TObject);
    procedure dbgJob_orderDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure pnDB_SumDailySOClick(Sender: TObject);
    procedure dtBegin_completeChange(Sender: TObject);
    procedure dtEnd_completeChange(Sender: TObject);
    procedure numLost_percentChange(Sender: TObject);
    procedure btnStation_checkClick(Sender: TObject);
    procedure dbgPart_LeftDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgPart_LeftDblClick(Sender: TObject);
    procedure dbgPart_LeftTitleClick(Column: TColumn);
    procedure dbgPart_modelTitleClick(Column: TColumn);

  private
    { Private declarations }
    procedure ShowSheet(Sheet:String);
    procedure SaveStatus( txText : string ) ;
    procedure Disp_checkbox ;
  public
    { Public declarations }
    procedure ShowJobOrder( cPart_model : string ) ;
    procedure ShowPartModel( cPart_model : string ) ;
    procedure ShowPartModel_detail( cPart_model : string );
    procedure ShowButton( cPart_model, cStatus : string ) ;
    function  chk_working( nPart_id : integer ) : boolean ;
    procedure CreateMatt_panel( n : integer ) ;
    procedure Dashboard_show_not_complete();

    procedure OnLogin;
    procedure HideTab;

  end;


var
  FrmMain: TFrmMain;

  loginStation : integer ;
  empName : string;
  Station_Condition : string;
  checkEdit, shortScreen : boolean;
  jobOrder_sortby : string = 'part_model' ;
  jobOrder_orderby : boolean = true ;
  prtModel_sortby : string = 'part_id';
  prtModel_orderby : boolean = true ;
  oldPart_model : string ;

implementation

{$R *.dfm}

uses FmSet_Company, FmSet_Employee,
  FmSet_Customer,    DMModule, FmReadBarcode ,jpeg,System.Net.HttpClient,
  uPrint_barcode, uJob_order, uFunction, uShow_select, uJob_order_delete,
  uRead_barcode_2, uChange_status, uStation_check;


procedure TFrmMain.AdvGlowButton10Click(Sender: TObject);
begin
    OnLogin;
end;

procedure TFrmMain.AdvGlowButton11Click(Sender: TObject);
begin
    PageMain.ActivePageIndex := 1;
end;

procedure TFrmMain.AdvGlowButton1Click(Sender: TObject);
    function FCondWorkOrder : String;
    var FCond : String;
    begin
        FCond := '';
        FCondWorkOrder := FCond;

    end;
    function FOrderByWorkOrder : String;
    var FOrderBy : String;
    begin
        FOrderBy := ' Order by Part_Id ';
        FOrderByWorkOrder := FOrderBy;
    end;
begin
    cmd := 'select * from tb_joborder where Sub_Assem like '+
        AddQuotPercent(EditFind.Text)+FOrderByWorkOrder;

    SelectQry(dm.QryPart,cmd,0);

end;

procedure TFrmMain.AdvGlowButton2Click(Sender: TObject);
var
  nYear, nMonth, m, y : integer;
  i : integer;
begin

  nYear  := YearOf(now);
  nMonth := MonthOf(now);
  y := nYear ; m := nMonth;  i := 1;
  while i <= 3 do
  begin
    if m = 1 then
    begin
      m := 12 ; y := y - 1 ;
    end
    else
    begin
      m := m - 1 ;
    end;
    i := i + 1;
  end;

  dtBegin_complete.Date := EnCodeDate( y, m, 1) ;

  dtEnd_complete.Date   := EndOfTheMonth( EncodeDate(nYear, nMonth, 1));

  btnRefresh_headerClick(self);
  ChangePage(PageMain,1) ;
  pnDB_SumDueCTMPayClick(self);
end;

procedure TFrmMain.AdvGlowButton4Click(Sender: TObject);
begin
    ChangePage(PageMain,2)
end;

procedure TFrmMain.AdvGlowButton8Click(Sender: TObject);
begin

  try
    Application.CreateForm(TFrmReadBarcode, FrmReadBarcode) ;
    FrmReadBarcode.partModel := qryJob_order.FieldByName('part_model').AsString;
    frmReadBarcode.ShowModal;
  finally
    FreeAndNil( FrmReadBarcode ) ;
  end;

//  try
//    Application.CreateForm(TFrmReadBarcode, FrmReadBarcode) ;
//    FrmReadBarcode.partModel := qryJob_order.FieldByName('part_model').AsString;
//    frmReadBarcode.ShowModal;
//  finally
//    FreeAndNil( FrmReadBarcode ) ;
//  end;


//    FrmReadBarcode := TFrmReadBarcode.Create(Application);
//    if FrmReadBarcode.ShowModal = mrOK then
//    begin
//      FrmReadBarcode.partModel := qryJob_order.FieldByName('part_model').AsString;
//    end;
//
//    FrmReadBarcode.Free;
end;

procedure TFrmMain.BitBtn1Click(Sender: TObject);
begin
  ChangePage(PageMain,1);
end;

procedure TFrmMain.btnRefresh_headerClick(Sender: TObject);
var
  cText, cBegin, cEnd : string;
begin
  cText := 'ส่งงานครบแล้ว';
//  PageControl1.ActivePage := tabJob_not_complete;
  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select Count(*) as jobTotal ' +
     'From tb_joborder_h where part_status <> ' + quotedStr( cText )) ;
  qryTemp.Active := True;
  lbDB_SumDueCTMPay.Caption := FormatFloat(',0 ',qryTemp.FieldByName('jobTotal').AsInteger);

  cText := 'เสร็จแล้ว';
//  PageControl1.ActivePage := tabJob_complete;
  cBegin := FormatDateTime('YYYY-MM-DD', dtBegin_complete.Date) + ' 00:00:00.000';
  cEnd   := FormatDateTime('YYYY-MM-DD', dtEnd_complete  .Date) + ' 23:59:59.999';

  cText := 'เสร็จแล้ว';
  tabJob_complete.Visible := True;
  PageControl1.ActivePage := tabJob_complete;
  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select Count(*) as jobTotal From tb_joborder_h ' +
    'where part_status = ' + quotedStr( cText ) + ' ' +
     ' and (part_created_date >= ' + QuotedStr(cBegin) +
     ' and part_created_date <= ' + QuotedStr(cEnd) + ') '  ) ;
  qryTemp.Active := True;
  lbDB_SumROP.Caption := FormatFloat(',0 ',qryTemp.FieldByName('jobTotal').AsInteger);

  pnDB_Sum_LostClick(self);

  cText := 'Late';

  // เสร็จแล้ว , ส่งงานครบแล้ว
  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select Count(*) as jobTotal  ' +
    'From tb_joborder_h ' +
    'where part_status not in (' + QuotedStr('เสร็จแล้ว') + ',' + QuotedStr('ส่งงานครบแล้ว') +') ' +
     ' and DATEDIFF(DAY, GETDATE(), part_send_date) < 0 ' );
  qryTemp.Active := True;
  lbDB_SumDailySO.Caption := FormatFloat(',0 ',qryTemp.FieldByName('jobTotal').AsInteger);


end;

procedure TFrmMain.btnStation_checkClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmStation_check, frmStation_check);
    frmStation_check.ShowModal;
  finally
    FreeAndNil(frmStation_check);
  end;
end;

procedure TFrmMain.BitBtn3Click(Sender: TObject);
begin
  ChangePage(PageMain,2);
end;

procedure TFrmMain.btnClearAllClick(Sender: TObject);
var
  cModel : string;
  n : integer;
  btn : TComponent ;
  lLoop : boolean;
begin

  lLoop := True;
  checkEdit := False;

  cModel := qryJob_order.FieldByName('part_model').AsString ;

  ShowButton   ( qryJob_order.FieldByName('part_model').AsString ,'None') ;

  checkEdit := True;
  cbMatt_01Click(self) ;
end;

procedure TFrmMain.btnCheckAllClick(Sender: TObject);
var
  cModel : string;
  n : integer;
  btn : TComponent ;
  pnl : TPanel;
begin

  checkEdit := False;

  cModel := FDMemJob_order.FieldByName('part_model').AsString ;

  ShowButton   ( FDMemJob_order.FieldByName('part_model').AsString , 'All' ) ;


  checkEdit := True;
  cbMatt_01Click(self) ;
end;

procedure TFrmMain.ShowSheet(Sheet:String);
var i : integer;
begin

    for i := 0 to PageMain.PageCount-1 do
    begin
        if PageMain.Pages[i].Name = 'sheetMain' then
        begin
            PageMain.Pages[i].Visible := true;
        end else
            PageMain.Pages[i].Visible := false;

    end;

end;

procedure TFrmMain.btnFindClick(Sender: TObject);
begin

  oldPart_model := ReadConfig('Part_'+ inttostr(loginStation) + '_' + K_Emp_Nickname ,'') ;

  ShowJobOrder( oldPart_model ) ;

end;


procedure TfrmMain.ShowJobOrder( cPart_model : string ) ;
var
  n : integer;
  txSql, cSort, cDate : string;
begin

  if jobOrder_sortby = '' then cSort := 'part_created_date' else cSort := jobOrder_sortby ;

  cSort := LowerCase(cSort);

  txSql := 'select h.part_model, h.part_status, h.part_send_date, h.part_created_date, ' +
               'h.part_started_date, h.part_updated_date, h.part_closed_date,  ' +
               'h.part_created_by, h.part_started_by, h.part_updated_by, h.part_closed_by, ' +

               'DATEDIFF(DAY, GETDATE(), h.part_send_date) as late_days ' +
           'From tb_joborder_h h ' ;

  if lbSearch_part_model.Text <> Emptystr then
  begin
    txSql := txSql + 'Where part_model like ' +
                     QuotedStr('%' + Trim(lbSearch_part_model.Text) + '%') + ' '  ;
  end;

  qryJob_order.Sql.Clear;
  qryJob_order.Sql.Add( txSql ) ;
  qryJob_order.Active := True;

  FDMemJob_order.BeginBatch;
  try
    while not qryJob_order.Eof do
    begin

      if FDMemJob_order.Locate('part_model',qryJob_order.FieldByName('part_model').AsString,
                               [loCaseInsensitive]) = False then
      begin
        FDMemJob_order.Insert;
        FdMemjob_order.FieldByName('part_selected' ).Asboolean := False;
        FDMemJob_order.FieldByName('part_model'    ).AsString := qryJob_order.FieldByName('part_model').AsString;
        FDMemJob_order.FieldByName('part_status'   ).AsString := qryJob_order.FieldByName('part_status').AsString;

        cDate := qryJob_order.FieldByName('part_send_date').AsString ;
        FDMemJob_order.FieldByName('part_send_date').AsString := cDate;
        FDMemJob_order.FieldByName('send_date'     ).AsString := Copy(cDate,7,4) + Copy(cDate,4,2) + Copy(cDate,1,2);

        cDate := qryJob_order.FieldByName('part_created_date').AsString ;
        FDMemJob_order.FieldByName('part_created_date').AsString := cDate;
        FDMemJob_order.FieldByName('created_date'     ).AsString := Copy(cDate,7,4) + Copy(cDate,4,2) + Copy(cDate,1,2);

        FDMemJob_order.FieldByName('late_days'        ).AsString := qryJob_order.FieldByName('late_days').AsString;
        FDMemJob_order.Post;

      end
      else
      begin
        FDMemJob_order.Edit;
        FDMemJob_order.FieldByName('part_status'   ).AsString := qryJob_order.FieldByName('part_status').AsString;
        FDMemJob_order.Post;
      end;

      qryJob_order.next ;
    end;

    txSql := '';

    if cSort = 'part_created_date' then txSql := 'created_date' ;
    if cSort = 'part_send_date'    then txSql := 'send_date' ;
    if cSort = 'part_model'        then txSql := 'part_model' ;
    if cSort = 'part_status'       then txSql := 'part_status' ;
    if cSort = 'late_days'        then txSql := 'late_days' ;


    if cSort <> EmptyStr then
    begin
      if jobOrder_orderby = false then txSql := txSql + ':D'  ;
    end;


    FDMemJob_order.IndexFieldNames := txSql ;


  finally
    FDMemJob_order.EndBatch;
  end;


  if (cPart_model <> Emptystr) then FDMemJob_order.Locate('part_model',cPart_model,[loCaseInsensitive]) ;

  dsJob_order .DataSet    := FDMemJob_order;
  dbgJob_order.DataSource := dsJob_order;

  n := 0 ;
  dbgJob_order.Columns.Clear;
  ShowDBGrid(n,'part_selected'    ,15, taLeftJustify,       ' ',  dbgJob_order) ;
  ShowDBGrid(n,'part_model'    ,155, taLeftJustify,       'Part Model',  dbgJob_order) ;
  ShowDBGrid(n,'part_status'   , 75, taLeftJustify,       'Status',      dbgJob_order) ;
  ShowDBGrid(n,'part_send_date', 90, taLeftJustify,       'วันส่งงาน',      dbgJob_order) ;
  ShowDBGrid(n,'part_created_date',90, taLeftJustify,      'วันที่นำเข้า',      dbgJob_order) ;
  ShowDBGrid(n,'late_days', 80, taCenter,       'วัน',      dbgJob_order) ;

  ShowPartModel( FDMemJob_order.FieldByName('part_model').AsString );


  ShowButton   ( FDMemJob_order.FieldByName('part_model').AsString, 'Normal' );

end;

procedure TFrmMain.ShowPartModel(cPart_model: string);
var
  cStatus, cCreateDate, cStartedDate, cClosedDate, cUpdatedDate : string ;
begin


  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select * From tb_joborder_h ' +
    'Where part_model = ' + QuotedStr(cPart_model));
  qryTemp.Active := True;

  cCreateDate   := dsp_date(qryTemp.FieldByname('part_created_date').AsdateTime );
  cStartedDate  := dsp_date(qryTemp.FieldByname('part_started_date').AsdateTime );
  cUpdatedDate  := dsp_date(qryTemp.FieldByname('part_updated_date').AsdateTime );
  cClosedDate   := dsp_date(qryTemp.FieldByname('part_closed_date' ).AsdateTime );

  label11.Caption := 'สถานีที่ : ' + inttostr(loginStation) ;

  cStatus := 'สถานะ : ' + qryTemp.FieldByName('part_status').AsString ;

  WriteConfig('Part_'+ inttostr(loginStation) + '_' + K_Emp_Nickname ,cPart_model) ;

  label12.Caption := cPart_model ;
  label2 .Caption := cStatus ;
  label2.Visible := False;

  label3 .Caption := 'วันที่สร้าง JOB : ' + cCreateDate ;
  label5 .Caption := 'โดย : '             + qryTemp.FieldByName('part_created_by').AsString;

  label4 .Caption := 'วันที่เริ่มงาน : ' + cStartedDate ;
  label6 .Caption := 'โดย : '            + qryTemp.FieldByName('part_started_by').AsString;

  label7 .Caption := 'วันที่ปรับปรุง : ' + cUpdatedDate ;
  label10.Caption := 'โดย : '            + qryTemp.FieldByName('part_updated_by').AsString;

  label8 .Caption := 'วันที่ปิด JOB : '  + cClosedDate ;
  label9 .Caption := 'โดย : '            + qryTemp.FieldByName('part_closed_by').AsString;


  Station_Condition := ReadConfig('Matt_'+ inttostr(loginStation) + '_' + cPart_model ,'') ;

  if Station_Condition = Emptystr then btnCheckAllClick(self);


  ShowPartModel_detail( cPart_model ) ;

end;

procedure TFrmMain.ShowPartModel_detail(cPart_model : String);
var
  n, nCol : integer;
  lStat : boolean;
  txFind, ix : string;
begin

  txCond := Station_Condition ;
  txFind := EditFind.Text;

//  if txCond <> Emptystr Then Station_Condition := txCond;

  qryPart_model.Sql.Clear;
  qryPart_model.Sql.Add('Select jb.part_id, jb.sub_assem, jb.description, jb.copies, ' +
       'jb.part_thickness, jb.part_width, jb.part_length, jb.part_matname, jb.part_model, ' +
       'jb.station1_status, jb.station2_status, jb.station3_status, jb.station4_status, jb.station5_status, ' +
       'jb.station6_status, jb.station7_status, jb.station8_status, jb.station9_status, jb.station10_status, ' +

       'jb.station1_datetime, jb.station2_datetime, jb.station3_datetime, jb.station4_datetime, jb.station5_datetime, ' +
       'jb.station6_datetime, jb.station7_datetime, jb.station8_datetime, jb.station9_datetime, jb.station10_datetime, ' +

       'jb.station1_by, jb.station2_by, jb.station3_by, jb.station4_by, jb.station5_by, ' +
       'jb.station6_by, jb.station7_by, jb.station8_by, jb.station9_by, jb.station10_by, ' +

       'jb.station1_status + jb.station2_status + jb.station3_status + jb.station4_status + jb.station5_status + ' +
       'jb.station6_status + jb.station7_status + jb.station8_status + jb.station9_status + jb.station10_status as AllStatus, ' +

       '(select sts_color from tb_part_status st where st.sts_id = jb.station1_status)  as Color1, ' +
       '(select sts_color from tb_part_status st where st.sts_id = jb.station2_status)  as Color2, ' +
       '(select sts_color from tb_part_status st where st.sts_id = jb.station3_status)  as Color3, ' +
       '(select sts_color from tb_part_status st where st.sts_id = jb.station4_status)  as Color4, ' +
       '(select sts_color from tb_part_status st where st.sts_id = jb.station5_status)  as Color5, ' +
       '(select sts_color from tb_part_status st where st.sts_id = jb.station6_status)  as Color6, ' +
       '(select sts_color from tb_part_status st where st.sts_id = jb.station7_status)  as Color7, ' +
       '(select sts_color from tb_part_status st where st.sts_id = jb.station8_status)  as Color8, ' +
       '(select sts_color from tb_part_status st where st.sts_id = jb.station9_status)  as Color9, ' +
       '(select sts_color from tb_part_status st where st.sts_id = jb.station10_status) as Color10, ' +


       '(select sts_name from tb_part_status st where st.sts_id = jb.station1_status)  as Status1, ' +
       '(select sts_name from tb_part_status st where st.sts_id = jb.station2_status)  as Status2, ' +
       '(select sts_name from tb_part_status st where st.sts_id = jb.station3_status)  as Status3, ' +
       '(select sts_name from tb_part_status st where st.sts_id = jb.station4_status)  as Status4, ' +
       '(select sts_name from tb_part_status st where st.sts_id = jb.station5_status)  as Status5, ' +
       '(select sts_name from tb_part_status st where st.sts_id = jb.station6_status)  as Status6, ' +
       '(select sts_name from tb_part_status st where st.sts_id = jb.station7_status)  as Status7, ' +
       '(select sts_name from tb_part_status st where st.sts_id = jb.station8_status)  as Status8, ' +
       '(select sts_name from tb_part_status st where st.sts_id = jb.station9_status)  as Status9, ' +
       '(select sts_name from tb_part_status st where st.sts_id = jb.station10_status) as Status10 ' +

    'From tb_joborder jb ' +
    'Where jb.part_model = ' + QuotedStr(cPart_model) ) ;
  if rbCheckPart.Checked then
  begin
    qryPart_model.Sql.Add(
     'and jb.station1_status + jb.station2_status + jb.station3_status + jb.station4_status + jb.station5_status + ' +
         'jb.station6_status + jb.station7_status + jb.station8_status + jb.station9_status + jb.station10_status > 0 '  ) ;
  end;

  if txCond <> Emptystr then
  begin
    qryPart_model.Sql.Add('and jb.part_matname in ' + txCond  );
  end
  else
  begin
    qryPart_model.Sql.Add('and jb.part_matname in (' + QuotedStr('xxx') + ' )' );
  end;

  if txFind <> Emptystr then
  begin
    qryPart_Model.Sql.Add(' and part_id = ' + txFind ) ;
  end;

  if prtModel_sortby = ''               then qryPart_model.Sql.Add('order by jb.part_id  ');
  if prtModel_sortby = 'part_id'        then qryPart_model.Sql.Add('order by jb.part_id ');
  if prtModel_sortby = 'sub_assem'      then qryPart_model.Sql.Add('order by jb.sub_assem ');
  if prtModel_sortby = 'description'    then qryPart_model.Sql.Add('order by jb.description ');
  if prtModel_sortby = 'copies'         then qryPart_model.Sql.Add('order by jb.copies ');
  if prtModel_sortby = 'part_thickness' then qryPart_model.Sql.Add('order by jb.part_thickness ');
  if prtModel_sortby = 'part_matname'   then qryPart_model.Sql.Add('order by jb.part_matname ');
  if prtModel_sortby = 'part_length'    then qryPart_model.Sql.Add('order by jb.part_length ');
  if prtModel_sortby = 'part_width'     then qryPart_model.Sql.Add('order by jb.part_width ');

  if Copy(prtModel_sortby,1,6) = 'status' then
  begin
    ix := Copy(prtModel_sortby,7,length(prtModel_sortby) - 7 + 1 ) ;
    if prtModel_sortby = ('status' + ix) then qryPart_model.Sql.Add('order by jb.station' + ix + '_status ');
  end;

  if (LeftStr(prtModel_sortby,7) = 'station') and (RightStr(prtModel_sortby,8) = 'datetime') then
  begin
    ix := Copy(prtModel_sortby,8,length(prtModel_sortby) - 17 + 1 ) ;
    if prtModel_sortby = ('station' + ix + '_datetime') then
      qryPart_model.Sql.Add('order by jb.station' + ix + '_datetime ');
  end;

  if (LeftStr(prtModel_sortby,7) = 'station') and (RightStr(prtModel_sortby,2) = 'by') then
  begin
    ix := Copy(prtModel_sortby,8,length(prtModel_sortby) - 11 + 1 ) ;
    if prtModel_sortby = ('station' + ix + '_by') then
      qryPart_model.Sql.Add('order by jb.station' + ix + '_by ');
  end;


  if prtModel_sortby <> EmptyStr then
  begin
    if prtModel_orderby = true then qryPart_model.Sql.Add( ' asc' ) ;
    if prtModel_orderby = false then qryPart_model.Sql.Add( ' desc' ) ;
  end;

  qryPart_model.Active := True;


  TFloatField( qryPart_model.FieldByName('copies') ).DisplayFormat := ',0 ' ;
  TFloatField( qryPart_model.FieldByName('part_thickness') ).DisplayFormat := ',0.00 ' ;
  TFloatField( qryPart_model.FieldByName('part_width'    ) ).DisplayFormat := ',0.00 ' ;
  TFloatField( qryPart_model.FieldByName('part_length'   ) ).DisplayFormat := ',0.00 ' ;

//  TDateTimeField( qryPart_model.FieldByName('station1_datetime'   ) ).DisplayFormat := 'YYYY-MM-DD HH:MM:SS ' ;

var nWid : integer;


  lStat := not shortScreen ;

  dbgPart_model.DataSource := dsPart_model ;
  dbgPart_left .DataSource := dsPart_model ;

  if lStat then dbgPart_left.Width := 728 else dbgPart_left.Width := 300;

  nWid := dbgPart_Left.Width ;


  n := 0 ;
  dbgPart_left.Columns.Clear;
  ShowDBGrid(n,'part_id'    , 45, taCenter,     'Part #',        dbgPart_left) ;

  if lStat then nCol := 100 else nCol := nWid - 45 - 1;
  ShowDBGrid(n,'sub_assem'  , nCol, taLeftJustify,      'Sub Assembly',  dbgPart_left) ;


  if lStat = True then
  begin
    ShowDBGrid(n,'description',100, taLeftJustify,      'Description',   dbgPart_left) ;
    ShowDBGrid(n,'copies'         , 50, taCenter,       'Copies',        dbgPart_left) ;
    ShowDBGrid(n,'part_thickness' , 80, taRightJustify, 'Thickness',     dbgPart_left) ;
    ShowDBGrid(n,'part_width'     , 80, taRightJustify, 'Width',         dbgPart_left) ;
    ShowDBGrid(n,'part_length'    , 80, taRightJustify, 'Length',        dbgPart_left) ;

    ShowDBGrid(n,'part_matname',nWid - 245 - 290 - 1  , taLeftJustify,      'Material Name',   dbgPart_left) ;
  end;
  ShowScrollBar(dbgPart_left.handle, SB_VERT, False);

  n := 0 ;
  dbgPart_model.Columns.Clear;
//  ShowDBGrid(n,'part_model'  ,120, taLeftJustify,      'PartModel',   dbgPart_model) ;
//  ShowDBGrid(n,'part_status', 80, taLeftJustify,      'Status',   dbgPart_model) ;

  lStat := not shortScreen ;
  ShowDBGrid(n,'status1',70, taLeftJustify,ReadStation('ST1-Name','CNC'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'station1_datetime',60, taLeftJustify,      'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'station1_by',60, taLeftJustify,      'user',   dbgPart_model) ;
  end;

  ShowDBGrid(n,'status2',70, taLeftJustify,ReadStation('ST2-Name','Edge&Drill'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'station2_datetime',70, taLeftJustify,      'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'station2_by',60, taLeftJustify,      'user',   dbgPart_model) ;
  end;

  ShowDBGrid(n,'status3',70, taLeftJustify,ReadStation('ST3-Name','Assembly'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'station3_datetime',70, taLeftJustify,      'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'station3_by',60, taLeftJustify,      'user',   dbgPart_model) ;
  end;

  ShowDBGrid(n,'status4',70, taLeftJustify,ReadStation('ST4-Name','Sending'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'station4_datetime',70, taLeftJustify,      'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'station4_by',60, taLeftJustify,      'user',   dbgPart_model) ;
  end;

  ShowDBGrid(n,'status5',70, taLeftJustify,ReadStation('ST5-Name','สถานี 5'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'station5_datetime',70, taLeftJustify,      'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'station5_by',60, taLeftJustify,      'user',   dbgPart_model) ;
  end;

  ShowDBGrid(n,'status6',60, taLeftJustify,ReadStation('ST6-Name','Membrane'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'stauts6_datetime',70, taLeftJustify,      'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'stauts6_by',60, taLeftJustify,      'user',   dbgPart_model) ;
  end;

  ShowDBGrid(n,'status7',70, taLeftJustify,ReadStation('ST7-Name','Carpeter'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'station7_datetime',70, taLeftJustify,      'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'station7_by',60, taLeftJustify,      'user',   dbgPart_model) ;
  end;

  ShowDBGrid(n,'status8',70, taLeftJustify,ReadStation('ST8-Name','สถานี 8'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'station8_datetime',70, taLeftJustify,      'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'station8_by',60, taLeftJustify,      'user',   dbgPart_model) ;
  end;

  ShowDBGrid(n,'status9',70, taLeftJustify,ReadStation('ST9-Name','Packing'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'station9_datetime',70, taLeftJustify,'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'station9_by',      60, taLeftJustify,'user',     dbgPart_model) ;
  end;

  ShowDBGrid(n,'status10',70, taLeftJustify,ReadStation('ST10-Name','Delivery'),   dbgPart_model) ;
  if lStat then
  begin
    ShowDBGrid(n,'station10_datetime',70, taLeftJustify,'วันที่',   dbgPart_model) ;
    ShowDBGrid(n,'station10_by',60, taLeftJustify,      'user',     dbgPart_model) ;
  end;

end;


procedure TFrmMain.btnLoginClick(Sender: TObject);
begin
  if trim(EditSStation.Text) <> '' then
  begin

    if LoginSuccess(trim(EditUUser.Text),trim(EditPPass.Text)) = true then
    begin

        loginStation := StrToIntDef( EditSStation.Text, 1 );

        MStatusBar.Panels[0].Text := k_emp_name+' [ '+K_Emp_Nickname+' ] ';
        MStatusBar.Panels[1].Text := K_EmpDept_Name;
        MStatusBar.Panels[2].Text := K_EmpPosition_Name;
        MStatusBar.Panels[4].Text := K_Comp_ShortName;
        MStatusBar.Panels[5].Text := 'Version';
        MStatusBar.Panels[6].Text := K_Version;

        empName := K_Emp_Nickname ;

        mmSetting.Enabled := true;

        ChangePage(PageMain,2);

        btnFindClick(self);
    end;
  end else
  begin
      MyMSG('ใส่ตัวเลข Station ก่อนครับ','') ;
      EditSStation.SetFocus;
  end;
end;

procedure TFrmMain.Button1Click(Sender: TObject);
var HttpClient: tHttpClient;
    m: tMemoryStream;
    jpg : TJPEGImage;
begin
    m:=tMemoryStream.Create;
    try
      HttpClient:=tHttpClient.Create;
      try
        HttpClient.Get('https://systemyoudemo1.com/uploads/item/101111/101111-0008/101111-0008-1.jpg', m);
      finally
      FreeAndNil(HttpClient);
      end;
      Jpg := TJPEGImage.Create;
      try
            jpg.LoadFromStream(m);
            //Image2.Picture.Assign(jpg);
      finally
            jpg.Free;
      end;
      //m.SaveToFile('');
    finally
      FreeAndNil(m);
    end;

end;

procedure TFrmMain.Button2Click(Sender: TObject);
var
  cPart_model : string;
begin
  try
    Application.CreateForm(Tfrmprint_barcode, frmPrint_barcode);
    frmPrint_barcode.lbModel.Caption := qryJob_order.FieldByName('Part_model').AsString;
    frmPrint_barcode.ShowModal ;
  finally
    FreeAndNil(frmPrint_barcode);
  end;
end;

procedure TFrmMain.Button3Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmJob_order, frmJob_order);
    frmJob_order.Showmodal ;
  finally
    FreeAndNil(frmJob_order);
  end;
end;

procedure TFrmMain.Button4Click(Sender: TObject);
begin
  if Button4.Caption = 'ย่อ' then
  begin
    ShortScreen := True;
    ShowPartModel_detail(FDMemJob_order.FieldByName('part_model').AsString) ;
    Button4.Caption := 'ขยาย' ;
  end
  else
  begin
    shortScreen := False;
    ShowPartModel_detail(FDMemJob_order.FieldByName('part_model').AsString) ;
    Button4.Caption := 'ย่อ' ;
  end;


end;

procedure TFrmMain.cbMatt_01Click(Sender: TObject);
begin
  if checkEdit then
    Disp_Checkbox ;
end;

function TFrmMain.chk_working(nPart_id: integer): boolean;
var
  n, nResult : integer;
  cPartModel : string;
begin
  cPartModel := FDMemJob_order.FieldByName('part_model').AsString;

  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select * From tb_joborder ' +
    'where part_model = ' + QuotedStr(cPartModel) +
     ' and part_id = ' + IntToStr(nPart_id) ) ;
  qryTemp.Active := True;
  if qryTemp.IsEmpty = True then
    result := False
  else
  begin
    n := 1;
    nResult := 0;
    while n <= 10 do
    begin
      nResult := nResult + qryTemp.FieldByName('station1_status').AsInteger;
      n := n + 1;
    end;

    result := (nResult > 0) ;
  end;
end;




procedure TFrmMain.Disp_checkbox ;
var
  n : integer;
  chb, lbl : TComponent ;
  cPart_model : string;
begin

  cPart_model := FDMemJob_order.FieldByName('part_model').AsString;
  n := 1 ;

  txCond := '' ;

  while n <= 21 do
  begin
    chb := FindComponent( 'cbMatt_' + FormatFloat('00',n) ) ;
    if (chb <> nil) then
    begin

      lbl := FindComponent( 'lbMatt_' + FormatFloat('00',n) ) ;

      with (chb as TCheckbox) do
      begin
        if (Checked = True) then
        begin
          Font.Style := [fsBold];
          txCond := txCond + QuotedStr( Caption ) + ',' ;
          (lbl as TLabel).Font.Style := [fsBold];
        end
        else
        begin
          Font.Style := [];
          (lbl as TLabel).Font.Style := [];
        end;
      end;
    end;
    n := n + 1;
  end;

  if txCond <> '' then txCond := '( ' + LeftStr( txCond,Length(txCond) - 1) + ' )' ;

  Station_Condition := txCond ;

  WriteConfig('Matt_'+ inttostr(loginStation) + '_' + cPart_model,Station_Condition) ;

  ShowPartModel_detail( cPart_model ) ;

end;


procedure TFrmMain.dtBegin_completeChange(Sender: TObject);
begin
  pnDB_Sum_CompleteClick(self);
end;

procedure TFrmMain.dtEnd_completeChange(Sender: TObject);
begin
  pnDB_Sum_CompleteClick(self);
end;

procedure TFrmMain.cxGridDBColumn12GetDataText(Sender: TcxCustomGridTableItem;
  ARecordIndex: Integer; var AText: string);
begin
    AText := 'จบงาน';
end;

procedure TFrmMain.cxGridDBColumn13GetDataText(Sender: TcxCustomGridTableItem;
  ARecordIndex: Integer; var AText: string);
begin
    AText := 'สถานี 1';
end;

procedure TFrmMain.cxGridDBColumn17GetDataText(Sender: TcxCustomGridTableItem;
  ARecordIndex: Integer; var AText: string);
begin
    AText := '19 กค 65 17.00 น.';
end;

procedure TFrmMain.cxGridDBColumn18GetDataText(Sender: TcxCustomGridTableItem;
  ARecordIndex: Integer; var AText: string);
begin
    AText := 'User 1';
end;

procedure TFrmMain.cxGridDBTableView2Part_StatusGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
    AText := 'จบงาน';
end;

procedure TFrmMain.cxGridDBTableView7Column1GetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
 AFocusedRecordIndex, ARecno: Integer;
begin
  ARecno := TcxGridDBTableView(Sender.GridView).DataController.DataSource.DataSet.RecNo;
  AFocusedRecordIndex :=  TcxGridDBTableView(Sender.GridView).Controller.FocusedRecordIndex;
  AText := IntToStr( ARecno - AFocusedRecordIndex + ARecordIndex);

end;

procedure TFrmMain.Dashboard_show_not_complete;
var
  cText : string;
begin

  cText := 'ส่งงานครบ';
  PageControl1.ActivePage := tabJob_not_complete;
  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select Count(*) as jobTotal From tb_joborder_h where job_status <> ' + quotedStr( cText )) ;
  qryTemp.Active := True;
end;

procedure TFrmMain.dbgJob_orderCellClick(Column: TColumn);
var
  lData : boolean;
begin
  if (LowerCase(Column.FieldName) = 'part_selected') then
  begin
    lData := not Column.Field.AsBoolean;

    FDMemJob_order.BeginBatch;
    try
       {toggle True and False}
       Column.Grid.DataSource.DataSet.Edit;
       Column.Field.Value:= not Column.Field.AsBoolean;
      {immediate post - see for yourself whether you want this}
       Column.Grid.DataSource.DataSet.Post;
       {you may add additional functionality here,
      to be processed after the change was made}

//      FDMemTemp.Locate('part_model',FDMemJob_order.FieldByName('part_model').AsString,[loCaseInsensitive]);
//      FdmemTemp.edit;
//      FDmemTemp.FieldByName('part_selected').AsBoolean := lData;
//      FDmemTemp.Post;
    finally
      FDMemJob_Order.EndBatch;
    end;

//    FDMemJob_order.Locate('part_model',oldPart_model,[loCaseInsensitive]);

//    ShowPartModel( FDMemJob_order.FieldByName('part_model').AsString ) ;
//
//    ShowButton   ( FDMemJob_order.FieldByName('part_model').AsString , 'Normal') ;

  end
  else
  begin
    ShowPartModel( FDMemJob_order.FieldByName('part_model').AsString ) ;

    ShowButton   ( FDMemJob_order.FieldByName('part_model').AsString , 'Normal') ;
  end;
end;

procedure TFrmMain.dbgJob_orderDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
   CtrlState: array[Boolean] of integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED) ;
begin
//  if qryJob_order.FieldByName('late_days').AsInteger < 0 then
  if (dbgJob_order.DataSource.DataSet.Fields.FieldByName('late_days').Asinteger < 0) and
     (dbgJob_order.DataSource.DataSet.Fields.FieldByName('part_status').AsString <> 'เสร็จแล้ว') and
     (dbgJob_order.DataSource.DataSet.Fields.FieldByName('part_status').AsString <> 'ส่งงานครบแล้ว') then
  begin
    dbgJob_order.Canvas.Brush.Color :=  clRed ;
    dbgJob_order.Canvas.Font.Color  := clBlack;
    if gdSelected in state then
    begin
      dbgJob_order.Canvas.Brush.Color := $00BFFFBF;
      dbgJob_order.Canvas.Font.Color  := clBlack;
    end;
  end
  else if dbgJob_order.SelectedRows.CurrentRowSelected then
  begin
      dbgJob_order.Canvas.Brush.Color := $00FFFFB0;
      dbgJob_order.Canvas.Font.Color  := clBlack;
  end
  else
  begin
    dbgJob_order.Canvas.Brush.Color := clWhite;
    dbgJob_order.Canvas.Font.Color := clBlack;
    if gdSelected in state then
    begin
      dbgJob_order.Canvas.Brush.Color := $00FFFFB0;
      dbgJob_order.Canvas.Font.Color  := clBlack;
    end;
  end;
  dbgJob_order.DefaultDrawDataCell(Rect, Column.Field, State);

//  if (Column.Field.DataType=ftBoolean) then
  if (Lowercase(Column.FieldName) = 'part_selected') then
  begin
    if VarIsNull(Column.Field.Value) then
      DrawFrameControl(dbgJob_order.Canvas.Handle,Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE) {grayed}
    else
      DrawFrameControl(dbgJob_order.Canvas.Handle,Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]) ; {checked or unchecked}
  end;


end;

procedure TFrmMain.dbgJob_orderKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ShowPartModel( FDMemJob_order.FieldByName('part_model').AsString ) ;
  ShowButton   ( FDMemJob_order.FieldByName('part_model').AsString ,'Normal') ;
end;

procedure TFrmMain.dbgJob_orderTitleClick(Column: TColumn);
var
  i : integer;
  cOldJob, cColumnName : string;
  oldSort : string;
begin

  cOldJob := FDMemJob_order.FieldByName('part_model').AsString;


  if LowerCase(Column.FieldName) = 'part_selected' then
  begin

    FDMemJob_order.BeginBatch;
    try
      FDMemJob_order.First;
      while not FDMemJob_order.Eof do
      begin
        FDMemJob_order.Edit;
        FDMemJob_order.FieldByName('part_selected').AsBoolean := False;
        FDMemJob_order.Post;

        FDMemJob_order.Next;
      end;
    finally
      FDMemJob_order.EndBatch;
    end;
    FDMemJob_order.Locate('part_model',cOldJob,[loCaseInsensitive] );
    exit;
  end;

  oldSort := jobOrder_sortby ;
  with dbgJob_order do
  begin
   jobOrder_sortby := LowerCase(Column.FieldName) ;
  end;


  if oldSort <> jobOrder_sortby then
    jobOrder_Orderby := true
  else
    jobOrder_orderby := (not jobOrder_orderby) ;


  btnFindClick(self);

  FDMemJob_order.Locate('part_model',cOldJob,[loPartialKey]);

  with dbgJob_order do
  begin
    for i := 0 to Columns.Count - 1 do
    begin
      Columns[i].Title.Font.Style := Columns[i].Title.Font.Style - [fsBold];
      if LowerCase(Columns[i].FieldName) = jobOrder_sortby then
        Columns[i].Title.Font.Style := Columns[i].Title.Font.Style + [fsBold];
    end;
  end;
end;

procedure TFrmMain.dbgPart_LeftDblClick(Sender: TObject);
begin
  try
    Application.CreateForm( TfrmShow_select,frmShow_select) ;
    frmShow_select.Showmodal ;
  finally
    FreeAndNil( frmShow_select ) ;
  end;
end;

procedure TFrmMain.dbgPart_LeftDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  titleField, titleColor, titleColor_state : string;
  bWorking, bStation : boolean;
  cColor, cFieldName : string;
  n : integer;
  tx : string;
begin

  titleField := ',part_id,sub_assem,description,copies,part_thickness,part_length,part_width,part_matname,';
  bWorking := (dbgPart_left.DataSource.DataSet.Fields.FieldByName('allStatus').Asinteger > 0);

  cFieldName := lowercase(Column.FieldName) ;

  if (Copy(cFieldName,1,6) = 'status') then
    n := StrToInt(RightStr( cFieldName,Length(cFieldName) - 6));

  if (Copy(LowerCase(Column.FieldName),1,7) = 'station') then
  begin
    tx := Copy(cFieldName,1,Pos('_',cFieldName) - 1) ;
    n := StrToInt(Copy( tx, 8, Length(tx) ));
  end;

  if (Copy(cFieldName,1,6) = 'status') or (Copy(cFieldName,1,7) = 'station') then
  begin

    cColor := '$' + dbgPart_model.DataSource.DataSet.Fields.FieldByName('color' + inttostr(n)).AsString ;

    if dbgPart_left.DataSource.DataSet.Fields.FieldByName('status'+ inttostr(n)).AsString <> Emptystr then

    begin
      dbgPart_left.Canvas.Brush.Color :=  StringToColor(cColor) ;
      dbgPart_left.Canvas.Font.Color  := clBlack;
      if gdSelected in state then
      begin
        dbgPart_left.Canvas.Brush.Color := $00BFFFBF;
        dbgPart_left.Canvas.Font.Color  := clBlack;
      end;

    end
    else
    begin
      dbgPart_left.Canvas.Brush.Color := clWhite;
      dbgPart_left.Canvas.Font.Color := clBlack;
      if gdSelected in state then
      begin
        dbgPart_left.Canvas.Brush.Color := $00FFFFB0;
        dbgPart_left.Canvas.Font.Color  := clBlack;
      end;
    end;

  end

///////
  else if pos(','+LowerCase(Column.FieldName)+',', titleField) > 0 then
  begin

    if bWorking = True then
    begin
      dbgPart_left.Canvas.Brush.Color := $00C2FED1;
      dbgPart_left.Canvas.Font.Color  := clBlack;
      if gdSelected in state then
      begin
        dbgPart_left.Canvas.Brush.Color := $00BFFFBF;
        dbgPart_left.Canvas.Font.Color  := clBlack;
      end;

    end
    else
    begin
      dbgPart_left.Canvas.Brush.Color := clWhite;
      dbgPart_left.Canvas.Font.Color := clBlack;
      if gdSelected in state then
      begin
        dbgPart_left.Canvas.Brush.Color := $00FFFFB0;
        dbgPart_left.Canvas.Font.Color  := clBlack;
      end;
    end;
  end
  else
  begin
    dbgPart_left.Canvas.Brush.Color := clWhite;
    dbgPart_left.Canvas.Font.Color := clBlack;
    if gdSelected in state then
    begin
      dbgPart_left.Canvas.Brush.Color := $00FFFFB0;
      dbgPart_left.Canvas.Font.Color  := clBlack;
    end;
  end;

  dbgPart_left.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TFrmMain.dbgPart_LeftTitleClick(Column: TColumn);
var
  i, nPartid : integer;
  cColumnName, cPartModel, oldSort : string;
begin
  oldSort := prtModel_SortBy ;
  with dbgPart_Left do
  begin
   prtModel_SortBy := LowerCase(Column.FieldName) ;
  end;


  if oldSort <> prtModel_SortBy then
    prtModel_Orderby := true
  else
    prtModel_orderby := (not prtModel_orderby) ;

  cPartModel := qryPart_model.FieldByName('part_model').AsString;

  nPartid := qryPart_model.FieldByName('part_id').Asinteger;
  ShowPartModel_detail( cPartModel) ;
//  btnFindClick(self);
  qryPart_model.Locate('part_id',nPartid,[loCaseInsensitive]);

  with dbgPart_left do
  begin
    for i := 0 to Columns.Count - 1 do
    begin
      Columns[i].Title.Font.Style := Columns[i].Title.Font.Style - [fsBold];
      if LowerCase(Columns[i].FieldName) = prtModel_sortby then
        Columns[i].Title.Font.Style := Columns[i].Title.Font.Style + [fsBold];
    end;
  end;

end;

procedure TFrmMain.dbgPart_modelDblClick(Sender: TObject);
begin
  try
    Application.CreateForm( TfrmShow_select,frmShow_select) ;
    frmShow_select.Showmodal ;
  finally
    FreeAndNil( frmShow_select ) ;
  end;
end;


procedure TFrmMain.dbgPart_modelDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  titleField, titleColor, titleColor_state : string;
  bWorking, bStation : boolean;
  cColor, cFieldName : string;
  n : integer;
  tx : string;
begin

  titleField := ',part_id,sub_assem,description,copies,part_thickness,part_length,part_width,part_matname,';
  bWorking := (dbgPart_model.DataSource.DataSet.Fields.FieldByName('allStatus').Asinteger > 0);

  cFieldName := lowercase(Column.FieldName) ;

  if (Copy(cFieldName,1,6) = 'status') then
    n := StrToInt(RightStr( cFieldName,Length(cFieldName) - 6));

  if (Copy(LowerCase(Column.FieldName),1,7) = 'station') then
  begin
    tx := Copy(cFieldName,1,Pos('_',cFieldName) - 1) ;
    n := StrToInt(Copy( tx, 8, Length(tx) ));
  end;

  if (Copy(cFieldName,1,6) = 'status') or (Copy(cFieldName,1,7) = 'station') then
  begin

    cColor := '$' + dbgPart_model.DataSource.DataSet.Fields.FieldByName('color' + inttostr(n)).AsString ;

    if dbgPart_model.DataSource.DataSet.Fields.FieldByName('status'+ inttostr(n)).AsString <> Emptystr then

    begin
      dbgPart_model.Canvas.Brush.Color :=  StringToColor(cColor) ;
      dbgPart_model.Canvas.Font.Color  := clBlack;
      if gdSelected in state then
      begin
        dbgPart_model.Canvas.Brush.Color := $00BFFFBF;
        dbgPart_model.Canvas.Font.Color  := clBlack;
      end;

    end
    else
    begin
      dbgPart_model.Canvas.Brush.Color := clWhite;
      dbgPart_model.Canvas.Font.Color := clBlack;
      if gdSelected in state then
      begin
        dbgPart_model.Canvas.Brush.Color := $00FFFFB0;
        dbgPart_model.Canvas.Font.Color  := clBlack;
      end;
    end;

  end

///////
  else if pos(','+LowerCase(Column.FieldName)+',', titleField) > 0 then
  begin

    if bWorking = True then
    begin
      dbgPart_model.Canvas.Brush.Color := $00C2FED1;
      dbgPart_model.Canvas.Font.Color  := clBlack;
      if gdSelected in state then
      begin
        dbgPart_model.Canvas.Brush.Color := $00BFFFBF;
        dbgPart_model.Canvas.Font.Color  := clBlack;
      end;

    end
    else
    begin
      dbgPart_model.Canvas.Brush.Color := clWhite;
      dbgPart_model.Canvas.Font.Color := clBlack;
      if gdSelected in state then
      begin
        dbgPart_model.Canvas.Brush.Color := $00FFFFB0;
        dbgPart_model.Canvas.Font.Color  := clBlack;
      end;
    end;
  end
  else
  begin
    dbgPart_model.Canvas.Brush.Color := clWhite;
    dbgPart_model.Canvas.Font.Color := clBlack;
    if gdSelected in state then
    begin
      dbgPart_model.Canvas.Brush.Color := $00FFFFB0;
      dbgPart_model.Canvas.Font.Color  := clBlack;
    end;
  end;

  dbgPart_model.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TFrmMain.dbgPart_modelTitleClick(Column: TColumn);
var
  i, nPartid : integer;
  cColumnName, cPartModel, oldSort : string;
begin
  oldSort := prtModel_SortBy ;
  with dbgPart_model do
  begin
   prtModel_SortBy := LowerCase(Column.FieldName) ;
  end;

  if oldSort <> prtModel_SortBy then
    prtModel_Orderby := true
  else
    prtModel_orderby := (not prtModel_orderby) ;

  cPartModel := qryPart_model.FieldByName('part_model').AsString;

  nPartid := qryPart_model.FieldByName('part_id').Asinteger;
  ShowPartModel_detail( cPartModel) ;
//  btnFindClick(self);
  qryPart_model.Locate('part_id',nPartid,[loCaseInsensitive]);

  with dbgPart_model do
  begin
    for i := 0 to Columns.Count - 1 do
    begin
      Columns[i].Title.Font.Style := Columns[i].Title.Font.Style - [fsBold];
      if LowerCase(Columns[i].FieldName) = prtModel_sortby then
        Columns[i].Title.Font.Style := Columns[i].Title.Font.Style + [fsBold];
    end;
  end;
end;

//if (gdSelected in State) then
//    begin
//     Brush.Color := clLime;
//     FillRect(Rect);
//     Font.Color:= clBlue;
//     TextOut(Rect.Left, Rect.Top,Column.Field.AsString);
//     end;


procedure TFrmMain.CreateMatt_panel(n: integer);
var
  oPanel : TPanel;
  oCheckBox : TCheckBox;
  oLabel : TLabel;
begin
//  if n > 3 then exit;

  with FlowPanel1 do
  begin
    oPanel := TPanel(FindComponent('plMatt_' + FormatFloat('00',n))) ;
    if (oPanel = nil) then
    begin
      with TPanel.Create(FlowPanel1) do
      begin
        Parent  := FlowPanel1;
        Name    := 'plMatt_' + FormatFloat('00',n);
        Caption := '';
        Width   := 250 ; Height  := 28;
        BevelOuter := bvNone;
        Visible := True;
      end;

      oPanel := TPanel(FindComponent('plMatt_' + FormatFloat('00',n))) ;
      with (oPanel as TPanel) do
      begin
        with TCheckBox.Create( self ) do
        begin
          Visible := False;
          Parent := TPanel( oPanel );
          AutoSize := False;
          Name := 'cbMatt_' + FormatFloat('00',n);  Caption := '';
          Font.Size := 10;
          Margins.Left := 10;
          Align := alClient;
          Visible := True;
          OnClick := cbMatt_01Click;
        end;

        with TLabel.Create( self ) do
        begin
          Visible := False;
          Parent := TPanel( oPanel );
          AutoSize := True;
          Name := 'lbMatt_' + FormatFloat('00',n); Caption := '';
          Align := alRight;
          Font.Style := [fsBold];
          Width := 50;
          TabOrder := 1;
          Visible := True;
        end;
      end;
    end;
  end;
end;

procedure TFrmMain.ShowButton( cPart_model, cStatus : string ) ;
var
  cModel : string;
  n, i : integer;
  btn : TComponent ;
  pnl : TPanel;
  oPenel : TPanel ;
begin

  checkEdit := False;

  cModel := cPart_model ;

  n := 1;
  while n <= 21 do
  begin
    pnl := TPanel(FindComponent('plMatt_' + FormatFloat('00',n))) ;
    if (pnl = nil) then
    begin
      CreateMatt_panel( n ) ;
      pnl := TPanel(FindComponent('plMatt_' + FormatFloat('00',n))) ;
    end;

    btn := self.FindComponent( 'cbMatt_' + FormatFloat('00',n) );
    with (btn as TCheckbox) do
    begin
      Caption := ''  ;
      Checked := False;
      Visible := False;
    end;

    btn := self.FindComponent( 'lbMatt_' + FormatFloat('00',n) );
    with (btn as TLabel) do
    begin
      Caption := ''  ;
      Font.Style := [] ;
      Visible := False;
    end;

    n := n + 1;
  end;

  n := 1 ;
  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select jb1.part_matname, count(*) as matt_count, ' +
    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station' + inttostr(loginStation) + '_status <> 0))  ) as sts_count ' +

    'From tb_joborder jb1 ' +
    'Where jb1.part_model = ' + QuotedStr(cModel) + ' ' +
    'Group by jb1.part_matname ' );
  qryTemp.Active := True;
  while not qryTemp.Eof do
  begin

    if n <= 21 then
    begin

      pnl := TPanel(FindComponent('plMatt_' + FormatFloat('00',n)));
      if (pnl = nil) then
      begin
        CreateMatt_panel( n ) ;
        pnl := TPanel(FindComponent('plMatt_' + FormatFloat('00',n))) ;
      end;

      with (pnl as TPanel) do
      begin
//        Visible := True;
      end;

      btn := self.FindComponent( 'cbMatt_' + FormatFloat('00',n) );
      with (btn as TCheckbox) do
      begin
        Caption :=  qryTemp.FieldByname('part_matname').AsString  ;
        if cStatus = 'All' then
          Checked := True
        else if cStatus = 'None' then
          Checked := False
        else
          Checked :=  (pos(Caption, Station_Condition) > 0 );

        Visible := True;
      end;

      btn := self.FindComponent('lbMatt_' + FormatFloat('00',n) );
      if (btn <> nil) then
      begin
        with (btn as TLabel) do
        begin
          Caption := FormatFloat(',0  ',qryTemp.FieldbyName('sts_count').AsInteger) + '/ ' +
                     FormatFloat(',0  ',qryTemp.FieldbyName('matt_count').AsInteger) ;
          visible := True;
        end;
      end;
    end;

    n := n + 1 ;
    qryTemp.Next;
  end;


  checkEdit := True;
  cbMatt_01Click(self) ;

end;



procedure TFrmMain.EditPPassKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
      EditSStation.SetFocus;
    end;
end;

procedure TFrmMain.EditSStationKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      btnLoginClick(sender);
    end;
end;

procedure TFrmMain.EditUUserKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
       EditPPass.SetFocus;
end;

procedure TFrmMain.Exit1Click(Sender: TObject);
begin
    if PageMain.ActivePageIndex = 0 then
    begin
        dm.Free;
        Application.Terminate;
        FrmMain.Free;
    end else
    begin
        if messageDlg('คุณต้องการปิดโปรแกรม แน่หรือไม่?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin

        end;

    end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
    imglogo.Picture.LoadFromFile(logoMain);
    qryJob_order .Connection := dm.Main_Connection;
    qryPart_model.Connection := dm.Main_Connection;
    qryTemp      .Connection := dm.Main_Connection;
    fndTemp      .Connection := dm.Main_Connection;

    FDMemJob_order.Active := True;
    FDMemJob_order.EmptyDataSet ;

//    FDMemTemp.Active := True;
//    FDMemTemp.EmptyDataSet ;

    checkEdit := True;
    shortScreen := True;
end;

procedure TFrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_F1 then
    begin
      AdvGlowButton8Click(self);
    end;
end;

procedure TFrmMain.OnLogin;
begin
    mmSetting.Enabled := false;
    ChangePage(PageMain,0);
    EditUUser.Clear;
    EditPPass.Clear;
    K_Emp_UUser := '';
    K_Emp_PPass := '';

    MStatusBar.Panels[0].Text := '';
    MStatusBar.Panels[1].Text := '';
    MStatusBar.Panels[2].Text := '';
    MStatusBar.Panels[4].Text := '';


    EditUUser.SetFocus;
end;

procedure TFrmMain.PageMainPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
    if CanChangePageMain = true then
        AllowChange := true else
        AllowChange := false;
end;

procedure TFrmMain.pnDB_SumDailySOClick(Sender: TObject);
var
  cText, txSQL : string;
  n, nAllCount, nLostCount : integer;
begin
  pnDB_SumTop10SO.Caption.Text := 'Job Late. ';

  label16.Caption := 'Last updated : ' + FormatDateTime('dd/mm/yyyy hh:mm:ss',now);

  HideTab ;

  qryJob_late.Connection := DM.Main_Connection;

  cText := 'Late';
  tabJob_complete.Visible := True;
  PageControl1.ActivePage := tabJob_late;

 // เสร็จแล้ว , ส่งงานครบแล้ว
  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select Count(*) as jobTotal  ' +
    'From tb_joborder_h ' +
    'where part_status not in (' + QuotedStr('เสร็จแล้ว') + ',' + QuotedStr('ส่งงานครบแล้ว') +') ' +
     ' and DATEDIFF(DAY, GETDATE(), part_send_date) < 0 ' );
  qryTemp.Active := True;
  lbDB_SumDueCTMPay.Caption := FormatFloat(',0 ',qryTemp.FieldByName('jobTotal').AsInteger);

  qryJob_late.Sql.Clear;
  qryJob_late.Sql.Add('Select h.part_model, h.part_status, h.part_created_date, ' +
       'DateDiff(DAY,GETDATE(), h.part_send_date) as late_days, ' +
       'h.part_send_date ' +
    'From tb_joborder_h h ' +
    'where part_status not in (' + QuotedStr('เสร็จแล้ว') + ',' + QuotedStr('ส่งงานครบแล้ว') +') ' +
     ' and DATEDIFF(DAY, GETDATE(), part_send_date) < 0 ' );
  qryJob_late.Active := True;

  dsJob_late.DataSet := qryJob_late;
  dbgJob_late.DataSource := dsJob_late;

  TDateField(qryJob_late.FieldByName('part_created_date')).DisplayFormat := 'DD/MM/YYYY';
  TDateField(qryJob_late.FieldByName('part_send_date'   )).DisplayFormat := 'DD/MM/YYYY';

  n := 0;
  dbgJob_late.Columns.Clear;
  ShowDBGrid(n,'part_model'         ,280, taLeftJustify,       'Part Model',  dbgJob_late) ;
  ShowDBGrid(n,'part_status'        ,105, taCenter,       'Status',      dbgJob_late) ;
  ShowDBGrid(n,'part_created_date'  ,120, taCenter,       'Created date',dbgJob_late) ;
  ShowDBGrid(n,'part_send_date'     ,120, taCenter,            'Send date',   dbgJob_late) ;
  ShowDBGrid(n,'late_days'          ,120, taCenter,            'Days'     ,   dbgJob_late) ;
end;

procedure TFrmMain.pnDB_SumDueCTMPayClick(Sender: TObject);
var
  cText : string;
  n : integer;
begin
  pnDB_SumTop10SO.Caption.Text := 'Job not complete. ';

  label13.Caption := 'Last updated : ' + FormatDateTime('dd/mm/yyyy hh:mm:ss',now);

  HideTab;

  cText := 'ส่งงานครบแล้ว';
  PageControl1.ActivePage := tabJob_not_complete;

  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select Count(*) as jobTotal From tb_joborder_h ' +
    'where part_status <> ' + quotedStr( cText )) ;
  qryTemp.Active := True;
  lbDB_SumDueCTMPay.Caption := FormatFloat(',0 ',qryTemp.FieldByName('jobTotal').AsInteger);

  qryJob_not_complete.Sql.Clear;
  qryJob_not_complete.Sql.Add('Select h.part_model, h.part_status, h.part_created_date, ' +
       'DateDiff(DAY,GETDATE(), h.part_send_date) as late_days, ' +
       'h.part_send_date ' +
    'From tb_joborder_h h ' +
    'where part_status <> ' + quotedStr( cText )) ;
  qryJob_not_complete.Active := True;

  dsJob_not_complete.DataSet := qryJob_not_complete;
  dbgJob_not_complete.DataSource := dsJob_not_complete;

  TDateField(qryJob_not_complete.FieldByName('part_created_date')).DisplayFormat := 'DD/MM/YYYY';
  TDateField(qryJob_not_complete.FieldByName('part_send_date'   )).DisplayFormat := 'DD/MM/YYYY';

  n := 0;
  dbgJob_not_complete.Columns.Clear;
  ShowDBGrid(n,'part_model'         ,280, taLeftJustify,       'Part Model',  dbgJob_not_complete) ;
  ShowDBGrid(n,'part_status'        ,105, taCenter,       'Status',      dbgJob_not_complete) ;
  ShowDBGrid(n,'part_created_date'  ,120, taCenter,       'Created date',dbgJob_not_complete) ;
  ShowDBGrid(n,'part_send_date'     ,120, taCenter,            'Send date',   dbgJob_not_complete) ;
  ShowDBGrid(n,'late_days'          ,120, taCenter,            'Days',   dbgJob_not_complete) ;
end;

procedure TFrmMain.pnDB_Sum_LostClick(Sender: TObject);
var
  cText, txSQL : string;
  n, nAllCount, nLostCount : integer;
  nLostPercent : double;
begin
  pnDB_SumTop10SO.Caption.Text := 'Job Lost. ';

  label15.Caption := 'Last updated : ' + FormatDateTime('dd/mm/yyyy hh:mm:ss',now);

  HideTab ;

  cText := 'เสีย';
  tabJob_complete.Visible := True;
  PageControl1.ActivePage := tabJob_lost;

  FDMem_Part_lost.Active := True;
  FDMem_Part_lost.EmptyDataSet;


  txSQL := 'Select h.part_model, h.part_created_date, h.part_send_date, ' +
           '(select count(*) from Tb_JobOrder d1 where d1.part_model = h.part_model ) as partCount, ' +
           '(select count(*) from Tb_JobOrder d1 where d1.part_model = h.part_model and ' +
    '((d1.station1_status = 4) or (d1.station2_status = 4) or (d1.station3_status = 4) or ' +
    ' (d1.station4_status = 4) or (d1.station5_status = 4) or (d1.station6_status = 4) or ' +
    ' (d1.station7_status = 4) or (d1.station8_status = 4) or (d1.station9_status = 4) or ' +
    ' (d1.station10_status = 4) )) as lostCount ' +

    'From tb_joborder_h h ' +
    'Left Join tb_joborder d on d.part_model = h.part_model ' +
    'where (d.station1_status = 4) or (d.station2_status = 4) or (d.station3_status = 4) or ' +
          '(d.station4_status = 4) or (d.station5_status = 4) or (d.station6_status = 4) or ' +
          '(d.station7_status = 4) or (d.station8_status = 4) or (d.station9_status = 4) or ' +
          '(d.station10_status = 4) ' +

    'GROUP BY h.part_model, h.part_created_date, h.part_send_date ' ;

  qryTemp.Sql.Clear;
  qryTemp.Sql.Add( txSQL ) ;
  qryTemp.Active := True;
  while not qryTemp.Eof do
  begin
    nAllCount := qryTemp.FieldByName('partCount').AsInteger;
    nLostCount := qryTemp.FieldByName('lostCount').AsInteger;

    nLostPercent := (nLostCount * 100 / nAllCount) ;

    if nLostPercent >= numLost_percent.Value then
    begin

      FDMem_Part_lost.Insert;
      FDMem_Part_lost.FieldByName('part_model').AsString := qryTemp.FieldByName('part_model').AsString;

      FDMem_Part_lost.FieldByName('part_all_count' ).AsInteger := nAllCount;
      FDMem_Part_lost.FieldByName('part_lost_count').AsInteger := nLostCount;
      FDMem_Part_lost.FieldByName('part_lost_percent').AsFloat := (nLostCount * 100 / nAllCount) ;

      FDMem_Part_lost.FieldByName('part_created_date').AsDateTime := qryTemp.FieldByName('part_created_date').AsDateTime;
      FDMem_Part_lost.FieldByName('part_send_date'   ).AsDateTime := qryTemp.FieldByName('part_send_date'   ).AsDateTime ;



      FDMem_Part_lost.Post;
    end;

    qryTemp.Next;
  end;

  lbDB_Sum_Lost.Caption := FormatFloat(',0 ', FDMem_Part_lost.RecordCount) ;



  dsJob_lost.DataSet     := FDMem_Part_lost;
  dbgJob_lost.DataSource := dsJob_lost;

  TDateField(FDMem_Part_lost.FieldByName('part_created_date')).DisplayFormat := 'DD/MM/YYYY';
  TDateField(FDMem_Part_lost.FieldByName('part_send_date'   )).DisplayFormat := 'DD/MM/YYYY';

  TFloatField(FDMem_Part_lost.FieldByName('part_all_count')).DisplayFormat    := ',0 ';
  TFloatField(FDMem_Part_lost.FieldByName('part_lost_count')).DisplayFormat   := ',0 ';
  TFloatField(FDMem_Part_lost.FieldByName('part_lost_percent')).DisplayFormat := ',0.00% ';

  n := 0;
  dbgJob_lost.Columns.Clear;
  ShowDBGrid(n,'part_model'         ,280, taLeftJustify,       'Part Model',  dbgJob_lost) ;
  ShowDBGrid(n,'part_created_date'  ,120, taCenter,       'Created date',dbgJob_lost) ;
  ShowDBGrid(n,'part_send_date'     ,120, taCenter,            'Send date',   dbgJob_lost) ;

  ShowDBGrid(n,'part_all_count'     ,100, taRightJustify,      'All',   dbgJob_lost) ;
  ShowDBGrid(n,'part_lost_count'    ,100, taRightJustify,      'Lost',   dbgJob_lost) ;
  ShowDBGrid(n,'part_lost_percent'  ,100, taRightJustify,      'Lost %',   dbgJob_lost) ;

end;

procedure TfrmMain.HideTab ;
var
  n : integer;
begin
  with PageControl1 do
  begin
    for n := 0 to PageControl1.PageCount - 1 do
    begin
      PageControl1.Pages[n].TabVisible := False;
    end;
  end;
end;

procedure TFrmMain.pnDB_Sum_CompleteClick(Sender: TObject);
var
  cText, cBegin, cEnd : string;
  n : integer;
begin
  pnDB_SumTop10SO.Caption.Text := 'Job Complete. ';

  label14.Caption := 'Last updated : ' + FormatDateTime('dd/mm/yyyy hh:mm:ss',now);

  HideTab ;

  cBegin := FormatDateTime('YYYY-MM-DD', dtBegin_complete.Date) + ' 00:00:00.000';
  cEnd   := FormatDateTime('YYYY-MM-DD', dtEnd_complete  .Date) + ' 23:59:59.999';

  cText := 'เสร็จแล้ว';
  tabJob_complete.Visible := True;
  PageControl1.ActivePage := tabJob_complete;
  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select Count(*) as jobTotal From tb_joborder_h ' +
    'where part_status = ' + quotedStr( cText ) + ' ' +
     ' and (part_created_date >= ' + QuotedStr(cBegin) +
     ' and part_created_date <= ' + QuotedStr(cEnd) + ') '  ) ;
  qryTemp.Active := True;
  lbDB_SumROP.Caption := FormatFloat(',0 ',qryTemp.FieldByName('jobTotal').AsInteger);

  qryJob_complete.Sql.Clear;
  qryJob_complete.Sql.Add('Select h.part_model, h.part_status, h.part_status, h.part_created_date, ' +
       'DateDiff(DAY,GETDATE(), h.part_send_date) as late_days, ' +
       'h.part_send_date ' +
    'From tb_joborder_h h ' +
    'where part_status = ' + quotedStr( cText ) + ' ' +
     ' and (part_created_date >= ' + QuotedStr(cBegin) +
     ' and part_created_date <= ' + QuotedStr(cEnd) + ') '  ) ;
  qryJob_complete.Active := True;

  dsJob_complete.DataSet := qryJob_complete;
  dbgJob_complete.DataSource := dsJob_complete;

  TDateField(qryJob_complete.FieldByName('part_created_date')).DisplayFormat := 'DD/MM/YYYY';
  TDateField(qryJob_complete.FieldByName('part_send_date'   )).DisplayFormat := 'DD/MM/YYYY';

  n := 0;
  dbgJob_complete.Columns.Clear;
  ShowDBGrid(n,'part_model'         ,280, taLeftJustify,       'Part Model',  dbgJob_complete) ;
  ShowDBGrid(n,'part_status'        ,105, taCenter,       'Status',      dbgJob_complete) ;
  ShowDBGrid(n,'part_created_date'  ,120, taCenter,       'Created date',dbgJob_complete) ;
  ShowDBGrid(n,'part_send_date'     ,120, taCenter,       'Send date',   dbgJob_complete) ;
  ShowDBGrid(n,'late_days'     ,120, taCenter,       'Days',   dbgJob_not_complete) ;

end;

procedure TFrmMain.rbCheckAllClick(Sender: TObject);
begin
  ShowPartModel_detail( qryJob_order.FieldByName('part_model').AsString ) ;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
    FrmMain.WindowState := wsMaximized;
    //SetPositionPNLogin;
    K_Version := FrmMain.MStatusBar.Panels[6].Text;
    K_VersionServ := FormatFloat('0.000', dm.QrySettingCurr_Version.AsFloat);
    FrmMain.Caption := FrmMain.Caption+' Run on '+K_Server+' V.Serv ' + K_VersionServ;
    OnLogin;

end;

procedure TFrmMain.lbSearch_part_modelChange(Sender: TObject);
begin
  btnFindClick(self);
end;

procedure TFrmMain.N13Click(Sender: TObject);
begin
//  SaveStatus( N13.Caption );
end;

procedure TFrmMain.N14Click(Sender: TObject);
begin
//  SaveStatus( (sender as TMenuItem).Caption );
end;

procedure TFrmMain.N15Click(Sender: TObject);
begin
//  SaveStatus( (sender as TMenuItem).Caption );
end;

procedure TFrmMain.N16Click(Sender: TObject);
begin
//  SaveStatus( (sender as TMenuItem).Caption );
end;

procedure TFrmMain.N17Click(Sender: TObject);
begin
    FrmSet_Employee := TFrmSet_Employee.Create(Application);
    if FrmSet_Employee.ShowModal = mrOK then
    begin

    end;

    FrmSet_Employee.Free;
end;

procedure TFrmMain.N19Click(Sender: TObject);
begin
//  SaveStatus( N19.Caption );
end;

procedure TFrmMain.N1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmChange_status,frmChange_status);
//    frmChange_status.lbJobno.Caption := qryJob_order.FieldByName('part_model').AsString;
    frmChange_status.Showmodal;
  finally
    FreeAndNil(frmChange_status) ;
  end;
end;

procedure TFrmMain.N20Click(Sender: TObject);
begin
    FrmSet_Company := TFrmSet_Company.Create(Application);
    if FrmSet_Company.ShowModal = mrOK then
    begin

    end;

    FrmSet_Company.Free;
end;

procedure TFrmMain.N21Click(Sender: TObject);
begin
//  SaveStatus( N21.Caption );
end;

procedure TFrmMain.N22Click(Sender: TObject);
begin
//   SaveStatus( N22.Caption );
end;

procedure TFrmMain.N4Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmJob_order_delete, frmJob_order_delete);
    frmJob_order_delete.Showmodal ;
  finally
    FreeAndNil(frmJob_order_delete);
  end;
end;

procedure TFrmMain.numLost_percentChange(Sender: TObject);
begin
  pnDB_Sum_LostClick(self);
end;

procedure TfrmMain.SaveStatus( txText : string ) ;
var
  cPart_model : string;
begin

  try
    Application.CreateForm(TfrmChange_status,frmChange_status);
//    frmChange_status.lbJobno.Caption := qryJob_order.FieldByName('part_model').AsString;
    frmChange_status.cbStatus.Text := ' ' ;
    frmChange_status.Showmodal;
  finally
    FreeAndNil(frmChange_status) ;
  end;

//  cPart_model := qryJob_order.FieldByName('part_model').AsString;
//  if MessageDlg( 'ปรับสถานะ เป็น ' + txText , mtConfirmation, [mbCancel, mbOK],0) = mrOK  then
//  begin
//    qryTemp.Sql.Clear;
//    qryTemp.Sql.Add('update tb_joborder_h ' +
//      'Set part_status = ' + QuotedStr( txText ) + ' ' +
//      'Where part_model = ' + QuotedStr( cPart_model ));
//    qryTemp.ExecSQL;
//
//    qryJob_order.Refresh;
//    qryJob_order.Locate('part_model',cPart_model,[loCaseInsensitive]);
//    ShowPartModel( qryJob_order.FieldByName('part_model').AsString )
//  end;
end;

end.
