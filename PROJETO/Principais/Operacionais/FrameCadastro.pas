unit FrameCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxLabel, cxTextEdit, dxCustomTileControl, dxTileControl, cxGroupBox;

type
  TfrmFrameCadastro = class(TFrame)
    pnlCadastro: TPanel;
    pnlCrud: TPanel;
    btnFerramentas: TcxButton;
    btnIncluir: TcxButton;
    btnAlterar: TcxButton;
    btnExcluir: TcxButton;
    btnImprimir: TcxButton;
    Panel2: TPanel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    btnTitulo: TcxLabel;
    cxButton3: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    dxTileControl2: TdxTileControl;
    cxGroupBox4: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Panel4: TPanel;
    cxGroupBox2: TcxGroupBox;
    dxTileControl1: TdxTileControl;
    cxGroupBox5: TcxGroupBox;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    pnlCentroCadastro: TPanel;
    Panel7: TPanel;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

implementation

uses
  DMPrincipal, FrameCadCliente, FrameEmpresa;

{$R *.dfm}

{ TfrmFrameCadastro }

procedure TfrmFrameCadastro.btnIncluirClick(Sender: TObject);
var
  frmFrameCadCliente : TfrmFrameCadCliente;
  frmFrameCadEmpresa : TfrmFrameCadEmpresa;
begin
  if Assigned(frmFrameCadEmpresa) then
  begin
    with PrincipalDM do
    begin
      qryEmpresas.Insert;
    end;
  end;
end;

procedure TfrmFrameCadastro.btnSalvarClick(Sender: TObject);
var
  frmFrameCadCliente : TfrmFrameCadCliente;
  frmFrameCadEmpresa : TfrmFrameCadEmpresa;
begin
  if Assigned(frmFrameCadEmpresa) then
  begin
    with PrincipalDM do
    begin
      qryEmpresas.post;
    end;
  end;
end;

end.
