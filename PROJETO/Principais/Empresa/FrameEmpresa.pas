unit FrameEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Menus, dxBarBuiltInMenu, cxMemo, cxDBEdit, cxPC,
  Vcl.StdCtrls, cxButtons, dxCustomTileControl, dxTileControl, cxGroupBox,
  dximctrl, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxLabel, cxTextEdit,
  Vcl.ExtCtrls, cxImage, DMPrincipal;

type
  TfrmFrameCadEmpresa = class(TFrame)
    pnlCentroCliente: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxImageComboBox1: TcxImageComboBox;
    cxLabel8: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGroupBox2: TcxGroupBox;
    dxTileControl1: TdxTileControl;
    cxGroupBox5: TcxGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
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
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    tabObservacao: TcxTabSheet;
    Panel10: TPanel;
    cxLabel5: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    lblDadosComplementares: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxImage1: TcxImage;
    cxButton2: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
