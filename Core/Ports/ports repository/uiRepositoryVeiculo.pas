unit uiRepositoryVeiculo;

interface

uses
  uVeiculo, uDTOVeiculo, System.Generics.Collections;

type
  IRepositoryVeiculo = interface
    procedure Cadastrar(Veiculo: TVeiculo);
    procedure Alterar(Veiculo: TVeiculo);
    procedure Excluir(Codigo: Integer);
    function Consultar(Dto: DtoVeiculo): TList<TVeiculo>;
  end;

implementation

end.
