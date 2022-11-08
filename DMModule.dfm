object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 579
  Width = 1024
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 56
    Top = 8
  end
  object Main_Connection: TUniConnection
    AutoCommit = False
    ProviderName = 'SQL Server'
    Database = '03PartCheckHollyWood'
    Username = 'sa'
    Server = '210.86.179.221'
    LoginPrompt = False
    Left = 168
    Top = 8
    EncryptedPassword = 
      'B9FF90FF8DFF9AFF89FF9AFF8DFF8CFF86FF8CFF8BFF9AFF92FFCDFFCEFFCAFF' +
      'C6FF'
  end
  object QryComp: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from Tb_Set_company'
      'order by comp_id')
    Left = 48
    Top = 128
    object QryCompComp_Id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Comp_Id'
      ReadOnly = True
      Required = True
    end
    object QryCompComp_Code: TWideStringField
      FieldName = 'Comp_Code'
    end
    object QryCompComp_Name_TH: TWideStringField
      FieldName = 'Comp_Name_TH'
      Size = 100
    end
    object QryCompComp_Name_EN: TWideStringField
      FieldName = 'Comp_Name_EN'
      Size = 100
    end
    object QryCompComp_ShortName: TWideStringField
      FieldName = 'Comp_ShortName'
    end
    object QryCompComp_TaxNo: TStringField
      FieldName = 'Comp_TaxNo'
      Size = 13
    end
    object QryCompComp_Add1: TWideStringField
      FieldName = 'Comp_Add1'
      Size = 100
    end
    object QryCompComp_Add2: TWideStringField
      FieldName = 'Comp_Add2'
      Size = 100
    end
    object QryCompComp_Add3: TWideStringField
      FieldName = 'Comp_Add3'
      Size = 100
    end
    object QryCompComp_Province: TWideStringField
      FieldName = 'Comp_Province'
      Size = 30
    end
    object QryCompComp_Post: TWideStringField
      FieldName = 'Comp_Post'
      Size = 5
    end
    object QryCompComp_Tel1: TStringField
      FieldName = 'Comp_Tel1'
    end
    object QryCompComp_Tel2: TStringField
      FieldName = 'Comp_Tel2'
    end
    object QryCompComp_Contact1: TWideStringField
      FieldName = 'Comp_Contact1'
      Size = 50
    end
    object QryCompComp_Contact2: TWideStringField
      FieldName = 'Comp_Contact2'
      Size = 50
    end
  end
  object dsComp: TUniDataSource
    DataSet = QryComp
    OnDataChange = dsCompDataChange
    Left = 104
    Top = 128
  end
  object UniQuery2: TUniQuery
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 24
    Top = 520
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniQuery2
    Left = 80
    Top = 520
  end
  object QrySetting: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from tb_setting')
    Left = 48
    Top = 176
    object QrySettingCurr_Version: TFloatField
      FieldName = 'Curr_Version'
    end
    object QrySettingLast_Update: TDateTimeField
      FieldName = 'Last_Update'
    end
    object QrySettingIsQTY_Show_Decimal: TStringField
      FieldName = 'IsQTY_Show_Decimal'
      Size = 1
    end
    object QrySettingIsFIFO: TStringField
      FieldName = 'IsFIFO'
      Size = 1
    end
    object QrySettingIsReadyStart: TStringField
      FieldName = 'IsReadyStart'
      Size = 1
    end
  end
  object dsSetting: TUniDataSource
    DataSet = QrySetting
    Left = 104
    Top = 176
  end
  object QryJobOrder: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'SELECT Part_Model'
      'FROM     Tb_JobOrder'
      'GROUP BY Part_Model')
    Left = 280
    Top = 128
    object QryJobOrderPart_Model: TWideStringField
      FieldName = 'Part_Model'
      Size = 50
    end
  end
  object dsJobOrder: TUniDataSource
    DataSet = QryJobOrder
    Left = 336
    Top = 128
  end
  object QrySYSCustList: TUniQuery
    Connection = ConnSysCustList
    SQL.Strings = (
      
        'SELECT CustID, Cust_Code, Cust_Name, Cust_ShortName, ConnectDBNa' +
        'me, Cust_Add1, Cust_Add2, Cust_Add3, Cust_Province, Contact_Name' +
        ', Contact_Tel, Activate'
      'FROM     Tb_CustList')
    Left = 240
    Top = 56
    object QrySYSCustListCustID: TIntegerField
      FieldName = 'CustID'
      ReadOnly = True
      Required = True
    end
    object QrySYSCustListCust_Code: TStringField
      FieldName = 'Cust_Code'
      Size = 30
    end
    object QrySYSCustListCust_Name: TStringField
      FieldName = 'Cust_Name'
      Size = 50
    end
    object QrySYSCustListCust_ShortName: TStringField
      FieldName = 'Cust_ShortName'
      Size = 30
    end
    object QrySYSCustListConnectDBName: TStringField
      FieldName = 'ConnectDBName'
      Size = 50
    end
    object QrySYSCustListCust_Add1: TStringField
      FieldName = 'Cust_Add1'
      Size = 50
    end
    object QrySYSCustListCust_Add2: TStringField
      FieldName = 'Cust_Add2'
      Size = 50
    end
    object QrySYSCustListCust_Add3: TStringField
      FieldName = 'Cust_Add3'
      Size = 50
    end
    object QrySYSCustListCust_Province: TStringField
      FieldName = 'Cust_Province'
      Size = 30
    end
    object QrySYSCustListContact_Name: TStringField
      FieldName = 'Contact_Name'
      Size = 50
    end
    object QrySYSCustListContact_Tel: TStringField
      FieldName = 'Contact_Tel'
      Size = 50
    end
    object QrySYSCustListActivate: TIntegerField
      FieldName = 'Activate'
    end
  end
  object dsSYSCustList: TUniDataSource
    DataSet = QrySYSCustList
    Left = 320
    Top = 56
  end
  object ConnSysCustList: TUniConnection
    AutoCommit = False
    ProviderName = 'SQL Server'
    Database = 'SYSCust_List'
    Username = 'sa'
    Server = '127.0.0.1'
    LoginPrompt = False
    Left = 168
    Top = 56
    EncryptedPassword = '99FF90FF8DFF9AFF89FF9AFF8DFF8CFF86FF8CFF8BFF9AFF92FF'
  end
  object QryGetDateNow: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 816
    Top = 24
  end
  object dsGetDateNow: TUniDataSource
    DataSet = QryGetDateNow
    Left = 896
    Top = 24
  end
  object QryGet1: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 168
    Top = 128
  end
  object dsGet1: TUniDataSource
    DataSet = QryGet1
    Left = 224
    Top = 128
  end
  object QryGet2: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 168
    Top = 176
  end
  object dsGet2: TUniDataSource
    DataSet = QryGet2
    Left = 224
    Top = 176
  end
  object QryGet3: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 168
    Top = 224
  end
  object dsGet3: TUniDataSource
    DataSet = QryGet3
    Left = 224
    Top = 224
  end
  object QryTemp1: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 168
    Top = 272
  end
  object dsTemp1: TUniDataSource
    DataSet = QryTemp1
    Left = 224
    Top = 272
  end
  object QryTemp2: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 168
    Top = 320
  end
  object dsTemp2: TUniDataSource
    DataSet = QryTemp2
    Left = 224
    Top = 320
  end
  object QryTemp3: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 168
    Top = 368
  end
  object dsTemp3: TUniDataSource
    DataSet = QryTemp3
    Left = 224
    Top = 368
  end
  object QryExecute: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 168
    Top = 416
  end
  object dsExecute: TUniDataSource
    DataSet = QryExecute
    Left = 224
    Top = 416
  end
  object QrySetCust: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from tb_set_customer')
    Left = 288
    Top = 224
    object QrySetCustCust_Id: TIntegerField
      FieldName = 'Cust_Id'
      ReadOnly = True
      Required = True
    end
    object QrySetCustCust_Code: TWideStringField
      Alignment = taCenter
      DisplayLabel = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
      FieldName = 'Cust_Code'
    end
    object QrySetCustCust_Name: TWideStringField
      DisplayLabel = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
      FieldName = 'Cust_Name'
      Size = 100
    end
    object QrySetCustCust_ShortName: TWideStringField
      Alignment = taCenter
      DisplayLabel = #3594#3639#3656#3629#3618#3656#3629
      FieldName = 'Cust_ShortName'
    end
    object QrySetCustCust_TaxNo: TStringField
      Alignment = taCenter
      DisplayLabel = #3648#3621#3586#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
      FieldName = 'Cust_TaxNo'
      Size = 13
    end
    object QrySetCustCust_Add1: TWideStringField
      DisplayLabel = #3607#3637#3656#3629#3618#3641#3656' 1'
      FieldName = 'Cust_Add1'
      Size = 100
    end
    object QrySetCustCust_Add2: TWideStringField
      DisplayLabel = #3607#3637#3656#3629#3618#3641#3656' 2'
      FieldName = 'Cust_Add2'
      Size = 100
    end
    object QrySetCustCust_Add3: TWideStringField
      DisplayLabel = #3607#3637#3656#3629#3618#3641#3656' 3'
      FieldName = 'Cust_Add3'
      Size = 100
    end
    object QrySetCustCust_Province: TWideStringField
      Alignment = taCenter
      DisplayLabel = #3592#3633#3591#3627#3623#3633#3604
      FieldName = 'Cust_Province'
      Size = 50
    end
    object QrySetCustCust_Zipcode: TStringField
      Alignment = taCenter
      DisplayLabel = #3652#3611#3619#3625#3603#3637#3618#3660
      FieldName = 'Cust_Zipcode'
      Size = 5
    end
    object QrySetCustComp_Contact1: TWideStringField
      DisplayLabel = #3612#3641#3657#3605#3636#3604#3605#3656#3629' 1'
      FieldName = 'Comp_Contact1'
      Size = 50
    end
    object QrySetCustComp_Contact2: TWideStringField
      DisplayLabel = #3612#3641#3657#3605#3636#3604#3605#3656#3629' 2'
      FieldName = 'Comp_Contact2'
      Size = 50
    end
    object QrySetCustCust_Tel1: TWideStringField
      DisplayLabel = #3648#3610#3629#3619#3660#3650#3607#3619'/Fax'
      FieldName = 'Cust_Tel1'
      Size = 50
    end
    object QrySetCustCust_Tel2: TWideStringField
      DisplayLabel = #3594#3656#3629#3591#3607#3634#3591#3605#3636#3604#3605#3656#3629
      FieldName = 'Cust_Tel2'
      Size = 50
    end
    object QrySetCustCust_Status: TWideStringField
      Alignment = taCenter
      DisplayLabel = #3626#3606#3634#3609#3632#3621#3641#3585#3588#3657#3634
      FieldName = 'Cust_Status'
      Size = 1
    end
    object QrySetCustCust_Type: TIntegerField
      FieldName = 'Cust_Type'
    end
    object QrySetCustComp_Id: TIntegerField
      FieldName = 'Comp_Id'
    end
  end
  object dsSetCust: TUniDataSource
    DataSet = QrySetCust
    Left = 344
    Top = 224
  end
  object UniQuery3: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from view_Order_ds order by order_id desc')
    Left = 48
    Top = 272
  end
  object UniDataSource3: TUniDataSource
    DataSet = UniQuery3
    Left = 104
    Top = 272
  end
  object QryPart: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'SELECT *'
      'FROM     Tb_JobOrder'
      '')
    Left = 280
    Top = 176
    object QryPartRId: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RId'
      ReadOnly = True
      Required = True
    end
    object QryPartPart_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Part #'
      FieldName = 'Part_ID'
    end
    object QryPartSub_Assem: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Sub Assembly'
      FieldName = 'Sub_Assem'
    end
    object QryPartDescription: TWideStringField
      FieldName = 'Description'
      Size = 30
    end
    object QryPartCopies: TIntegerField
      Alignment = taCenter
      FieldName = 'Copies'
    end
    object QryPartPart_Thickness: TFloatField
      DisplayLabel = 'Thickness'
      FieldName = 'Part_Thickness'
      DisplayFormat = '#,##0.0'
    end
    object QryPartPart_Width: TFloatField
      DisplayLabel = 'Width'
      FieldName = 'Part_Width'
      DisplayFormat = '#,##0.0'
    end
    object QryPartPart_Legnth: TFloatField
      DisplayLabel = 'Legnth'
      FieldName = 'Part_Legnth'
      DisplayFormat = '#,##0.0'
    end
    object QryPartPart_MatName: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Material Name'
      FieldName = 'Part_MatName'
      Size = 30
    end
    object QryPartPart_Model: TWideStringField
      DisplayLabel = 'Model'
      FieldName = 'Part_Model'
      Size = 50
    end
    object QryPartPart_Barcode: TWideStringField
      DisplayLabel = 'Barcode'
      FieldName = 'Part_Barcode'
      Size = 50
    end
    object QryPartPart_Status: TIntegerField
      DisplayLabel = #3626#3616#3634#3609#3632' Job'
      FieldName = 'Part_Status'
    end
    object QryPartPart_Created_Date: TDateTimeField
      DisplayLabel = #3623#3633#3609#3607#3637#3656#3626#3619#3657#3634#3591' Job'
      FieldName = 'Part_Created_Date'
    end
    object QryPartPart_Created_By: TWideStringField
      DisplayLabel = #3626#3619#3657#3634#3591' Job '#3650#3604#3618
      FieldName = 'Part_Created_By'
      Size = 50
    end
    object QryPartPart_Started_Date: TDateTimeField
      DisplayLabel = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3591#3634#3609
      FieldName = 'Part_Started_Date'
    end
    object QryPartPart_Started_By: TWideStringField
      DisplayLabel = #3612#3641#3657#3648#3619#3636#3656#3617#3591#3634#3609
      FieldName = 'Part_Started_By'
      Size = 50
    end
    object QryPartPart_Closed_Date: TDateTimeField
      DisplayLabel = #3623#3633#3609#3607#3637#3656' Close Job'
      FieldName = 'Part_Closed_Date'
    end
    object QryPartPart_Closed_By: TWideStringField
      DisplayLabel = #3611#3636#3604#3591#3634#3609#3650#3604#3618
      FieldName = 'Part_Closed_By'
      Size = 50
    end
    object QryPartPart_Canceled_Date: TDateTimeField
      DisplayLabel = #3623#3633#3609#3607#3637#3656#3618#3585#3648#3621#3636#3585' Job'
      FieldName = 'Part_Canceled_Date'
    end
    object QryPartPart_Canceled_By: TWideStringField
      DisplayLabel = #3618#3585#3648#3621#3636#3585' Job '#3650#3604#3618
      FieldName = 'Part_Canceled_By'
      Size = 50
    end
  end
  object dsPart: TUniDataSource
    DataSet = QryPart
    Left = 336
    Top = 176
  end
  object QrySetSubcon: TUniQuery
    Connection = Main_Connection
    SQL.Strings = (
      'select * from tb_set_subcon')
    Left = 288
    Top = 272
    object QrySetSubconSub_Id: TIntegerField
      FieldName = 'Sub_Id'
      ReadOnly = True
      Required = True
    end
    object QrySetSubconSub_Code: TWideStringField
      Alignment = taCenter
      DisplayLabel = #3619#3627#3633#3626' Sub'
      FieldName = 'Sub_Code'
    end
    object QrySetSubconSub_Name: TWideStringField
      DisplayLabel = #3594#3639#3656#3629' Sub'
      FieldName = 'Sub_Name'
      Size = 100
    end
    object QrySetSubconSub_ShortName: TWideStringField
      Alignment = taCenter
      DisplayLabel = #3594#3639#3656#3629#3618#3656#3629
      FieldName = 'Sub_ShortName'
    end
    object QrySetSubconSub_TaxNo: TStringField
      Alignment = taCenter
      DisplayLabel = #3648#3621#3586#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
      FieldName = 'Sub_TaxNo'
      Size = 13
    end
    object QrySetSubconSub_Add1: TWideStringField
      DisplayLabel = #3607#3637#3656#3629#3618#3641#3656' 1'
      FieldName = 'Sub_Add1'
      Size = 100
    end
    object QrySetSubconSub_Add2: TWideStringField
      DisplayLabel = #3607#3637#3656#3629#3618#3641#3656' 2'
      FieldName = 'Sub_Add2'
      Size = 100
    end
    object QrySetSubconSub_Add3: TWideStringField
      DisplayLabel = #3607#3637#3656#3629#3618#3641#3656' 3'
      FieldName = 'Sub_Add3'
      Size = 100
    end
    object QrySetSubconSub_Province: TWideStringField
      Alignment = taCenter
      DisplayLabel = #3592#3633#3591#3627#3623#3633#3604
      FieldName = 'Sub_Province'
      Size = 50
    end
    object QrySetSubconSub_Zipcode: TStringField
      Alignment = taCenter
      DisplayLabel = #3652#3611#3619#3625#3603#3637#3618#3660
      FieldName = 'Sub_Zipcode'
      Size = 5
    end
    object QrySetSubconSub_Contact1: TWideStringField
      DisplayLabel = #3612#3641#3657#3605#3636#3604#3605#3656#3629' 1'
      FieldName = 'Sub_Contact1'
      Size = 50
    end
    object QrySetSubconSub_Contact2: TWideStringField
      DisplayLabel = #3612#3641#3657#3605#3636#3604#3605#3656#3629' 2'
      FieldName = 'Sub_Contact2'
      Size = 50
    end
    object QrySetSubconSub_Tel1: TWideStringField
      DisplayLabel = #3648#3610#3629#3619#3660#3650#3607#3619'/FAX'
      FieldName = 'Sub_Tel1'
      Size = 50
    end
    object QrySetSubconSub_Tel2: TWideStringField
      DisplayLabel = #3594#3656#3629#3591#3607#3634#3591#3605#3636#3604#3605#3656#3629
      FieldName = 'Sub_Tel2'
      Size = 50
    end
    object QrySetSubconSub_Status: TWideStringField
      Alignment = taCenter
      DisplayLabel = #3626#3606#3634#3609#3632' Sub'
      FieldName = 'Sub_Status'
      Size = 1
    end
    object QrySetSubconSub_Type: TIntegerField
      Alignment = taCenter
      DisplayLabel = #3611#3619#3632#3648#3616#3607
      FieldName = 'Sub_Type'
    end
    object QrySetSubconSub_GradePrice: TStringField
      Alignment = taCenter
      DisplayLabel = #3648#3585#3619#3604#3619#3634#3588#3634
      FieldName = 'Sub_GradePrice'
      Size = 1
    end
    object QrySetSubconComp_Id: TIntegerField
      FieldName = 'Comp_Id'
    end
  end
  object dsSetSubcon: TUniDataSource
    DataSet = QrySetSubcon
    Left = 344
    Top = 272
  end
end
