program ProPartCheckerHollywood;

uses
  Vcl.Forms,
  DMModule in 'DMModule.pas' {DM: TDataModule},
  FmMain in 'FmMain.pas' {FrmMain},
  Unit_SysCenter in '..\..\SysUnit\Unit_SysCenter.pas',
  FmSet_Company in 'FmSet_Company.pas' {FrmSet_Company},
  FmSet_Customer in 'FmSet_Customer.pas' {FrmSet_Customer},
  FmSet_Employee in 'FmSet_Employee.pas' {FrmSet_Employee},
  FmMSGDLG in '..\..\SysUnit\FmMSGDLG.pas' {FrmMSGDLG},
  FmReadBarcode in 'FmReadBarcode.pas' {frmReadBarcode},
  uPrint_barcode in 'sbbs\uPrint_barcode.pas' {frmPrint_barcode},
  uFunction in 'sbbs\uFunction.pas',
  uJob_order in 'sbbs\uJob_order.pas' {frmJob_order},
  uShow_select in 'sbbs\uShow_select.pas' {frmShow_select},
  uJob_order_delete in 'sbbs\uJob_order_delete.pas' {frmJob_order_delete},
  uRead_barcode_2 in 'sbbs\uRead_barcode_2.pas' {frmReadBarcode2},
  uChange_status in 'sbbs\uChange_status.pas' {frmChange_status},
  uStation_check in 'sbbs\uStation_check.pas' {frmStation_check};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TfrmShow_select, frmShow_select);
  Application.CreateForm(TfrmJob_order_delete, frmJob_order_delete);
  Application.CreateForm(TfrmReadBarcode2, frmReadBarcode2);
  Application.CreateForm(TfrmStation_check, frmStation_check);
  Application.Run;
end.
