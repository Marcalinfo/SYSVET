unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxButtons, DMPrincipal, cxControls,
  cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, dxBarBuiltInMenu, cxPC,
  cxGroupBox, dxCustomTileControl, dxTileControl,
  FrameCadastro, FrameCadCliente, FrameEmpresa;

type
  TfrmPadraoInicial = class(TForm)
    pnlCentro: TPanel;
    pnlMenu: TPanel;
    pnlTopo: TPanel;
    cxButton1: TcxButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    lblUser: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Image2: TImage;
    dxTileControl1: TdxTileControl;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    pnlAgenda: TPanel;
    cxButton2: TcxButton;
    pnlAnimais: TPanel;
    cxButton4: TcxButton;
    pnlCliente: TPanel;
    cxButton3: TcxButton;
    pnlEstoque: TPanel;
    cxButton7: TcxButton;
    pnlFinanceiro: TPanel;
    cxButton5: TcxButton;
    pnlFrenteCaixa: TPanel;
    cxButton6: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxButton9: TcxButton;
    cxButton8: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frmFrameCadastro   : TfrmFrameCadastro;
    frmFrameCadCliente : TfrmFrameCadCliente;
    frmFrameCadEmpresa : TfrmFrameCadEmpresa;

    procedure PRCCriaFrame(sTitulo : String; iModulo : integer);
    procedure PRCCriaFrameCadastro(iModulo : integer);
    procedure PRCFechaFrames(Sender: TObject);
  end;

var
  frmPadraoInicial: TfrmPadraoInicial;

const
  ModuloCliente = 0;
  ModuloAnimais = 1;
  ModuloEmpresa = 2;

implementation

{$R *.dfm}

procedure TfrmPadraoInicial.cxButton1Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TfrmPadraoInicial.cxButton3Click(Sender: TObject);
begin
  if not Assigned(frmFrameCadCliente) then
  begin
    PRCFechaFrames( Sender );
    PRCCriaFrame('Cliente',0);
  end;
end;

procedure TfrmPadraoInicial.cxButton9Click(Sender: TObject);
begin
  if not Assigned(frmFrameCadEmpresa) then
  begin
    PRCFechaFrames( Sender );
    PRCCriaFrame('Empresa',2);
  end;
end;

procedure TfrmPadraoInicial.FormCreate(Sender: TObject);
var
hwndHandle : THANDLE;
hMenuHandle : HMenu;
begin
  hwndHandle := Self.Handle;
  if (hwndHandle <> 0) then begin
    hMenuHandle := GetSystemMenu(hwndHandle, FALSE);
  if (hMenuHandle <> 0) then
    DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
  end;
  frmFrameCadastro := FrameCadastro.TfrmFrameCadastro.Create(self);
end;

procedure TfrmPadraoInicial.PRCCriaFrameCadastro(iModulo : integer);
begin
  if iModulo = ModuloCliente then
  begin
    with frmFrameCadCliente do
    begin
      ActiveControl := frmFrameCadastro.pnlCentroCadastro;
      parent := frmFrameCadastro.pnlCentroCadastro;
      Align := alClient;
    end;
  end;

  if iModulo = ModuloEmpresa then
  begin
    with frmFrameCadEmpresa do
    begin
      ActiveControl := frmFrameCadastro.pnlCentroCadastro;
      parent := frmFrameCadastro.pnlCentroCadastro;
      Align := alClient;
    end;
  end;
end;

procedure TfrmPadraoInicial.PRCFechaFrames(Sender: TObject);
begin
  if Assigned(frmFrameCadCliente) then
    FreeAndNil(frmFrameCadCliente);

  if Assigned(frmFrameCadEmpresa) then
    FreeAndNil(frmFrameCadEmpresa);

  if Assigned(frmFrameCadastro) then
    FreeAndNil(frmFrameCadastro);

  frmFrameCadastro := FrameCadastro.TfrmFrameCadastro.Create(self);
end;

procedure TfrmPadraoInicial.PRCCriaFrame(sTitulo : String; iModulo : integer);
begin
  with frmFrameCadastro do
  begin
    ActiveControl := pnlCentro;
    parent := pnlCentro;
    Align := alClient;

    btnTitulo.Caption := sTitulo;
    btnCancelar.OnClick := PRCFechaFrames;

    if iModulo = ModuloCliente then
    begin
      frmFrameCadCliente := FrameCadCliente.TfrmFrameCadCliente.Create(self);
      PRCCriaFrameCadastro(iModulo);
    end;

    if iModulo = ModuloEmpresa then
    begin
      frmFrameCadEmpresa := FrameEmpresa.TfrmFrameCadEmpresa.Create(self);
      PRCCriaFrameCadastro(iModulo);
    end;

  end;


end;

end.
