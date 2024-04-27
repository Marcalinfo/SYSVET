unit FrameCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxLabel, cxTextEdit, cxDBEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxCustomTileControl, dxTileControl, cxGroupBox,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxBarBuiltInMenu, cxPC, cxMemo,
  dxGDIPlusClasses, System.ImageList, Vcl.ImgList, cxImageList, dximctrl, DMPrincipal;

type
  TfrmFrameCadCliente = class(TFrame)
    pnlCentroCliente: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Panel4: TPanel;
    cxGroupBox2: TcxGroupBox;
    dxTileControl1: TdxTileControl;
    cxGroupBox5: TcxGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxImageComboBox1: TcxImageComboBox;
    cxButton5: TcxButton;
    cxButton1: TcxButton;
    PgeCadastroComp: TcxPageControl;
    tabEndereco: TcxTabSheet;
    Panel9: TPanel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel17: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    tabObservacao: TcxTabSheet;
    Panel10: TPanel;
    cxLabel5: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel7: TcxLabel;
    cmbSexo: TcxImageComboBox;
    cxLabel8: TcxLabel;
    imgSexo: TcxImageList;
    imgFoto: TdxSpinImage;
    lblDadosComplementares: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure cmbSexoPropertiesChange(Sender: TObject);
  private
    procedure alteralabel(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmFrameCadCliente.alteralabel(Sender: TObject);
begin
  lblDadosComplementares.Caption := 'Dados Complementares : '+TcxButton( Sender ).Caption;
end;

procedure TfrmFrameCadCliente.cmbSexoPropertiesChange(Sender: TObject);
begin
   imgFoto.ItemIndex := cmbSexo.ItemIndex;
end;

procedure TfrmFrameCadCliente.cxButton1Click(Sender: TObject);
begin
  alteralabel(Sender);
  PgeCadastroComp.ActivePage := tabObservacao;
  tabObservacao.Show;
end;

procedure TfrmFrameCadCliente.cxButton5Click(Sender: TObject);
begin
  alteralabel(Sender);
  PgeCadastroComp.ActivePage := tabEndereco;
  tabEndereco.Show;
end;

procedure TfrmFrameCadCliente.FrameResize(Sender: TObject);
begin
  PgeCadastroComp.ActivePage := tabEndereco;
  lblDadosComplementares.Caption := 'Dados Complementares : '+tabEndereco.Hint;
end;

end.
