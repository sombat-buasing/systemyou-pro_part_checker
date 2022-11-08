unit uJob_order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtDlgs, Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, DateUtils;

type
  TfrmJob_order = class(TForm)
    Panel1: TPanel;
    edFilename: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    OpenTextFileDialog1: TOpenTextFileDialog;
    qryTemp: TUniQuery;
    qryFind: TUniQuery;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    dtDate_send: TDateTimePicker;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edFilenameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateJobHeader( cTxt : string ) ;
    function UpdateJobDetail( cTxt : string ) : string ;
  public
    { Public declarations }
  end;

var
  frmJob_order: TfrmJob_order;

implementation

{$R *.dfm}

uses DMModule, uFunction, FmMain;

procedure TfrmJob_order.Button1Click(Sender: TObject);
var
  cTxt, cResult : string;
  sourceFile : TextFile ;
  Buf2: array[1..4096] of Char;  { 4K buffer }
  n, nCount : integer;
begin
  if FileExists( edFilename.Text ) then
  begin
    if MessageDlg('คุณต้องการ Convert TextFile?' ,
                  mtConfirmation,[mbCancel,mbOK],0) = mrOK then
    begin

      AssignFile(sourceFile, edFilename.Text) ;
      System.SetTextBuf(sourceFile, Buf2);
      nCount := 0 ;
      Reset(sourceFile);
      while (NOT EOF(sourceFile)) do
      begin
        ReadLn(sourceFile,cTxt);
        nCount := nCount + 1;
      end;

      n := 0 ;
      ProgressBar1.Visible := True;
      ProgressBar1.Min := 0;
      ProgressBar1.Max := nCount ;
      ProgressBar1.Position := 0;

      Reset(sourceFile);
      ReadLn(sourceFile,cTxt);
      ReadLn(sourceFile,cTxt);

      UpdateJobHeader( cTxt ) ;

      Reset(sourceFile);
      ReadLn(sourceFile, cTxt ) ;
      while (NOT EOF(sourceFile)) do
      begin

        ProgressBar1.Position := n;

        ReadLn(sourceFile,cTxt);

        cResult := UpdateJobDetail( cTxt ) ;

        n := n + 1;
      end;

      CloseFile(sourceFile);

      frmMain.lbSearch_part_model.Text := '';
      frmMain.btnFindClick(self);

      ProgressBar1.Visible := False;

      MessageDlg('นำเข้าเรียบร้อย.!!!',TMsgDlgType.mtInformation, [mbOK],0);


    end;
  end;

end;

//Part #,Sub-Assembly,Description,Copies,Thickness,Width,Length(w/Grain),Material Type,Material Name,Can Rotate,Banding,Parent Name,Drilling,Model,DXF File,code

function TfrmJob_order.UpdateJobDetail(cTxt: string) : string;
var
  nPart_id, nCopies : integer;
  nPart_width, nPart_length, nPart_thickness : Double;
  cSub_assem, cDescription, cPart_matname, cPart_model, cMatt_type : string;
  cCanRotate, cBanding, cParent_name, cDrilling : String;
begin
  nPart_id      := StrtoInt( ReadText( cTxt ) );

  label1.caption := inttostr(nPart_id ) ;
  cSub_assem    := ReadText( cTxt) ;
  cDescription  := ReadText( cTxt ) ;
  nCopies       := StrtoInt( ReadText( cTxt ) );

  nPart_thickness := StrtoFloat( ReadText( cTxt ) );
  nPart_width     := StrtoFloat( ReadText( cTxt ) );
  nPart_length    := StrtoFloat( ReadText( cTxt ) );

  cMatt_type    := ReadText( cTxt ) ;
  cPart_matname := ReadText( cTxt ) ;

  cCanRotate    := ReadText( cTxt ) ;
  cBanding      := ReadText( cTxt ) ;
  cParent_Name  := ReadText( cTxt ) ;
  cDrilling     := ReadText( cTxt ) ;

  cPart_model   := ReadText( cTxt ) ;

  qryFind.Sql.Clear;
  qryFind.Sql.Add('Select * From tb_joborder ' +
    'Where part_model = ' + QuotedStr(cPart_model) +
     ' and part_id = ' + IntToStr(nPart_id) ) ;
  qryFind.Active := True;
  if qryFind.IsEmpty = True then
  begin
    qryTemp.Sql.Clear;
    qryTemp.Sql.Add('Insert Into tb_joborder ' +
      '( Part_model, Part_id, sub_assem, description, Part_Thickness, part_width, part_length, ' +
        'Part_MatName, part_status, copies ) ' +
      'Values ' +
      '(:part_model,:part_id,:sub_assem,:description,:Part_Thickness,:part_width,:part_length, ' +
       ':Part_MatName,:part_status,:copies ) ' ) ;
    qryTemp.ParamByName('part_model'  ).AsString  := cPart_model ;
    qryTemp.ParamByName('part_id'     ).AsInteger := nPart_id;
    qryTemp.ParamByName('sub_assem'   ).AsString  := cSub_assem ;
    qryTemp.ParamByName('description' ).AsString  := cDescription ;
    qryTemp.ParamByName('Part_Thickness' ).AsFloat  := nPart_thickness ;
    qryTemp.ParamByName('part_width'     ).AsFloat  := nPart_width;
    qryTemp.ParamByName('copies'         ).AsInteger  := nCopies ;
    qryTemp.ParamByName('part_length'    ).AsFloat  := nPart_length ;
    qryTemp.ParamByName('Part_MatName'   ).AsString  := cPart_matname ;
    qryTemp.ParamByName('Part_status'    ).AsInteger  := 1 ;
    qryTemp.ExecSQL;
  end
  else
  begin
    if qryFind.FieldByName('part_status').AsInteger = 1 then
    begin
      qryTemp.Sql.Clear;
      qryTemp.Sql.Add('Update tb_joborder ' +
        'Set sub_assem = :sub_assem, description = :description, part_thickness = :part_thickness, ' +
            'part_width = :part_width, part_length = :part_length, part_matname = :part_matname, ' +
            'part_status = :part_status, copies = :copies ' +
        'Where part_model = :part_model and part_id = :part_id ' );
      qryTemp.ParamByName('part_model'  ).AsString  := cPart_model ;
      qryTemp.ParamByName('part_id'     ).AsInteger := nPart_id;
      qryTemp.ParamByName('sub_assem'   ).AsString  := cSub_assem ;
      qryTemp.ParamByName('description' ).AsString  := cDescription ;
      qryTemp.ParamByName('Part_Thickness' ).AsFloat   := nPart_thickness ;
      qryTemp.ParamByName('copies'       ).AsInteger  := nCopies ;
      qryTemp.ParamByName('part_width'     ).AsFloat   := nPart_width;
      qryTemp.ParamByName('part_length'    ).AsFloat   := nPart_length ;
      qryTemp.ParamByName('Part_MatName'   ).AsString  := cPart_matname ;
      qryTemp.ParamByName('Part_status'    ).AsInteger := 1 ;
      qryTemp.ExecSQL;
    end;
  end;

  result := inttostr(nPart_id) + ' '  + cSub_assem + ' ' + cDescription + ' ' +
          inttostr(nCopies) + ' ' + FloatToStr(nPart_width) + ' ' + FloatToStr(nPart_length) + ' ' +
          cPart_matname + ' ' + cPart_model;


end;

procedure TfrmJob_order.UpdateJobHeader( cTxt : string ) ;
var
  nPart_id, nCopies : integer;
  nPart_width, nPart_length, nPart_thickness : Double;
  cSub_assem, cDescription, cPart_matname, cPart_model : string;
  cMatt_type, cCanRotate, cBanding, cParent_Name, cDrilling : string;
begin
  nPart_id      := StrtoInt( ReadText( cTxt ) );
  cSub_assem    := ReadText( cTxt) ;
  cDescription  := ReadText( cTxt ) ;
  nCopies       := StrtoInt( ReadText( cTxt ) );

  nPart_thickness := StrtoFloat( ReadText( cTxt ) );
  nPart_width     := StrtoFloat( ReadText( cTxt ) );
  nPart_length    := StrtoFloat( ReadText( cTxt ) );

  cMatt_type    := ReadText( cTxt ) ;
  cPart_matname := ReadText( cTxt ) ;

  cCanRotate    := ReadText( cTxt ) ;
  cBanding      := ReadText( cTxt ) ;
  cParent_Name  := ReadText( cTxt ) ;
  cDrilling     := ReadText( cTxt ) ;

  cPart_model   := ReadText( cTxt ) ;

  qryFind.Sql.Clear;
  qryFind.Sql.Add('Select * From tb_joborder_h ' +
    'Where part_model = ' + QuotedStr(cPart_model) );
  qryFind.Active := True;
  if qryFind.IsEmpty = True then
  begin
    qryTemp.Sql.Clear;
    qryTemp.Sql.Add('Insert into tb_joborder_h ' +
      '( part_model, Part_Created_Date, Part_Created_by, part_status, part_updated_Date, ' +
       ' Part_updated_by, part_send_date ) ' +
      'Values ' +
      '(:part_model,:Part_Created_Date,:Part_Created_by,:part_status,:part_updated_Date, ' +
       ':Part_updated_by,:part_send_date ) ' );
    qryTemp.ParamByName('part_model').AsString  := cPart_model ;
    qryTemp.ParamByName('Part_Created_Date' ).AsDateTime := now ;
    qryTemp.ParamByName('Part_Created_by'   ).AsString   := empname ;
    qryTemp.ParamByName('Part_updated_Date' ).AsDateTime := now ;
    qryTemp.ParamByName('Part_updated_by'   ).AsString   := empname ;
    qryTemp.ParamByName('part_status'       ).AsString   :=  '';
    qryTemp.ParamByName('Part_send_Date'    ).AsDateTime := dtDate_send.Date ;
    qryTemp.ExecSQL;
  end
  else
  begin
    qryTemp.Sql.Clear;
    qryTemp.Sql.Add('update tb_joborder_h ' +
      'Set Part_updated_Date = :Part_updated_Date, Part_updated_by = :Part_updated_by, ' +
          'Part_send_date = :part_send_date ' +
      'Where part_model = :part_model ') ;
    qryTemp.ParamByName('part_model'        ).AsString   := cPart_model ;
    qryTemp.ParamByName('Part_updated_Date' ).AsDateTime := now ;
    qryTemp.ParamByName('Part_updated_by'   ).AsString   := empname ;
    qryTemp.ParamByName('Part_send_Date'    ).AsDateTime := dtDate_send.Date ;
    qryTemp.ExecSQL;
  end;
end;


procedure TfrmJob_order.edFilenameChange(Sender: TObject);
var
  cTxt, cResult : string;
  sourceFile : TextFile ;
  Buf2: array[1..4096] of Char;  { 4K buffer }
  n, nCount : integer;


  nPart_id, nCopies : integer;
  nPart_width, nPart_length, nPart_thickness : Double;
  cSub_assem, cDescription, cPart_matname, cPart_model : string;
  cMatt_type, cCanRotate, cBanding, cParent_Name, cDrilling : string;
begin

  if FileExists( edFilename.Text ) then
  begin
    AssignFile(sourceFile, edFilename.Text) ;
    System.SetTextBuf(sourceFile, Buf2);
    Reset(sourceFile);
    ReadLn(sourceFile,cTxt);
    ReadLn(sourceFile,cTxt);
    CloseFile(sourceFile);

    nPart_id      := StrtoInt( ReadText( cTxt ) );
    cSub_assem    := ReadText( cTxt) ;
    cDescription  := ReadText( cTxt ) ;
    nCopies       := StrtoInt( ReadText( cTxt ) );

    nPart_thickness := StrtoFloat( ReadText( cTxt ) );
    nPart_width     := StrtoFloat( ReadText( cTxt ) );
    nPart_length    := StrtoFloat( ReadText( cTxt ) );

    cMatt_type    := ReadText( cTxt ) ;
    cPart_matname := ReadText( cTxt ) ;

    cCanRotate    := ReadText( cTxt ) ;
    cBanding      := ReadText( cTxt ) ;
    cParent_Name  := ReadText( cTxt ) ;
    cDrilling     := ReadText( cTxt ) ;

    cPart_model   := ReadText( cTxt ) ;

    qryFind.Sql.Clear;
    qryFind.Sql.Add('Select * From tb_joborder_h ' +
      'Where part_model = ' + QuotedStr(cPart_model) );
    qryFind.Active := True;
    if (qryFind.IsEmpty = True) then
    begin
      dtDate_send.Date := date + 7;
    end
    else
    begin
      if YearOf(qryFind.FieldByName('part_send_date').AsDateTime) < 2000 then
        dtDate_send.Date := date
      else
        dtDate_send.Date := qryFind.FieldByName('part_send_date').AsDateTime;
    end;

  end;
end;

procedure TfrmJob_order.FormCreate(Sender: TObject);
begin
  qryFind.Connection := dm.Main_Connection;
  qryTemp.Connection := dm.Main_Connection;
end;

procedure TfrmJob_order.FormShow(Sender: TObject);
begin
  dtDate_send.Date := date;
end;

procedure TfrmJob_order.SpeedButton1Click(Sender: TObject);
begin
  if OpenTextFileDialog1.Execute then
    edFilename.Text := OpenTextFileDialog1.FileName;

end;

end.
