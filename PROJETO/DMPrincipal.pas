unit DMPrincipal;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls,
  cxImageList, cxGraphics;

type
  TPrincipalDM = class(TDataModule)
    img16: TcxImageList;
    img24: TcxImageList;
    img32: TcxImageList;
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

end.
