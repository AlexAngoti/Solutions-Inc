unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Datasnap.Provider, Datasnap.DBClient;

type
  Tdm = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    qryLogin: TFDQuery;
    dspLogin: TDataSetProvider;
    cdsLogin: TClientDataSet;
    dsLogin: TDataSource;
    qryPessoa: TFDQuery;
    qryBackup: TFDQuery;
    dspBackup: TDataSetProvider;
    cdsBackup: TClientDataSet;
    dsBackup: TDataSource;
    qryValidaLogin: TFDQuery;
    dspValidaLogin: TDataSetProvider;
    cdsValidaAcesso: TClientDataSet;
    dsValidaAcesso: TDataSource;
    qryFormaPgto: TFDQuery;
    qryReceber: TFDQuery;
    cdsLoginid: TLargeintField;
    cdsLoginacesso: TWideStringField;
    cdsLoginsenha: TWideStringField;
    cdsLoginmaster: TWideStringField;
    cdsLoginativo: TIntegerField;
    qryReceberid: TLargeintField;
    qryReceberdataemissao: TDateField;
    qryReceberdatavencimento: TDateField;
    qryRecebervalor: TBCDField;
    qryReceberformapgto: TIntegerField;
    qryReceberidcliente: TIntegerField;
    qryReceberdatabaixa: TDateField;
    qryReceberdescricao: TWideStringField;
    qryRecebernumerodoc: TWideStringField;
    qryReceberobservaobaixa: TWideStringField;
    qryPagar: TFDQuery;
    qryPagarid: TLargeintField;
    qryPagardataemissao: TDateField;
    qryPagardatavencimento: TDateField;
    qryPagarvalor: TBCDField;
    qryPagarformapgto: TIntegerField;
    qryPagaridfornecedor: TIntegerField;
    qryPagardatabaixa: TDateField;
    qryPagardescricao: TWideStringField;
    qryPagarnumerodoc: TWideStringField;
    qryPagarobservaobaixa: TWideStringField;
    qryPagarnumeroorigem: TIntegerField;
    qryProduto: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    const arquvioconfig = 'config.ini';
  private
    { Private declarations }
  public
    procedure Conectar;
    procedure Desconectar;
    procedure CarregaConfig;
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ Tdm }

procedure Tdm.CarregaConfig;
var
  ParametroNome: String;
  ParametroValor: String;
  Contador: Integer;
  ListaParametros: TStringList;
begin
  FDConnection.Params.Clear;
  if not FileExists(arquvioconfig) then
  begin
    raise Exception.Create('Arquivo de configuração não econtrado');
  end;

  ListaParametros := TStringList.Create;
  try
    ListaParametros.LoadFromFile(arquvioconfig);
    for Contador := 0 to Pred(ListaParametros.Count) do
    begin
      if ListaParametros[Contador].IndexOf('=') > 0 then
      begin
        ParametroNome  := ListaParametros[Contador].Split(['=']) [0].Trim;
        ParametroValor := ListaParametros[Contador].Split(['=']) [1].Trim;
        if ParametroNome = '^' then
        begin
          Break;
        end;
        FDConnection.Params.add(ParametroNome + '=' + ParametroValor);
      end;
    end;
  finally
    ListaParametros.Free;
  end;
end;

procedure Tdm.Conectar;
begin
  FDConnection.Connected;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  Self.Desconectar;
  Self.CarregaConfig;
  Self.Conectar;
end;

procedure Tdm.Desconectar;
begin
  FDConnection.Connected := False;
end;

end.
