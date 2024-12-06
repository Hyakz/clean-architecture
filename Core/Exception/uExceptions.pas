unit uExceptions;

interface

uses
  System.SysUtils;

type
  TExceptionNome            = class(Exception);
  TExceptionNomeMinimo      = class(Exception);
  TExceptionDocumento       = class(Exception);
  TExceptionDocumentoMinimo = class(Exception);
  TExceptionTelefone        = class(Exception);
  TExceptionTelefoneMinimo  = class(Exception);

procedure ExceptionNome;
procedure ExceptionNomeMinimo;
procedure ExceptionDocumento;
procedure ExceptionDocumentoMinimo;
procedure ExceptionTelefone;
procedure ExceptionTelefoneMinimo;

implementation

procedure ExceptionNome;
begin
  raise TExceptionNome.Create('Nome deve ser informado!');
end;

procedure ExceptionNomeMinimo;
begin
  raise TExceptionNomeMinimo.Create('O Nome deve contor no min�mo 3 Caracteres!');
end;

procedure ExceptionDocumento;
begin
  raise TExceptionDocumento.Create('O Documento deve ser informado!');
end;

procedure ExceptionDocumentoMinimo;
begin
  raise TExceptionDocumentoMinimo.Create('O Documento deve ter no min�mo 4 Caracteres!');
end;

procedure ExceptionTelefone;
begin
  raise TExceptionTelefone.Create('O Telefone deve ser informado!');
end;

procedure ExceptionTelefoneMinimo;
begin
  raise TExceptionTelefone.Create('O Telefone conter no min�mo 8 Caracteres!');
end;


end.
