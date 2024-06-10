unit uUsuario;

interface

type
  TUsuario = class
    private
      FNomeUsuario: string;
      FId: Integer;
      FNivelAcesso: string;
    public
      constructor Create;
      property NomeUsuario: string read FNomeUsuario write FNomeUsuario;
      property IdUsuario: Integer read FId write FId;
      property NivelAcesso: string read FNivelAcesso write FNivelAcesso;
  end;

implementation

{ TUsuario }

constructor TUsuario.Create;
begin
  inherited Create;
end;

end.
