unit uConsultaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Datasnap.DBClient;

type
  TfrmConsultaPadrao = class(TForm)
    pnlSubTop: TPanel;
    imgLogoTop: TImage;
    lblNomeLogoTop: TLabel;
    btnFechar: TSpeedButton;
    pnlSubBot: TPanel;
    lblNomeLogo: TLabel;
    imgLogo: TImage;
    pnlCentral: TPanel;
    pnlBarraPesquisa: TPanel;
    lblPesquisar: TLabel;
    btnPesquisa: TSpeedButton;
    pnlPesquisa: TPanel;
    edtPesquisa: TEdit;
    dbGrdPesquisa: TDBGrid;
    dsConsultaPadrao: TDataSource;
    procedure dbGrdPesquisaDblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure FiltraCampo(ACampoFiltro: string);
    procedure OpenDataSet;
    { Public declarations }
  end;

var
  frmConsultaPadrao: TfrmConsultaPadrao;

implementation

{$R *.dfm}

procedure TfrmConsultaPadrao.btnFecharClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmConsultaPadrao.dbGrdPesquisaDblClick(Sender: TObject);
begin
  (dsConsultaPadrao.DataSet as TClientDataSet).Edit;
  ModalResult := mrOk;
end;

procedure TfrmConsultaPadrao.FiltraCampo(ACampoFiltro: string);
begin
  dsConsultaPadrao.DataSet.Filtered := False;
  if edtPesquisa.Text <> EmptyStr then
  begin
    dsConsultaPadrao.DataSet.Filter := 'UPPER('+ACampoFiltro+') LIKE ' +
      QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
    dsConsultaPadrao.DataSet.Filtered := True;
  end;
end;

procedure TfrmConsultaPadrao.FormCreate(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TfrmConsultaPadrao.OpenDataSet;
begin
  (dsConsultaPadrao.DataSet as TClientDataSet).Close;
  (dsConsultaPadrao.DataSet as TClientDataSet).Open;
end;

end.
