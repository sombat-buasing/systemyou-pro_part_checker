unit FmReadBarcode;

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
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  AdvGlowButton, CurvyControls, MemDS, DBAccess, Uni, Vcl.Buttons;

type
  TfrmReadBarcode = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    qryTemp: TUniQuery;
    qryFind: TUniQuery;
    CurvyPanel1: TCurvyPanel;
    btnSave: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbPart_status: TComboBox;
    pnlMessage: TPanel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    edPart_barcode: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSaveClick(Sender: TObject);

  private
    { Private declarations }
    procedure CnvPart( cPartBarcode : string;
                       var cPartModel : string;
                       var nPartId: integer ) ;

    procedure ShowStatus( cTxt : string; nDelay : integer; nColor : TColor ) ;
  public
    { Public declarations }
    partModel : String;
  end;

var
  frmReadBarcode: TfrmReadBarcode;
//  partModel : string;

implementation

{$R *.dfm}

uses DMModule, uFunction, FmMain;

procedure TfrmReadBarcode.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

// 0001K.Aun_Bed



procedure TfrmReadBarcode.ShowStatus( cTxt : string; nDelay : integer; nColor : TColor ) ;
begin
  pnlMessage.Visible := True;
  pnlMessage.Caption := cTxt ;
  pnlMessage.Color := nColor;
  application.ProcessMessages;

  sleep( nDelay * 1000 ) ;

  pnlMessage.color := clBtnFace;
  pnlMessage.Caption := '';
  pnlMessage.Visible := False;

end;

procedure TfrmReadBarcode.btnSaveClick(Sender: TObject);
var
  cPartModel, cPartBarcode, cPartStatus : string;
  nPartId : integer;
  fieldStation, fieldUserby : string;
  nStatusId : Integer;
begin

  cPartStatus := Trim(cbPart_status.Text);

  nStatusId := 0;

  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select * From tb_part_status where sts_name = ' + QuotedStr(cPartStatus)) ;
  qryTemp.Active := True;
  if (qryTemp.IsEmpty = True) and (cPartStatus <> Emptystr) then
  begin

    ShowStatus( 'สถานะไม่ถูกต้อง', 3, clYellow );

        edPart_barcode.text := '';
//        SpeedButton1Click(self);
        edPart_barcode.SetFocus;
  end
  else
    if cPartStatus = Emptystr then
      nStatusId := 0
    else
      nStatusId := qryTemp.FieldByName('sts_id').AsInteger;


    cPartBarcode := edPart_barcode.Text;

    CnvPart( cPartBarcode, cPartModel, nPartId ) ;

//    cPartModel := Trim(Copy(cPartBarcode, 1, pos('-',cPartBarcode) - 1 )) ;
//    nPartId    := StrToIntDef( Copy(cPartBarcode,Pos('-',cPartBarcode) + 1,10), 0) ;

//  cPartModel := Trim(Copy(cPartBarcode, 5, length(cPartBarcode) )) ;
//  nPartId    := StrToIntDef( Copy(cPartBarcode,1,4), 0) ;

    if cPartModel = partModel then
    begin
      qryFind.Sql.Clear;
      qryFind.Sql.Add('update tb_joborder ' +
        'set station' + inttostr(loginStation) +'_datetime = :datetime, ' +
            'station' + inttostr(loginStation) +'_status = :status, ' +
            'station' + inttostr(loginStation) +'_by = :userby ' +
        'Where part_model = ' + QuotedStr(cPartModel) +
         ' and part_id = ' + IntToStr(nPartId) ) ;
      qryFind.ParamByName('datetime').AsDateTime := now;
      qryFind.ParamByName('userby'  ).AsString   := empName;
      qryFind.ParamByName('status'  ).AsInteger   := nStatusId;
      qryFind.Execsql;

      with frmMain do
      begin
        qryPart_model.Refresh;
        qryPart_model.Locate('part_model;part_id',VarArrayOf([cPartModel,nPartId]),[loPartialKey]);

      end;


      edPart_barcode.Text := '';
      edPart_barcode.SetFocus;


      ShowStatus( 'บันทึกสำเร็จ', 2, clGreen ) ;

        edPart_barcode.text := '';
        edPart_barcode.SetFocus;



//      SpeedButton1Click(self);
//      self.Close;
    end;


end;

procedure TfrmReadBarcode.CnvPart(cPartBarcode: string; var cPartModel: string;
  var nPartId: integer);
var
  n : integer;
  cId : string;
  lLoop : boolean;
begin

  cPartModel := cPartBarcode ;
  nPartId := 0;
  cId := '' ;
  if Pos('-',cPartBarcode) > 0 then
  begin

    lLoop := true ;
    n := Length(cPartBarcode);
    while (n > 0) and (lLoop = true) do
    begin

      if cPartBarcode[n] = '-' then
      begin
        cPartmodel := Copy(cPartBarcode, 1, n - 1 );
        lLoop := False;
      end
      else
      begin
        cId := cPartBarcode[n] + cId ;
      end;

      n := n - 1;
    end;

    nPartId := StrToIntDef( cId, 0 ) ;

  end;

end;

procedure TfrmReadBarcode.FormCreate(Sender: TObject);
begin

  self.top :=  frmMain.PageMain.Top  + frmMain.Top + 10;
  self.left := frmMain.Left + frmMain.W7Panel1.Width + frmMain.CurvyPanel1.Width ;
  pnlMessage.Align := alBottom;
  pnlMessage.Visible := False;

  qryFind.Connection := dm.Main_Connection;
  qryTemp.Connection := dm.Main_Connection;
end;

procedure TfrmReadBarcode.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then SpeedButton1Click(self);
end;

procedure TfrmReadBarcode.FormShow(Sender: TObject);
begin
//  self.BorderStyle := bsNone;

  cbPart_status.Items.Clear;
  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select * From tb_part_status Order by sts_index asc ') ;
  qryTemp.Active := True;
  while not qryTemp.Eof do
  begin
    cbPart_status.Items.Add( qryTemp.FieldbyName('sts_name').AsString ) ;
    qryTemp.Next ;
  end;
  cbPart_status.Items.Add(' ');

  cbPart_status.ItemIndex := 0 ;

  SpeedButton1Click(self);

  edPart_barcode.SetFocus ;
end;

procedure TfrmReadBarcode.SpeedButton1Click(Sender: TObject);
var
  nPartId, nStatusId : Integer;
  cPartModel, cPartBarcode : string;
  dDateTime : TDateTime;
begin

//  Showmessage( partModel ) ;
//  Showmessage( cPartModel + ' - ' + inttostr(nPartId) + ' xxx ' + cPartBarcode ) ;

  GroupBox1.Caption := 'รายละเอียด Part Model : ' + partModel + '  ' +
        'สถานีที่ : ' + IntToStr(loginStation) ;

  Label1.Caption := '';
  Label2.Caption := '';
  Label3.Caption := '';
  Label4.Caption := '';
  Label5.Caption := '';
  Label6.Caption := '';
  Label7.Caption := '';
  Label8.Caption := '';
  Label9.Caption := '';
//  cbPart_status.Text := '';

  cPartBarcode := edPart_barcode.Text;


//  if Length(cPartBarcode) > 3 then
  begin

    CnvPart( cPartBarcode, cPartModel, nPartId ) ;


    if cPartModel <> partModel then
    begin
      if (cPartModel <> Emptystr) then
      begin
        ShowStatus('Part model ไม่ถูกต้อง.', 3, clRed);
        edPart_barcode.Text := '';
        edPart_barcode.SetFocus;
      end;
//      MessageDlg('Part model ไม่ถูกต้อง.', mterror, [TMsgDlgBtn.mbCancel],0) ;
    end
    else
    begin
      qryFind.Sql.Clear;
      qryFind.Sql.Add('Select * From tb_joborder ' +
        'Where part_model = ' + QuotedStr(cPartModel) +
         ' and part_id = ' + IntToStr(nPartId) ) ;
      qryFind.Active := True;
      if qryFind.IsEmpty = False then
      begin
        dDateTime := now ;
        Label1.Caption := 'Part ID : ' + IntToStr(nPartId) ;
        Label2.Caption := 'ชื่อเฟอร์นิเจอร์ : ' + qryFind.FieldByName('sub_assem').AsString ;
        Label3.Caption := 'ตำแหน่งชิ้นงาน : '   + qryFind.FieldByName('description').AsString ;
        Label4.Caption := 'ความหนา : '   + FormatFloat(',0.00',qryFind.FieldByName('part_thickness').AsFloat) ;
        Label5.Caption := 'ความกว้าง : ' + FormatFloat(',0.00',qryFind.FieldByName('part_width'    ).AsFloat) ;
        Label6.Caption := 'ความยาว : '   + FormatFloat(',0.00',qryFind.FieldByName('part_length'   ).AsFloat) ;
        Label7.Caption := 'ชื่อวัสดุ : ' + qryFind.FieldByName('part_matname'   ).AsString ;
        Label8.Caption := 'วันที่บันทึก : ' + dsp_date(dDateTime) ;
        Label9.Caption := 'บันทึกโดย : ' + empName ;

        nStatusId := qryFind.FieldByName('station' + inttostr(loginStation) + '_status').AsInteger ;

        btnSaveClick(self);

//        qryTemp.Sql.Clear;
//        qryTemp.Sql.Add('Select * From tb_part_status where sts_id = ' + inttostr(nStatusId)) ;
//        qryTemp.Active := True;
//        if qryTemp.IsEmpty = True then
//          cbPart_status.Text := ''
//        else
//          cbPart_status.Text := qryTemp.FieldByname('sts_name').AsString ;

      end
      else
      begin
        ShowStatus('ลำดับ Part# ไม่ถูกต้อง.', 3, clRed);
        edPart_barcode.Text := '';
        edPart_barcode.SetFocus;

      end;
    end;
  end;

end;

end.
