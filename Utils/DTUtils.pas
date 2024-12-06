unit DTUtils;

interface

uses
  System.SysUtils, uResponse, uExceptions, uEnumerador;

function TratarException(e: Exception): TResponse;

implementation

function TratarException(e: Exception): TResponse;
var
  Response: TResponse;
begin
  Response.Sucesso  := False;
  Response.Mensagem := e.Message;
  Response.Data     := nil;

  if e.ClassType = TExceptionNome then
  begin
    Response.CodErro := RetornarErros.NomeNaoInformado;
  end;

   if e.ClassType = TExceptionNomeMinimo then
  begin
    Response.CodErro := RetornarErros.NomeInvalido;
  end;

  if e.ClassType = TExceptionDocumento then
  begin
    Response.CodErro := RetornarErros.DocumentoNaoInformado;
  end;

  if e.ClassType = TExceptionDocumentoMinimo then
  begin
    Response.CodErro := RetornarErros.DocumentoInvalido;
  end;

  if e.ClassType = TExceptionTelefone then
  begin
    Response.CodErro := RetornarErros.TelefoneNaoInformado;
  end;

  if e.ClassType = TExceptionTelefoneMinimo then
  begin
    Response.CodErro := RetornarErros.TelefoneInvalido;
  end;

  Result := Response;
end;

end.