unit DMPrincipal;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls,
  cxImageList, cxGraphics, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TPrincipalDM = class(TDataModule)
    img16: TcxImageList;
    img24: TcxImageList;
    img32: TcxImageList;
    FDConnectionSYSVET: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qryEmpresas: TFDQuery;
    dtsEmpresas: TDataSource;
    upsEmpresas: TFDUpdateSQL;
    qryEmpresasID: TIntegerField;
    qryEmpresasEMP_RAZ: TStringField;
    qryEmpresasEMP_FAN: TStringField;
    qryEmpresasEMP_CPFORCNPJ: TStringField;
    qryEmpresasEMP_TEL_TIP: TIntegerField;
    qryEmpresasEMP_TEL_NUM: TStringField;
    qryEmpresasEMP_ENDERECO: TStringField;
    qryEmpresasEMP_BAIRRO: TStringField;
    qryEmpresasEMP_NUMERO: TIntegerField;
    qryEmpresasEMP_ESTADO: TStringField;
    qryEmpresasEMP_UF: TStringField;
    qryEmpresasEMP_CIDADE: TStringField;
    qryEmpresasEMP_COMPLEMENTO: TStringField;
    qryEmpresasEMP_REFERENCIA: TStringField;
    qryEmpresasDATA_CAD: TSQLTimeStampField;
    qryEmpresasDATA_ALT: TSQLTimeStampField;
    qryEmpresasUSUARIO: TStringField;
    procedure qryEmpresasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalDM: TPrincipalDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TPrincipalDM.qryEmpresasNewRecord(DataSet: TDataSet);
begin
  qryEmpresasEMP_RAZ.AsString := '';
  qryEmpresasEMP_FAN.AsString := '';
  qryEmpresasEMP_CPFORCNPJ.AsString := '';
  qryEmpresasEMP_TEL_TIP.AsInteger := 0;
  qryEmpresasEMP_TEL_NUM.AsString := '';

end;

end.
