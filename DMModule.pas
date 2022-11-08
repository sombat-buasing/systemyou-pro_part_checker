unit DMModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, UniProvider,
  SQLServerUniProvider,Unit_SysCenter,Forms;

type
  TDM = class(TDataModule)
    SQLServerUniProvider1: TSQLServerUniProvider;
    Main_Connection: TUniConnection;
    QryComp: TUniQuery;
    dsComp: TUniDataSource;
    QryCompComp_Id: TIntegerField;
    QryCompComp_Code: TWideStringField;
    QryCompComp_Name_TH: TWideStringField;
    QryCompComp_Name_EN: TWideStringField;
    UniQuery2: TUniQuery;
    UniDataSource2: TUniDataSource;
    QrySetting: TUniQuery;
    dsSetting: TUniDataSource;
    QryJobOrder: TUniQuery;
    dsJobOrder: TUniDataSource;
    QrySYSCustList: TUniQuery;
    dsSYSCustList: TUniDataSource;
    ConnSysCustList: TUniConnection;
    QrySYSCustListCustID: TIntegerField;
    QrySYSCustListCust_Code: TStringField;
    QrySYSCustListCust_Name: TStringField;
    QrySYSCustListCust_ShortName: TStringField;
    QrySYSCustListConnectDBName: TStringField;
    QrySYSCustListCust_Add1: TStringField;
    QrySYSCustListCust_Add2: TStringField;
    QrySYSCustListCust_Add3: TStringField;
    QrySYSCustListCust_Province: TStringField;
    QrySYSCustListContact_Name: TStringField;
    QrySYSCustListContact_Tel: TStringField;
    QrySYSCustListActivate: TIntegerField;
    QryGetDateNow: TUniQuery;
    dsGetDateNow: TUniDataSource;
    QryGet1: TUniQuery;
    dsGet1: TUniDataSource;
    QryGet2: TUniQuery;
    dsGet2: TUniDataSource;
    QryGet3: TUniQuery;
    dsGet3: TUniDataSource;
    QryTemp1: TUniQuery;
    dsTemp1: TUniDataSource;
    QryTemp2: TUniQuery;
    dsTemp2: TUniDataSource;
    QryTemp3: TUniQuery;
    dsTemp3: TUniDataSource;
    QryExecute: TUniQuery;
    dsExecute: TUniDataSource;
    QrySettingCurr_Version: TFloatField;
    QrySettingLast_Update: TDateTimeField;
    QrySettingIsQTY_Show_Decimal: TStringField;
    QrySettingIsFIFO: TStringField;
    QrySettingIsReadyStart: TStringField;
    QrySetCust: TUniQuery;
    dsSetCust: TUniDataSource;
    UniQuery3: TUniQuery;
    UniDataSource3: TUniDataSource;
    QryCompComp_ShortName: TWideStringField;
    QryCompComp_TaxNo: TStringField;
    QryCompComp_Add1: TWideStringField;
    QryCompComp_Add2: TWideStringField;
    QryCompComp_Add3: TWideStringField;
    QryCompComp_Province: TWideStringField;
    QryCompComp_Post: TWideStringField;
    QryCompComp_Tel1: TStringField;
    QryCompComp_Tel2: TStringField;
    QryCompComp_Contact1: TWideStringField;
    QryCompComp_Contact2: TWideStringField;
    QryPart: TUniQuery;
    dsPart: TUniDataSource;
    QrySetCustCust_Id: TIntegerField;
    QrySetCustCust_Code: TWideStringField;
    QrySetCustCust_Name: TWideStringField;
    QrySetCustCust_ShortName: TWideStringField;
    QrySetCustCust_TaxNo: TStringField;
    QrySetCustCust_Add1: TWideStringField;
    QrySetCustCust_Add2: TWideStringField;
    QrySetCustCust_Add3: TWideStringField;
    QrySetCustCust_Province: TWideStringField;
    QrySetCustCust_Zipcode: TStringField;
    QrySetCustComp_Contact1: TWideStringField;
    QrySetCustComp_Contact2: TWideStringField;
    QrySetCustCust_Tel1: TWideStringField;
    QrySetCustCust_Tel2: TWideStringField;
    QrySetCustCust_Status: TWideStringField;
    QrySetCustCust_Type: TIntegerField;
    QrySetCustComp_Id: TIntegerField;
    QrySetSubcon: TUniQuery;
    dsSetSubcon: TUniDataSource;
    QrySetSubconSub_Id: TIntegerField;
    QrySetSubconSub_Code: TWideStringField;
    QrySetSubconSub_Name: TWideStringField;
    QrySetSubconSub_ShortName: TWideStringField;
    QrySetSubconSub_TaxNo: TStringField;
    QrySetSubconSub_Add1: TWideStringField;
    QrySetSubconSub_Add2: TWideStringField;
    QrySetSubconSub_Add3: TWideStringField;
    QrySetSubconSub_Province: TWideStringField;
    QrySetSubconSub_Zipcode: TStringField;
    QrySetSubconSub_Contact1: TWideStringField;
    QrySetSubconSub_Contact2: TWideStringField;
    QrySetSubconSub_Tel1: TWideStringField;
    QrySetSubconSub_Tel2: TWideStringField;
    QrySetSubconSub_Status: TWideStringField;
    QrySetSubconSub_Type: TIntegerField;
    QrySetSubconSub_GradePrice: TStringField;
    QrySetSubconComp_Id: TIntegerField;
    QryPartRId: TIntegerField;
    QryPartPart_ID: TIntegerField;
    QryPartSub_Assem: TWideStringField;
    QryPartDescription: TWideStringField;
    QryPartCopies: TIntegerField;
    QryPartPart_Thickness: TFloatField;
    QryPartPart_Width: TFloatField;
    QryPartPart_Legnth: TFloatField;
    QryPartPart_MatName: TWideStringField;
    QryPartPart_Model: TWideStringField;
    QryPartPart_Barcode: TWideStringField;
    QryPartPart_Status: TIntegerField;
    QryPartPart_Created_Date: TDateTimeField;
    QryPartPart_Created_By: TWideStringField;
    QryPartPart_Started_Date: TDateTimeField;
    QryPartPart_Started_By: TWideStringField;
    QryPartPart_Closed_Date: TDateTimeField;
    QryPartPart_Closed_By: TWideStringField;
    QryPartPart_Canceled_Date: TDateTimeField;
    QryPartPart_Canceled_By: TWideStringField;
    QryJobOrderPart_Model: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dsCompDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    // ---  Tb_His_Payment ---
    Pay_Id   : integer;
    PayCodeNo   : string;
    Pay_Type   : integer;
    Doc_RefID   : integer;
    Doc_RefNo   : string;
    Pay_By_Cash   : string;
    Pay_By_Transfer   : string;
    Pay_By_Cheque   : string;
    PayCash_: TDatetime;
    PayCash_Remark   : string;
    PayCash_Total   : real;
    PayTransfer_: TDatetime;
    PayTransfer_Remark   : string;
    PayTransfer_ToBack   : integer;
    PayTransfer_RefNo   : string;
    PayTransfer_Total   : real;
    PayCheque_ : TDatetime;
    PayCheque_Remark   : string;
    PayCheque_RefNo   : string;
    PayCheque_FromBank   : string;
    PayCheque_Total   : real;
    Receive_By_Name   : string;
    Receive_By_: TDatetime;
    Pay_Created_Id   : integer;
    Pay_Created_Name : string;
    Pay_Created_Date : TDatetime;
    Pay_LUpdate_Id   : integer;
    Pay_LUpdate_Name : string;
    Pay_LUpdate_Date : TDatetime;
    Pay_Cancel_Id    : integer;
    Pay_Cancel_Name  : string;
    Pay_Cancel_Date  : TDatetime;

    // ----------------------

  end;

var
    DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FmMain, FmSet_Company;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
    try
        Main_Connection.connected := false;
        {000 : เช็คติดต่อฐานข้อมูล ( Ping = true ) }
        if getInitial = true then
        begin
            // S002 : เช็ค tb_setting ว่า ช่อง Curr_version และ Last_Update = NULL หรือไม่
            // และ Tb_Set_Company มีมากกว่า 0 รายการหรือไม่
            dm.QryComp.Active := true;
            dm.QrySetting.Active := true;
        end else
        begin
            dm.Free;
            Application.Terminate;
            FrmMain.Free;
        end;

    except

    end;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  try
     dm.Main_Connection.Connected := false;
  except
  end;
end;

procedure TDM.dsCompDataChange(Sender: TObject; Field: TField);
begin
    if (QryComp.Active = true)and(QryComp.RecordCount>0) then
    begin
        if Assigned(FrmSet_Company) then
        begin
            with FrmSet_Company do
            begin
                FrmSet_Company.EditComp_Name_TH.Text := QryCompComp_Name_TH.AsString;
                EditComp_Name_EN.Text := QryCompComp_Name_EN.AsString;
                EditComp_ShortName.Text := QryCompComp_ShortName.AsString;
                EditComp_TaxNo.Text := QryCompComp_TaxNo.AsString;
                EditComp_Add1.Text := QryCompComp_Add1.AsString;
                EditComp_Add2.Text := QryCompComp_Add2.AsString;
                EditComp_Add3.Text := QryCompComp_Add3.AsString;
                EditComp_Province.Text := QryCompComp_Province.AsString;
                EditComp_Post.Text := QryCompComp_Post.AsString;
                EditComp_Tel1.Text := QryCompComp_Tel1.AsString;
                EditComp_Tel2.Text := QryCompComp_Tel2.AsString;
                EditComp_Contact1.Text := QryCompComp_Contact1.AsString;
                EditComp_Contact2.Text := QryCompComp_Contact2.AsString;

            end;
        end;
    end;
end;

end.
