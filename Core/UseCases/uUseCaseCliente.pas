unit uUseCaseCliente;

interface

uses
  uiUseCaseCliente, System.SysUtils, uClientes, uResponse, uDTOCliente, uEnumerador;

type
  TUseCaseCliente = class(TInterfacedObject, ICasoUsoCliente)
    function Cadastrar(Cliente: TCliente): TResponse;
    function Alterar(Cliente: TCliente): TResponse;
    function Deletar(ID: Integer): TResponse;
    function Consultar(Dto: DtoCliente): TResponse;
  end;

implementation

function TUseCaseCliente.Cadastrar(Cliente: TCliente): TResponse;
var
  Response: TResponse;
begin
  try
    Response.lSucesso  := True;
    Response.iCodErro  := 0;
    Response.cMensagem := RetornarMsgResponse.CadastradoComSucesso;
    Response.lstData   := nil;

  except
    on e: Exception do
    begin

    end;
  end;

  result := Response;
end;


function TUseCaseCliente.Alterar(Cliente: TCliente): TResponse;
var
  Response: TResponse;
begin
  try
    Response.lSucesso  := True;
    Response.iCodErro  := 0;
    Response.cMensagem := RetornarMsgResponse.AlteradoComSucesso;
    Response.lstData   := nil;

  except
    on e: Exception do
    begin

    end;
  end;

  result := Response;
end;

function TUseCaseCliente.Deletar(ID: Integer): TResponse;
var
  Response: TResponse;
begin
  try
    Response.lSucesso  := True;
    Response.iCodErro  := 0;
    Response.cMensagem := RetornarMsgResponse.Deletado;
    Response.lstData   := nil;

  except
    on e: Exception do
    begin

    end;
  end;

  result := Response;
end;


function TUseCaseCliente.Consultar(Dto: DtoCliente): TResponse;
var
  Response: TResponse;
begin
  try
    Response.lSucesso  := True;
    Response.iCodErro  := 0;
    Response.cMensagem := RetornarMsgResponse.ConsultaRealizada;
    Response.lstData   := nil;

  except
    on e: Exception do
    begin

    end;
  end;

  result := Response;
end;



end.