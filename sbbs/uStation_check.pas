unit uStation_check;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, MemDS,
  DBAccess, Uni, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmStation_check = class(TForm)
    FDMemTable: TFDMemTable;
    qryTemp: TUniQuery;
    dbgDisplay: TDBGrid;
    Panel1: TPanel;
    Label12: TLabel;
    FDMemTablepart_matname: TStringField;
    FDMemTablestation1: TStringField;
    FDMemTablestation2: TStringField;
    dsDisplay: TDataSource;
    FDMemTablestation3: TStringField;
    FDMemTablestation4: TStringField;
    FDMemTablestation5: TStringField;
    FDMemTablestation6: TStringField;
    FDMemTablestation7: TStringField;
    FDMemTablestation8: TStringField;
    FDMemTablestation9: TStringField;
    FDMemTablestation10: TStringField;
    FDMemTablematt_count: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function InsCount( nInt : integer ) : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStation_check: TfrmStation_check;

implementation

{$R *.dfm}

uses DMModule, FmMain, uFunction;

function TfrmStation_check.InsCount( nInt : integer ) : string;
begin
  if nInt = 0 then
    result := '-'
  else
    result := IntToStr(nInt) ;
end;

procedure TfrmStation_check.FormCreate(Sender: TObject);
begin
  qryTemp   .Connection := dm.Main_Connection;
end;

procedure TfrmStation_check.FormShow(Sender: TObject);
var
  cModel : string;
  n : integer;
begin
  cModel := frmMain.FDMemJob_order.FieldByName('part_model').AsString;
  label12.Caption := 'MODEL NO : ' + cModel;

  FDMemTable.Active := True;
  FDMemTable.EmptyDataSet;


  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select jb1.part_matname, count(*) as matt_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station1_status <> 0))  ) as st1_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station2_status <> 0))  ) as st2_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station3_status <> 0))  ) as st3_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station4_status <> 0))  ) as st4_count,' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station4_status <> 0))  ) as st4_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station5_status <> 0))  ) as st5_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station6_status <> 0))  ) as st6_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station7_status <> 0))  ) as st7_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station8_status <> 0))  ) as st8_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station9_status <> 0))  ) as st9_count, ' +

    '(Select Count(*) From tb_joborder jb2 where jb2.part_model = ' + QuotedStr(cModel) +
     ' and jb2.part_matname = jb1.part_matname ' +
     ' and ((jb2.station10_status <> 0))  ) as st10_count ' +

    'From tb_joborder jb1 ' +
    'Where jb1.part_model = ' + QuotedStr(cModel) + ' ' +
    'Group by jb1.part_matname ' );
  qryTemp.Active := True;
  while not qryTemp.Eof do
  begin
    FDMemTable.Insert;
    FDMemTable.FieldByName('part_matname').Asstring :=  qryTemp.FieldByName('part_matname').AsString;
    FDMemTable.FieldByName('matt_count'  ).AsInteger :=  qryTemp.FieldByName('matt_count').AsInteger;

    FDMemTable.FieldByName('station1').Asstring := InsCount(qryTemp.FieldByName('st1_count').AsInteger) ;
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);
    FDMemTable.FieldByName('station2').Asstring :=  InsCount(qryTemp.FieldByName('st2_count').AsInteger) ;
//    + '/' +
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);
    FDMemTable.FieldByName('station3').Asstring :=  InsCount(qryTemp.FieldByName('st3_count').AsInteger);
//     + '/' +
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);
    FDMemTable.FieldByName('station4').Asstring :=  InsCount(qryTemp.FieldByName('st4_count').AsInteger);
//     + '/' +
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);
    FDMemTable.FieldByName('station5').Asstring :=  InsCount(qryTemp.FieldByName('st5_count').AsInteger);
//     + '/' +
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);
    FDMemTable.FieldByName('station6').Asstring :=  InsCount(qryTemp.FieldByName('st6_count').AsInteger);
//     + '/' +
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);
    FDMemTable.FieldByName('station7').Asstring :=  InsCount(qryTemp.FieldByName('st7_count').AsInteger);
//     + '/' +
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);
    FDMemTable.FieldByName('station8').Asstring :=  InsCount(qryTemp.FieldByName('st8_count').AsInteger);
//     + '/' +
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);
    FDMemTable.FieldByName('station9').Asstring :=  InsCount(qryTemp.FieldByName('st9_count').AsInteger);
//     + '/' +
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);
    FDMemTable.FieldByName('station10').Asstring :=  InsCount(qryTemp.FieldByName('st10_count').AsInteger);
//     + '/' +
//                                                    IntToStr(qryTemp.FieldByName('matt_count').AsInteger);

    FDMemTable.Post;
    qryTemp.Next;
  end;

  dsDisplay.DataSet :=  FDMemTable ;
  dbgDisplay.DataSource := dsDisplay ;

  TFloatField(FDMemTable.FieldByName('matt_count')).DisplayFormat := ',0 ';
//  TFloatField(FDMemTable.FieldByName('station1'  )).DisplayFormat := ',0 ';

  n := 0 ;
  dbgDisplay.Columns.Clear;
  ShowDBGrid(n,'part_matname', 200, taLeftJustify,'Material Name',dbgDisplay) ;
  ShowDBGrid(n,'matt_count',   100, taCenter,     'Summary'      ,dbgDisplay) ;

  ShowDBGrid(n,'station1',      90, taCenter,ReadStation('ST1-Name','CNC')       ,dbgDisplay) ;
  ShowDBGrid(n,'station2',      90, taCenter,ReadStation('ST2-Name','Edge&Drill'),dbgDisplay) ;
  ShowDBGrid(n,'station3',      80, taCenter,ReadStation('ST3-Name','Assembly'  ),dbgDisplay) ;
  ShowDBGrid(n,'station4',      80, taCenter,ReadStation('ST4-Name','Sending'  ),dbgDisplay) ;
  ShowDBGrid(n,'station5',      80, taCenter,ReadStation('ST5-Name','ʶҹ� 5'  ),dbgDisplay) ;
  ShowDBGrid(n,'station6',      80, taCenter,ReadStation('ST6-Name','Membrane'  ),dbgDisplay) ;
  ShowDBGrid(n,'station7',      80, taCenter,ReadStation('ST7-Name','Carpenter'  ),dbgDisplay) ;
  ShowDBGrid(n,'station8',      80, taCenter,ReadStation('ST8-Name','ʶҹ� 8'  ),dbgDisplay) ;
  ShowDBGrid(n,'station9',      80, taCenter,ReadStation('ST9-Name','Packing'  ),dbgDisplay) ;
  ShowDBGrid(n,'station10',     80, taCenter,ReadStation('ST10-Name','Delivery'  ),dbgDisplay) ;

end;

end.
