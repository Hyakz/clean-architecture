unit uEnumerador;

interface

type
  TStatus = (Disponivel, Alugado);

type
  TMsgResponse = record
    CadastradoComSucesso,
    AlteradoComSucesso,
    ConsultaRealizada,
    ConsultaRealizadaSemRetorno,
    ConsultaSemRetorno,
    Deletado,
    VeiculoNaoInformado,
    ClienteNaoInformado,
    VeiculoAlugado,
    DataBaseError: String;
  end;

  TErrorCode = record
    NomeNaoInformado,
    NomeInvalido,
    DocumentoNaoInformado,
    DocumentoInvalido,
    TelefoneNaoInformado,
    TelefoneInvalido,
    IDInvalido,
    PlacaInvalida,
    PlacaNaoInformada,
    ValorInvalido,
    VeiculoNaoInformado,
    ClienteNaoInformado,
    VeiculoAlugado,
    DataBaseError: Integer;
  end;

function RetornarMsgResponse: TMsgResponse;
function RetornarErros: TErrorCode;

implementation

function RetornarMsgResponse: TMsgResponse;
begin
  Result.CadastradoComSucesso        := 'Cadastrado com Sucesso!';
  Result.AlteradoComSucesso          := 'Alterado com Sucesso!';
  Result.Deletado                    := 'Deletado com Sucesso!';
  Result.ConsultaRealizada           := 'Consulta Realizada com Sucesso!';
  Result.ConsultaSemRetorno          := 'Consulta sem Retorno!';
  Result.VeiculoNaoInformado         := 'Ve�culo n�o Informado!';
  Result.ClienteNaoInformado         := 'Cliente n�o Informado!';
  Result.VeiculoAlugado              := 'Ve�culo Alugado!';
  Result.DataBaseError               := 'Erro no Banco de Dados!';
  Result.ConsultaRealizadaSemRetorno := 'A Consulta foi realizada mas n�o obteve retorno!';
end;

function RetornarErros: TErrorCode;
begin
  Result.NomeInvalido          := 9000;
  Result.NomeNaoInformado      := 9001;
  Result.DocumentoInvalido     := 9002;
  Result.DocumentoNaoInformado := 9003;
  Result.TelefoneInvalido      := 9004;
  Result.TelefoneNaoInformado  := 9005;
  Result.PlacaInvalida         := 9006;
  Result.PlacaNaoInformada     := 9007;
  Result.IDInvalido            := 9009;
  Result.VeiculoNaoInformado   := 9010;
  Result.ClienteNaoInformado   := 9011;
  Result.VeiculoAlugado        := 9012;
  Result.DataBaseError         := 9013;
end;

end.
