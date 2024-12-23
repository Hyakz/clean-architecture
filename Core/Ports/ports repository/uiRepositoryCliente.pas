unit uiRepositoryCliente;

interface

uses
  uClientes, uDTOCliente, System.Generics.Collections;

type
  IRepositoryCliente = interface
    procedure Cadastrar(Cliente: TCliente);
    procedure Alterar(Cliente: TCliente);
    procedure Excluir(Codigo: Integer);
    function Consultar(Dto: DtoCliente): TList<TCliente>;
  end;

implementation

end.