unit uConsultaPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.DBClient,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxGDIPlusClasses;

type
  TfrmConsultaPessoa = class(TfrmConsultaPadrao)
    rgpTipoPessoa: TRadioGroup;
    dbGrdPesquisaDBTableView1id: TcxGridDBColumn;
    dbGrdPesquisaDBTableView1tipopessoa: TcxGridDBColumn;
    dbGrdPesquisaDBTableView1nomerazao: TcxGridDBColumn;
    dbGrdPesquisaDBTableView1cnpjcpf: TcxGridDBColumn;
    procedure btnPesquisaClick(Sender: TObject);
    procedure rgpTipoPessoaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaPessoa: TfrmConsultaPessoa;
  TiposPessoa: string;

implementation

uses
  uCadastroCliente, uUtils;

{$R *.dfm}

procedure TfrmConsultaPessoa.btnPesquisaClick(Sender: TObject);
var
  filtro: string;
begin
  inherited;
  dsConsultaPadrao.DataSet.Filtered := False;

  // Verifica se há texto na pesquisa
  if edtPesquisa.Text = EmptyStr then
  begin
    if rgpTipoPessoa.ItemIndex <> 0 then
    begin
      dsConsultaPadrao.DataSet.Filter := 'tipopessoa = ' + TiposPessoa;
      dsConsultaPadrao.DataSet.Filtered := True;
    end;
    Exit // Se não houver texto, não filtre
  end;

  // Constrói o filtro para nomerazao
  filtro := 'UPPER(nomerazao) LIKE ' + QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');

  // Se o tipo de pessoa não é 0, adicione o filtro para o tipo de pessoa
  if rgpTipoPessoa.ItemIndex <> 0 then
  begin
    filtro := filtro + ' AND tipopessoa = ' + TiposPessoa;
  end;

  // Aplique o filtro
  dsConsultaPadrao.DataSet.Filter := filtro;
  dsConsultaPadrao.DataSet.Filtered := True;
end;

procedure TfrmConsultaPessoa.FormCreate(Sender: TObject);
begin
  inherited;
  TiposPessoa := EmptyStr;
end;

procedure TfrmConsultaPessoa.rgpTipoPessoaClick(Sender: TObject);
begin
  inherited;
  // Definir o tipo de pessoa com base na seleção
  case rgpTipoPessoa.ItemIndex of
    1: TiposPessoa := '0'; // Física
    2: TiposPessoa := '1'; // Jurídica
    3: TiposPessoa := '2'; // Outras opções se aplicável
    else
      TiposPessoa := '';
  end;

  // Reaplicar o filtro baseado na pesquisa e tipo de pessoa
  btnPesquisaClick(Sender);
end;

end.
