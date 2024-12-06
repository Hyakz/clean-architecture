unit uEnumerador;

interface

type
  TMsgResponse = record
    CadastradoComSucesso, AlteradoComSucesso,
    ConsultaRealizada, ConsultaSemRetorno,
    Deletado: String;
  end;

  TErrorCode = record
    NomeNaoInformado, NomeInvalido,
    DocumentoNaoInformado, DocumentoInvalido,
    TelefoneNaoInformado, TelefoneInvalido: Integer;
  end;

function RetornarMsgResponse: TMsgResponse;
function RetornarErros: TErrorCode;

implementation

function RetornarMsgResponse: TMsgResponse;
begin
  Result.CadastradoComSucesso := 'Cadastrado com Sucesso!';
  Result.AlteradoComSucesso   := 'Alterado com Sucesso!';
  Result.Deletado             := 'Deletado com Sucesso!';
  Result.ConsultaRealizada    := 'Consulta Realizada com Sucesso!';
  Result.ConsultaSemRetorno   := 'Consulta sem Retorno!';
end;

function RetornarErros: TErrorCode;
begin
  Result.NomeInvalido          := 9994;
  Result.NomeNaoInformado      := 9995;
  Result.DocumentoInvalido     := 9996;
  Result.DocumentoNaoInformado := 9997;
  Result.TelefoneInvalido      := 9998;
  Result.TelefoneNaoInformado  := 9999;
end;

end.
