unit uRead_barcode_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.ExtCtrls, AdvGlowButton, Vcl.Buttons, CurvyControls;

type
  TfrmReadBarcode2 = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    pnReadBarcode: TCurvyPanel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    SpeedButton1: TSpeedButton;
    btnLogin: TAdvGlowButton;
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
    Panel1: TPanel;
    edPart_barcode: TLabeledEdit;
    AdvGlowButton1: TAdvGlowButton;
    Panel2: TPanel;
    qryTemp: TUniQuery;
    qryFind: TUniQuery;
    procedure ForCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    partModel : String;
  end;

var
  frmReadBarcode2: TfrmReadBarcode2;

implementation

{$R *.dfm}

uses DMModule;

procedure TfrmReadBarcode2.ForCreate(Sender: TObject);
begin
  qryFind.Connection := dm.Main_Connection;
  qryTemp.Connection := dm.Main_Connection;
end;

end.
