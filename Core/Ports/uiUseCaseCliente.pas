unit uiUseCaseCliente;

interface

uses
  uClientes, uResponse, uDTOCliente;

type
  ICasoUsoCliente = interface
    function Cadastrar(Cliente: TCliente): TResponse;
    function Alterar(Cliente: TCliente): TResponse;
    function Deletar(ID: Integer): TResponse;
    function Consultar(Dto: DtoCliente): TResponse;
  end;

implementation

end.
