unit FrameCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxLabel, cxTextEdit, dxCustomTileControl, dxTileControl, cxGroupBox,
  DMPrincipal, FrameCadCliente;

type
  TfrmFrameCadastro = class(TFrame)
    pnlCadastro: TPanel;
    pnlCrud: TPanel;
    btnFerramentas: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
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
  private
    { Private declarations }
  public
    { Public declarations }

  end;

implementation

{$R *.dfm}

{ TfrmFrameCadastro }

end.
