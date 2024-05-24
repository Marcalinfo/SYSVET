unit Ufuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxLabel, cxTextEdit, cxDBEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  TFuncoesGerais = class

  private
    { Private declarations }
  public
    { Public declarations }
    function FCAlteraDadosTab(sTitulo, sDescricao : String; oButton : TcxButton ) : String;
  end;

implementation

{ TFuncoesGerais }

function TFuncoesGerais.FCAlteraDadosTab(sTitulo, sDescricao: String;
  oButton: TcxButton): String;
begin

end;

end.
