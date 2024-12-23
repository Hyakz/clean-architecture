unit uiCasoUsoLocacao;

interface

uses
  uLocacao, uResponse, uDTOLocacao;

  type
    ICasoUsoLocacao = interface
      function Cadastrar(Locacao: TLocacao): TResponse;
      function Alterar(Locacao: TLocacao): TResponse;
      function Deletar(ID: Integer): TResponse;
      function Consultar(Dto: DtoLocacao): TResponse;
    end;
implementation

end.
