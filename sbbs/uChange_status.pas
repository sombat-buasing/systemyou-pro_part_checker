unit uChange_status;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Data.DB, MemDS, DBAccess, Uni, DateUtils, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmChange_status = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Label2: TLabel;
    cbStatus: TComboBox;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    qryTemp: TUniQuery;
    DBGrid1: TDBGrid;
    FDMemJob_order_status: TFDMemTable;
    FDMemJob_order_statuspart_selected: TBooleanField;
    FDMemJob_order_statuspart_model: TStringField;
    FDMemJob_order_statuspart_status: TStringField;
    FDMemJob_order_statuspart_send_date: TStringField;
    FDMemJob_order_statuspart_created_date: TStringField;
    FDMemJob_order_statuslate_days: TIntegerField;
    dsJob_order_status: TDataSource;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChange_status: TfrmChange_status;
  part_model : string;

implementation

{$R *.dfm}

uses DMModule, FmMain, uFunction;

procedure TfrmChange_status.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmChange_status.btnSaveClick(Sender: TObject);
var
  cPart_model, txText : String;
begin

  txText := cbStatus.Text;

  if MessageDlg( 'บันทีกข้อมูลชุดนี้.', mtConfirmation, [mbCancel, mbOK],0) = mrOK then
  begin

    FDMemJob_order_status.First;
    while not FDMemJob_order_status.Eof do
    begin
      cPart_Model := FDMemJob_order_statuspart_model.AsString;

      FDMemJob_order_status.Edit;
      FDMemJob_order_statuspart_status.AsString := txText;
      FDMemJob_order_status.Post;

      qryTemp.Sql.Clear;
      qryTemp.Sql.Add('update tb_joborder_h ' +
        'Set part_status = '  + QuotedStr( txText ) + ' ' +
//            'part_send_date = :send_date ' +
        'Where part_model = ' + QuotedStr( cPart_model ));
//    qryTemp.ParamByName('send_date').AsDate := dtDate_send.Date;
      qryTemp.ExecSQL;

      FDMemJob_order_status.Next;
    end;

    frmMain.ShowJoborder( part_model );

    MessageDlg('บันทึกข้อมูลเรียบร้อย',TMsgDlgType.mtInformation,[mbOK],0);


  end;
end;

procedure TfrmChange_status.FormCreate(Sender: TObject);
begin
  FDMemJob_order_status.Active := True;
  FDMemJob_order_status.EmptyDataSet;
end;

procedure TfrmChange_status.FormShow(Sender: TObject);
var
  n : integer ;
begin

  part_model := frmMain.FDMemJob_order.FieldByName('part_model').AsString;

  with frmMain.FDMemJob_order do
  begin

    BeginBatch;
    try

    first;
    while not Eof do
    begin
     if FieldByName('part_selected').AsBoolean = True then
      begin
        FDMemJob_order_status.Insert;
        FDMemJob_order_status.FieldByName('part_model'    ).AsString := FieldByName('part_model').AsString;
        FDMemJob_order_status.FieldByName('part_status'   ).AsString := FieldByName('part_status').AsString;
        FDMemJob_order_status.FieldByName('part_send_date').AsString := FieldByName('part_send_date').AsString;
        FDMemJob_order_status.FieldByName('part_created_date').AsString := FieldByName('part_created_date').AsString;
        FDMemJob_order_status.FieldByName('late_days'        ).AsString := FieldByName('late_days').AsString;
        FDMemJob_order_status.Post;
      end;

      Next;
    end;
    finally
      EndBatch;
    end;


    Locate('part_model',part_model,[loCaseInsensitive]);

  end;

  dsJob_order_status .DataSet    := FDMemJob_order_status;
  DBGrid1.DataSource := dsJob_order_status;

  n := 0 ;
  DBGrid1.Columns.Clear;
  ShowDBGrid(n,'part_model'    ,155, taLeftJustify,       'Part Model',  DBGrid1) ;
  ShowDBGrid(n,'part_status'   , 75, taLeftJustify,       'Status',      DBGrid1) ;
  ShowDBGrid(n,'part_send_date', 110, taLeftJustify,       'วันส่งงาน',      DBGrid1) ;
  ShowDBGrid(n,'part_created_date',90, taLeftJustify,      'วันที่นำเข้า',      DBGrid1) ;
  ShowDBGrid(n,'late_days', 80, taCenter,       'วัน',      DBGrid1) ;




end;

end.
