unit uCasoUsoCliente;

interface

uses
  uiCasoUsoCliente, System.SysUtils, uClientes, uResponse, uDTOCliente,
  uEnumerador, DTUtils;

type
  TUCasoUsoCliente = class(TInterfacedObject, ICasoUsoCliente)
    function Cadastrar(Cliente: TCliente): TResponse;
    function Alterar(Cliente: TCliente): TResponse;
    function Deletar(ID: Integer): TResponse;
    function Consultar(Dto: DtoCliente): TResponse;
  end;

implementation

function TUCasoUsoCliente.Cadastrar(Cliente: TCliente): TResponse;
var
  Response: TResponse;
begin
  try
    Cliente.ValidarRegrasNegocios;

    Response.Sucesso  := True;
    Response.CodErro  := 0;
    Response.Mensagem := RetornarMsgResponse.CadastradoComSucesso;
    Response.Data     := nil;

  except
    on e: Exception do
    begin
      Response := TratarException(e);
    end;
  end;

  result := Response;
end;

function TUCasoUsoCliente.Alterar(Cliente: TCliente): TResponse;
var
  Response: TResponse;
begin
  try
    Cliente.ValidarRegrasNegocios;

    Response.Sucesso  := True;
    Response.CodErro  := 0;
    Response.Mensagem := RetornarMsgResponse.AlteradoComSucesso;
    Response.Data     := nil;

  except
    on e: Exception do
    begin
      Response := TratarException(e);
    end;
  end;

  result := Response;
end;

function TUCasoUsoCliente.Deletar(ID: Integer): TResponse;
var
  Response: TResponse;
begin
  try
    Response.Sucesso  := True;
    Response.CodErro  := 0;
    Response.Mensagem := RetornarMsgResponse.Deletado;
    Response.Data     := nil;

  except
    on e: Exception do
    begin
      Response := TratarException(e);
    end;
  end;

  result := Response;
end;


function TUCasoUsoCliente.Consultar(Dto: DtoCliente): TResponse;
var
  Response: TResponse;
begin
  try
    Response.Sucesso  := True;
    Response.CodErro  := 0;
    Response.Mensagem := RetornarMsgResponse.ConsultaRealizada;
    Response.Data     := nil;

  except
    on e: Exception do
    begin
      Response := TratarException(e);
    end;
  end;

  result := Response;
end;



end.
