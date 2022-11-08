unit uPrint_barcode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, CurvyControls, Vcl.ExtCtrls, MemDS, DBAccess, Uni, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ppParameter, ppDesignLayer, ppVar,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppBarCod, StrUtils, ppBarCode2D, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPrint_barcode = class(TForm)
    Panel1: TPanel;
    CurvyPanel9: TCurvyPanel;
    qryDisplay: TUniQuery;
    dsDisplay: TDataSource;
    dbgDisplay: TDBGrid;
    qryTemp: TUniQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDetailBand1: TppDetailBand;
    CurvyPanel1: TCurvyPanel;
    pnlStation: TPanel;
    Label2: TLabel;
    lbModel: TLabel;
    btnPrint_select: TButton;
    btnPrint_all: TButton;
    pp2DBarCode1: Tpp2DBarCode;
    FlowPanel1: TFlowPanel;
    cbMatt_01: TCheckBox;
    cbMatt_02: TCheckBox;
    cbMatt_03: TCheckBox;
    cbMatt_04: TCheckBox;
    cbMatt_05: TCheckBox;
    cbMatt_06: TCheckBox;
    cbMatt_07: TCheckBox;
    cbMatt_08: TCheckBox;
    cbMatt_09: TCheckBox;
    cbMatt_10: TCheckBox;
    cbMatt_11: TCheckBox;
    cbMatt_12: TCheckBox;
    cbMatt_13: TCheckBox;
    cbMatt_14: TCheckBox;
    cbMatt_15: TCheckBox;
    cbMatt_16: TCheckBox;
    cbMatt_17: TCheckBox;
    cbMatt_18: TCheckBox;
    cbMatt_19: TCheckBox;
    cbMatt_20: TCheckBox;
    cbMatt_21: TCheckBox;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    qryPrint: TUniQuery;
    dsPrint: TDataSource;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine3: TppLine;
    cbPreview: TCheckBox;
    FDMemTable1: TFDMemTable;
    FDMemTable1part_id: TIntegerField;
    FDMemTable1sub_assem: TStringField;
    FDMemTable1description: TStringField;
    FDMemTable1copies: TIntegerField;
    FDMemTable1part_thickness: TFloatField;
    FDMemTable1part_width: TFloatField;
    FDMemTable1part_length: TFloatField;
    FDMemTable1part_matname: TStringField;
    FDMemTable1part_model: TStringField;
    FDMemTable1part_selected: TBooleanField;
    edFind: TEdit;
    Label1: TLabel;
    cbSearch: TComboBox;
    Label3: TLabel;
    btnFind: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPrint_selectClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure cbMatt_01Click(Sender: TObject);
    procedure btnPrint_allClick(Sender: TObject);
    procedure dbgDisplayDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgDisplayCellClick(Column: TColumn);
    procedure edFindChange(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshData ;
    procedure Disp_checkbox ;
  end;

var
  frmPrint_barcode: TfrmPrint_barcode;
  txCond : string;
  lCheck : boolean;

implementation

{$R *.dfm}

uses DMModule, uFunction, FmMain;



procedure TfrmPrint_barcode.cbMatt_01Click(Sender: TObject);
begin
  Disp_checkbox ;
end;

procedure TfrmPrint_barcode.dbgDisplayCellClick(Column: TColumn);
begin
   if (Column.Field.DataType=ftBoolean) then
   begin
     {toggle True and False}
     Column.Grid.DataSource.DataSet.Edit;
     Column.Field.Value:= not Column.Field.AsBoolean;
    {immediate post - see for yourself whether you want this}
     Column.Grid.DataSource.DataSet.Post;
     {you may add additional functionality here,
    to be processed after the change was made}
   end;
end;

procedure TfrmPrint_barcode.dbgDisplayDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
   CtrlState: array[Boolean] of integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED) ;
begin
   if (Column.Field.DataType=ftBoolean) then
   begin
//     dbgDisplay.Canvas.FillRect(Rect) ;
     if VarIsNull(Column.Field.Value) then
       DrawFrameControl(dbgDisplay.Canvas.Handle,Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE) {grayed}
     else
       DrawFrameControl(dbgDisplay.Canvas.Handle,Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]) ; {checked or unchecked}
   end;
end;

procedure TfrmPrint_barcode.Disp_checkbox ;
var
  n : integer;
  chb : TComponent ;
begin
  n := 1 ;

  txCond := '' ;

  while n <= 21 do
  begin
    chb := FindComponent( 'cbMatt_' + FormatFloat('00',n) ) ;
    with (chb as TCheckbox) do
    begin
      if (Checked = True) then
      begin
        Font.Style := [fsBold];
        txCond := txCond + QuotedStr( Caption ) + ',' ;
      end
      else
      begin
        Font.Style := [];
      end;
    end;
    n := n + 1;
  end;

  if txCond <> '' then txCond := LeftStr( txCond,Length(txCond) - 1) ;

  if lCheck = True then RefreshData ;
end;

procedure TfrmPrint_barcode.edFindChange(Sender: TObject);
//var
//  cTxt : string;
begin
//  cTxt := edFind.Text;
//  if cTxt <> Emptystr then
//  begin
//    case cbSearch.ItemIndex of
//      0: FDMemTable1.Locate('sub_assem',cTxt,[loPartialKey]);
//      1: FDMemTable1.Locate('description',cTxt,[loPartialKey]);
//      2: FDMemTable1.Locate('part_matname',cTxt,[loPartialKey]);
//    end;
//  end;
end;

procedure TfrmPrint_barcode.FormCreate(Sender: TObject);
var
  n : integer;
  btn : TComponent;
  tx : string;
begin
  qryDisplay.Connection := dm.Main_Connection;
  qryTemp   .Connection := dm.Main_Connection;
  qryPrint.Connection := dm.Main_Connection;


  n := 1;
  while n <= 21 do
  begin
    tx := 'cbMatt_' + FormatFloat('00',n);
    btn := self.FindComponent( tx );
    with (btn as TCheckbox) do
    begin
      Font.Size := 10;
      Checked := False;
      Visible := False;
    end;
    n := n + 1;
  end;

end;

procedure TfrmPrint_barcode.FormShow(Sender: TObject);
var
  cModel : string;
  n : integer;
  btn : TComponent ;
begin
  cbSearch.ItemIndex := 0;
  pnlStation.Caption := IntToStr( FmMain.loginStation );

  cModel := lbModel.Caption;

  n := 1 ;  lCheck := False ;
  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select part_matname From tb_joborder ' +
    'Where part_model = ' + QuotedStr(cModel) + ' ' +
    'Group by part_matname ' );
  qryTemp.Active := True;
  while not qryTemp.Eof do
  begin

    if n <= 21 then
    begin
      btn := self.FindComponent( 'cbMatt_' + FormatFloat('00',n) );
      with (btn as TCheckBox) do
      begin
        Caption := qryTemp.FieldByname('part_matname').AsString  ;
        Checked := True;
        Visible := True;
      end;
    end;

    n := n + 1 ;
    qryTemp.Next;
  end;
  lCheck := True;
  Disp_checkbox ;
end;

procedure TfrmPrint_barcode.ppDetailBand1BeforePrint(Sender: TObject);
begin
//  pp2DBarCode1.Data := FormatFloat('0000',qryPrint.FieldByName('part_id').AsInteger) +
//                       Trim(qryPrint.FieldByName('part_model').AsString) ;

//  pp2DBarCode1.Data := Trim(qryPrint.FieldByName('part_model').AsString) + '-' +
//                       FormatFloat('000',qryPrint.FieldByName('part_id').AsInteger) ;

  pp2DBarCode1.Data := Trim(qryPrint.FieldByName('part_model').AsString) + '-' +
                       IntToStr(qryPrint.FieldByName('part_id').AsInteger) ;

  ppLabel5.Caption := qryPrint.FieldByname('sub_assem').AsString;
  ppLabel1.Caption := '#' + qryPrint.FieldByname('part_id').AsString + '-' +
                      Trim(qryPrint.FieldByname('description').AsString);
  ppLabel3.Caption := Trim(qryPrint.FieldByname('part_model').AsString) + '-' +
                           qryPrint.FieldByname('part_id').AsString;

  ppLabel4.Caption := FormatFloat(',0.0',qryPrint.FieldByname('part_width' ).AsFloat) + ' x ' +
                      FormatFloat(',0.0',qryPrint.FieldByname('part_length').AsFloat) + ' mm.';


end;

procedure TfrmPrint_barcode.btnFindClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TfrmPrint_barcode.btnPrint_allClick(Sender: TObject);
begin

  qryPrint.Sql.Clear;
  qryPrint.Sql.Text := qryDisplay.Sql.Text ;
  qryPrint.Active := True;

  ppDBPipeline1.DataSource := dsPrint ;
  ppreport1.DataPipeline := ppDBPipeline1;

  if cbPreview.Checked then
    ppReport1.DeviceType := 'Screen'
  else
    ppReport1.DeviceType := 'Printer';

  ppReport1.Print;

end;

procedure TfrmPrint_barcode.btnPrint_selectClick(Sender: TObject);
var
  i, nPartid : integer;
  cCond : string;
begin

  cCond := '' ;
  nPartId := FDMemTable1.FieldByName('part_id').AsInteger;

  FDMemTable1.First;
  while not FDMemTable1.Eof do
  begin
    if (FDMemTable1.FieldByName('part_selected').AsBoolean = True) then
    begin
      cCond := cCond + IntToStr(dbgDisplay.DataSource.DataSet.FieldByName('part_id').AsInteger) + ',' ;
    end;

    FDMemTable1.Next;
  end;

  FDMemTable1.Locate('part_id',nPartId,[loPartialKey]) ;


//  for i := 0 to dbgDisplay.SelectedRows.Count-1 do
//  begin
//    dbgDisplay.DataSource.DataSet.GotoBookmark((dbgDisplay.SelectedRows.Items[i])) ;
//    cCond := cCond + IntToStr(dbgDisplay.DataSource.DataSet.FieldByName('part_id').AsInteger) + ',' ;
//  end;

  if cCond = Emptystr then
  begin
    MessageDlg('คุณไม่ได้เลือกรายการสำหรับพิมพ์.',mtWarning,[mbOK],0);
    exit;
  end
  else
  begin
    cCond := LeftStr(cCond,Length(cCond) - 1);
  end;


  if cCond <> Emptystr then
  begin
    qryPrint.Sql.Clear;
    qryPrint.Sql.Add('Select * From tb_joborder ' +
      'Where part_model = ' + QuotedStr( lbModel.Caption )  ) ;
    if cCond <> Emptystr then
    begin
      qryPrint.Sql.Add( ' and part_id in ( ' + cCond + ' ) ' ) ;
    end;

    qryPrint.Active := True;
  end;


  ppDBPipeline1.DataSource := dsPrint ;
  ppreport1.DataPipeline := ppDBPipeline1;
  if cbPreview.Checked then
    ppReport1.DeviceType := 'Screen'
  else
    ppReport1.DeviceType := 'Printer';
  ppReport1.Print;
end;

procedure TfrmPrint_barcode.RefreshData ;
var
  cModel, cTx : string;
  n : integer;
begin
  cModel := lbModel.Caption ;
  cTx    := edFind.Text ;

  qryDisplay.Sql.Clear;
  qryDisplay.Sql.Add('Select * From tb_joborder ' +
    'Where (part_model = ' + QuotedStr( cModel ) + ') '  ) ;
  if txCond <> Emptystr then
  begin
    qryDisplay.Sql.Add( ' and ( part_matname in ( ' + txCond + ') ) ' ) ;
  end;

  if edFind.Text <> Emptystr then
  begin
    qryDisplay.Sql.Add(' and part_id = ' + edFind.Text ) ;


//    qryDisplay.Sql.Add(' and ((sub_assem like '   + Quotedstr('%' + cTx + '%') + ')' +
//                         ' or (description like ' + Quotedstr('%' + cTx + '%') + ')' +
//                         ' or (part_matname like '+ Quotedstr('%' + cTx + '%') + ')' +
//                       ' ) ' );
  end;

  qryDisplay.Sql.Add(' Order by part_id asc ' ) ;

//Showmessage( qryDisplay.Sql.Text ) ;

  qryDisplay.Active := True;


  if edFind.Text <> Emptystr then
  begin
    qryDisplay.locate('part_id',edFind.Text,[loPartialKey] ) ;
  end;

  FDMemTable1.Active := True;
  FDMemTable1.EmptyDataSet;

  while not qryDisplay.Eof do
  begin
    FDMemTable1.Insert;
    FDMemTable1.FieldByName('part_selected').AsBoolean := False;
    FDMemTable1.FieldByName('part_id').AsInteger := qryDisplay.FieldByName('part_id').AsInteger;
    FDMemTable1.FieldByName('copies' ).AsInteger := qryDisplay.FieldByName('copies' ).AsInteger;

    FDMemTable1.FieldByName('sub_assem'   ).AsString := qryDisplay.FieldByName('sub_assem'   ).AsString;
    FDMemTable1.FieldByName('description' ).AsString := qryDisplay.FieldByName('description' ).AsString;
    FDMemTable1.FieldByName('part_matname').AsString := qryDisplay.FieldByName('part_matname').AsString;
    FDMemTable1.FieldByName('part_model'  ).AsString := qryDisplay.FieldByName('part_model'  ).AsString;
    FDMemTable1.FieldByName('part_model'  ).AsString := qryDisplay.FieldByName('part_model'  ).AsString;

    FDMemTable1.FieldByName('part_thickness').AsFloat := qryDisplay.FieldByName('part_thickness').AsFloat;
    FDMemTable1.FieldByName('part_width'    ).AsFloat := qryDisplay.FieldByName('part_width'    ).AsFloat;
    FDMemTable1.FieldByName('part_length'   ).AsFloat := qryDisplay.FieldByName('part_length'   ).AsFloat;
    FDMemTable1.Post;

    qryDisplay.Next;
  end;

  TFloatField( qryDisplay.FieldByName('copies') ).DisplayFormat := ',0 ';
  TFloatField( qryDisplay.FieldByName('part_thickness') ).DisplayFormat := ',0.00 ';
  TFloatField( qryDisplay.FieldByName('part_width')     ).DisplayFormat := ',0.00 ';
  TFloatField( qryDisplay.FieldByName('part_length')    ).DisplayFormat := ',0.00 ';

  dsDisplay.DataSet :=  FDMemTable1 ;
  dbgDisplay.DataSource := dsDisplay ;

  n := 0 ;
  dbgDisplay.Columns.Clear;
  ShowDBGrid(n,'part_selected',        15, taCenter,       ' ',        dbgDisplay) ;
  ShowDBGrid(n,'part_id',        40, taCenter,       'Part #',        dbgDisplay) ;
  ShowDBGrid(n,'sub_assem',     180, taLeftJustify,       'Sub Assembly',  dbgDisplay) ;
  ShowDBGrid(n,'description',   150, taLeftJustify,  'Descripton',    dbgDisplay) ;
  ShowDBGrid(n,'copies',         40, taCenter,       'Copies',        dbgDisplay) ;
  ShowDBGrid(n,'part_thickness', 90, taRightJustify, 'Thickness',     dbgDisplay) ;
  ShowDBGrid(n,'part_width',     90, taRightJustify, 'Width',         dbgDisplay) ;
  ShowDBGrid(n,'part_length',    90, taRightJustify, 'Length',        dbgDisplay) ;
  ShowDBGrid(n,'part_matname',  120, taLeftJustify , 'Material name', dbgDisplay) ;
  ShowDBGrid(n,'part_model',    120, taLeftJustify , 'Model',         dbgDisplay) ;
end;

end.


