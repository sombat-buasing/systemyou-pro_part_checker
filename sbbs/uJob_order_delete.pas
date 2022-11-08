unit uJob_order_delete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmJob_order_delete = class(TForm)
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    edPart_model: TLabeledEdit;
    btnDelete: TButton;
    qryTemp: TUniQuery;
    qryFind: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPart_modelChange(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJob_order_delete: TfrmJob_order_delete;

implementation

{$R *.dfm}

uses DMModule, FmMain;

procedure TfrmJob_order_delete.btnDeleteClick(Sender: TObject);
var
  cPart_model : string;
begin

  cPart_model := edPart_model.Text ;

  if cPart_model = Emptystr then cPart_model := ' ' ;

  if MessageDlg('ต้องการลบข้อมูลของ ' + cPart_model + '?',
           TMsgDlgType.mtConfirmation,[mbOK,mbCancel],0) = mrOK then
  begin
    qryTemp.Sql.Clear;
    qryTemp.Sql.Add('Delete From tb_joborder_h ' +
      'where part_model = ' + QuotedStr(cPart_model) ) ;
    qryTemp.ExecSQL;

    qryTemp.Sql.Clear;
    qryTemp.Sql.Add('Delete From tb_joborder ' +
      'where part_model = ' + QuotedStr(cPart_model) ) ;
    qryTemp.ExecSQL;

    edPart_model.Text := '';

    FrmMain.ShowJobOrder('');

    MessageDlg('ลบขอ้มูลของ ' + cPart_model + ' เรียบร้อยแล้ว. ',TMsgDlgType.mtInformation,[mbOK],0);

  end;

end;

procedure TfrmJob_order_delete.edPart_modelChange(Sender: TObject);
var
  cPart_model : string;
begin

  cPart_model := edPart_model.Text;

  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select * From tb_joborder_h ' +
    'Where part_model = ' + QuotedStr(cPart_model) ) ;
  qryTemp.Active := True;
  if qryTemp.IsEmpty = True then
  begin
    btnDelete.Enabled := False;
  end
  else
  begin
    btnDelete.Enabled := True ;
  end;

end;

procedure TfrmJob_order_delete.FormCreate(Sender: TObject);
begin
  qryFind.Connection := dm.Main_Connection;
  qryTemp.Connection := dm.Main_Connection;
end;

procedure TfrmJob_order_delete.FormShow(Sender: TObject);
begin
  edPart_model.text := FrmMain.qryJob_order.FieldByName('part_model').AsString;
end;

end.
