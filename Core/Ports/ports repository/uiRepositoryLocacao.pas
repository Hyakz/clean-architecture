unit uiRepositoryLocacao;

interface

uses
  uLocacao, uDTOLocacao, System.Generics.Collections;

type
  IRepositoryLocacao = interface
    procedure Cadastrar(Cliente: TLocacao);
    procedure Alterar(Cliente: TLocacao);
    procedure Excluir(Codigo: Integer);
    function Consultar(Dto: DtoLocacao): TList<TLocacao>;
  end;

implementation

end.
