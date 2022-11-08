unit uShow_select;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  MemDS, DBAccess, Uni;

type
  TfrmShow_select = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    lbStatus_1: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    lbDateTime_1: TLabel;
    lbUserby_1: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    qryTemp: TUniQuery;
    Label2: TLabel;
    lbModel: TLabel;
    Label5: TLabel;
    lbDescription: TLabel;
    GroupBox2: TGroupBox;
    lbStatus_2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lbDatetime_2: TLabel;
    lbUserby_2: TLabel;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    lbStatus_3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbDatetime_3: TLabel;
    lbUserby_3: TLabel;
    Label14: TLabel;
    GroupBox4: TGroupBox;
    lbStatus_4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lbDatetime_4: TLabel;
    lbUserby_4: TLabel;
    Label17: TLabel;
    GroupBox5: TGroupBox;
    lbStatus_6: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lbDatetime_6: TLabel;
    lbUserby_6: TLabel;
    Label20: TLabel;
    GroupBox6: TGroupBox;
    lbStatus_5: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    lbDatetime_5: TLabel;
    lbUserby_5: TLabel;
    Label23: TLabel;
    GroupBox7: TGroupBox;
    lbStatus_7: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    lbDatetime_7: TLabel;
    lbUserby_7: TLabel;
    Label29: TLabel;
    GroupBox8: TGroupBox;
    lbStatus_8: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    lbDatetime_8: TLabel;
    lbUserby_8: TLabel;
    Label35: TLabel;
    GroupBox9: TGroupBox;
    lbStatus_9: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    lbDatetime_9: TLabel;
    lbUserby_9: TLabel;
    Label41: TLabel;
    GroupBox10: TGroupBox;
    lbStatus_10: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    lbDatetime_10: TLabel;
    lbUserby_10: TLabel;
    Label47: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShow_select: TfrmShow_select;

implementation

{$R *.dfm}

uses DMModule, FmMain, uFunction;

procedure TfrmShow_select.FormCreate(Sender: TObject);
begin
  qryTemp.Connection := dm.Main_Connection;
end;

procedure TfrmShow_select.FormShow(Sender: TObject);
var
  cPart_model : string;
  nPart_id    : integer ;
begin
  cPart_model := frmMain.qryPart_model.FieldByName('part_model').AsString;
  nPart_id    := frmMain.qryPart_model.FieldByName('part_id'   ).AsInteger;

  qryTemp.Sql.Clear;
  qryTemp.Sql.Add('Select jb.part_model, jb.part_id, jb.description, ' +
    'jb.station1_status, jb.station1_datetime, jb.station1_by, ' +
    'jb.station2_status, jb.station2_datetime, jb.station2_by, ' +
    'jb.station3_status, jb.station3_datetime, jb.station3_by, ' +
    'jb.station4_status, jb.station4_datetime, jb.station4_by, ' +
    'jb.station5_status, jb.station5_datetime, jb.station5_by, ' +

    'jb.station6_status, jb.station6_datetime, jb.station6_by, ' +
    'jb.station7_status, jb.station7_datetime, jb.station7_by, ' +
    'jb.station8_status, jb.station8_datetime, jb.station8_by, ' +
    'jb.station9_status, jb.station9_datetime, jb.station9_by, ' +
    'jb.station10_status, jb.station10_datetime, jb.station10_by, ' +

    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station1_status) as sts1_name, ' +
    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station2_status) as sts2_name, ' +
    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station3_status) as sts3_name, ' +
    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station4_status) as sts4_name, ' +
    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station5_status) as sts5_name, ' +

    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station6_status) as sts6_name, ' +
    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station7_status) as sts7_name, ' +
    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station8_status) as sts8_name, ' +
    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station9_status) as sts9_name, ' +
    '(select st.sts_name from tb_part_status st where st.sts_id = jb.station10_status) as sts10_name ' +


    'From tb_joborder jb ' +
    'Where part_model = ' + QuotedStr(cPart_model) +
     ' and part_id = ' + IntToStr(nPart_id) );
  qryTemp.Active := True;

  lbModel      .Caption := cPart_model ;
  lbDescription.Caption := qryTemp.FieldByName('description').AsString;

  lbStatus_1  .Caption := qryTemp.FieldByName('sts1_name'   ).AsString;
  lbUserby_1  .Caption := qryTemp.FieldByName('station1_by' ).AsString;
  lbDateTime_1.Caption := dsp_date( qryTemp.FieldByName('station1_datetime').AsDateTime);

  lbStatus_2  .Caption := qryTemp.FieldByName('sts2_name'   ).AsString;
  lbUserby_2  .Caption := qryTemp.FieldByName('station2_by' ).AsString;
  lbDateTime_2.Caption := dsp_date( qryTemp.FieldByName('station2_datetime').AsDateTime);

  lbStatus_3  .Caption := qryTemp.FieldByName('sts3_name'   ).AsString;
  lbUserby_3  .Caption := qryTemp.FieldByName('station3_by' ).AsString;
  lbDateTime_3.Caption := dsp_date( qryTemp.FieldByName('station3_datetime').AsDateTime);

  lbStatus_4  .Caption := qryTemp.FieldByName('sts4_name'   ).AsString;
  lbUserby_4  .Caption := qryTemp.FieldByName('station4_by' ).AsString;
  lbDateTime_4.Caption := dsp_date( qryTemp.FieldByName('station4_datetime').AsDateTime);

  lbStatus_5  .Caption := qryTemp.FieldByName('sts5_name'   ).AsString;
  lbUserby_5  .Caption := qryTemp.FieldByName('station5_by' ).AsString;
  lbDateTime_5.Caption := dsp_date( qryTemp.FieldByName('station5_datetime').AsDateTime);

  lbStatus_6  .Caption := qryTemp.FieldByName('sts6_name'   ).AsString;
  lbUserby_6  .Caption := qryTemp.FieldByName('station6_by' ).AsString;
  lbDateTime_6.Caption := dsp_date( qryTemp.FieldByName('station6_datetime').AsDateTime);

  lbStatus_7  .Caption := qryTemp.FieldByName('sts7_name'   ).AsString;
  lbUserby_7  .Caption := qryTemp.FieldByName('station7_by' ).AsString;
  lbDateTime_7.Caption := dsp_date( qryTemp.FieldByName('station7_datetime').AsDateTime);

  lbStatus_8  .Caption := qryTemp.FieldByName('sts8_name'   ).AsString;
  lbUserby_8  .Caption := qryTemp.FieldByName('station8_by' ).AsString;
  lbDateTime_8.Caption := dsp_date( qryTemp.FieldByName('station8_datetime').AsDateTime);

  lbStatus_9  .Caption := qryTemp.FieldByName('sts9_name'   ).AsString;
  lbUserby_9  .Caption := qryTemp.FieldByName('station9_by' ).AsString;
  lbDateTime_9.Caption := dsp_date( qryTemp.FieldByName('station9_datetime').AsDateTime);

  lbStatus_10  .Caption := qryTemp.FieldByName('sts10_name'   ).AsString;
  lbUserby_10  .Caption := qryTemp.FieldByName('station10_by' ).AsString;
  lbDateTime_10.Caption := dsp_date( qryTemp.FieldByName('station10_datetime').AsDateTime);

end;

end.
