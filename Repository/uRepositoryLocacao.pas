unit uRepositoryLocacao;

interface

uses
  uLocacao, uDTOLocacao, uiRepositoryLocacao, System.Generics.Collections, uConfiguracaoDB;

type
  TRepositoryLocacao = class(TInterfacedObject, IRepositoryLocacao)
  private
    ConfiguracaoDB: TConfiguracaoDB;
    FLista: TList<TLocacao>;
    procedure SetLista(const Value: TList<TLocacao>);
  published
    procedure Cadastrar(Cliente: TLocacao);
    procedure Alterar(Cliente: TLocacao);
    procedure Excluir(Codigo: Integer);
    function Consultar(Dto: DtoLocacao): TList<TLocacao>;

    constructor Create;
    destructor Destroy; override;

    property Lista: TList<TLocacao> read FLista write SetLista;
  end;

implementation

{ TRepositoryLocacao }

constructor TRepositoryLocacao.Create;
begin
  Lista          := TList<TLocacao>.Create;
  ConfiguracaoDB := TConfiguracaoDB.Create;
end;

destructor TRepositoryLocacao.Destroy;
begin
  Lista.Free;
  ConfiguracaoDB.Free;

  inherited;
end;

procedure TRepositoryLocacao.Cadastrar(Cliente: TLocacao);
begin

end;

procedure TRepositoryLocacao.Alterar(Cliente: TLocacao);
begin

end;

procedure TRepositoryLocacao.Excluir(Codigo: Integer);
begin

end;

function TRepositoryLocacao.Consultar(Dto: DtoLocacao): TList<TLocacao>;
begin

end;

procedure TRepositoryLocacao.SetLista(const Value: TList<TLocacao>);
begin
  FLista := Value;
end;

end.