unit uUsuario;

interface

type
  TUsuario = class
    private
      FNomeUsuario: string;
      FId: Integer;
    public
      constructor Create;
      property NomeUsuario: string read FNomeUsuario write FNomeUsuario;
      property IdUsuario: Integer read FId write FId;
  end;

implementation

{ TUsuario }

constructor TUsuario.Create;
begin
  inherited Create;
end;

end.
