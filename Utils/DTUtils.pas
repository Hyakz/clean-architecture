unit DTUtils;

interface

uses
  System.SysUtils, uResponse, uExceptions, uEnumerador, uClientes, System.Generics.Collections, TypInfo,
  uVeiculo;

function TratarException(e: Exception): TResponse;
function ListaClienteParaObjectList(ListaObject: TObjectList<TObject>; ListaCliente: TList<TCliente>): TObjectList<TObject>;
function ListaVeiculoParaObjectList(ListaObject: TObjectList<TObject>; ListaVeiculo: TList<TVeiculo>): TObjectList<TObject>;

function ConverterStatusStr(Value: TStatus): String;
function ConverterStrStatus(Value: String): TStatus;

implementation

function ConverterStrStatus(Value: String): TStatus;
begin
  Result := TStatus(GetEnumValue(TypeInfo(TStatus), Value));
end;

function ConverterStatusStr(Value: TStatus): String;
begin
  Result := GetEnumName(TypeInfo(TStatus), Integer(Value));
end;

function ListaClienteParaObjectList(ListaObject: TObjectList<TObject>; ListaCliente: TList<TCliente>): TObjectList<TObject>;
var
  Cliente: TCliente;
begin
  if(ListaCliente.Count > 0)then
  begin
    for Cliente in ListaCliente do
    begin
      ListaObject.Add(Cliente);
    end;
  end;

  Result := ListaObject;
end;

function ListaVeiculoParaObjectList(ListaObject: TObjectList<TObject>; ListaVeiculo: TList<TVeiculo>): TObjectList<TObject>;
var
  Veiculo: TVeiculo;
begin
  if(ListaVeiculo.Count > 0)then
  begin
    for Veiculo in ListaVeiculo do
    begin
      ListaObject.Add(Veiculo);
    end;
  end;

  Result := ListaObject;
end;

function TratarException(e: Exception): TResponse;
var
  Response: TResponse;
begin
  Response.Sucesso  := False;
  Response.Mensagem := e.Message;
  Response.Data     := nil;

  if e.ClassType = TExceptionDataBase then
    Response.CodErro := RetornarErros.DataBaseError;

  if e.ClassType = TExceptionNome then
    Response.CodErro := RetornarErros.NomeNaoInformado;

  if e.ClassType = TExceptionNomeMinimo then
    Response.CodErro := RetornarErros.NomeInvalido;

  if e.ClassType = TExceptionDocumento then
    Response.CodErro := RetornarErros.DocumentoNaoInformado;

  if e.ClassType = TExceptionDocumentoMinimo then
    Response.CodErro := RetornarErros.DocumentoInvalido;

  if e.ClassType = TExceptionTelefone then
    Response.CodErro := RetornarErros.TelefoneNaoInformado;

  if e.ClassType = TExceptionTelefoneMinimo then
    Response.CodErro := RetornarErros.TelefoneInvalido;

  if e.ClassType = TExceptionPlacaVeiculo then
    Response.CodErro := RetornarErros.PlacaNaoInformada;

  if e.ClassType = TExceptionPlacaVeiculoMinimo then
    Response.CodErro := RetornarErros.PlacaInvalida;

  if e.ClassType = TExceptionNomeMinimoVeiculo then
    Response.CodErro := RetornarErros.NomeInvalido;

  if e.ClassType = TExceptionValorVeiculo then
    Response.CodErro := RetornarErros.ValorInvalido;

  if e.ClassType = TExceptionLocacaoVeiculo then
    Response.CodErro := RetornarErros.VeiculoNaoInformado;

  if e.ClassType = TExceptionLocacaoCliente then
    Response.CodErro := RetornarErros.ClienteNaoInformado;

  if e.ClassType = TExceptionLocacaoVeiculoAlugado then
    Response.CodErro := RetornarErros.VeiculoAlugado;

  Result := Response;
end;

end.
