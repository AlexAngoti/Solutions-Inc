unit uCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, SWHDBEdit, SWHDBComboBox, SWHDBLookupComboBox;

type
  TfrmCadastroPadrao1 = class(TfrmCadastroPadrao)
    pnlCentral: TPanel;
    lblNome: TLabel;
    lblDescricao: TLabel;
    lblPeso: TLabel;
    lblAtivo: TLabel;
    lblPreco: TLabel;
    edtDescricao: TSWHDBEdit;
    edtNome: TSWHDBEdit;
    edtPeso: TSWHDBEdit;
    edtPreco: TSWHDBEdit;
    edtAtivo: TSWHDBComboBox;
    imgFoto: TDBImage;
    Label1: TLabel;
    SWHDBEdit1: TSWHDBEdit;
    SWHDBComboBox1: TSWHDBComboBox;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao1: TfrmCadastroPadrao1;

implementation

{$R *.dfm}

end.
