unit uClientes;

interface

uses
  System.SysUtils, uExceptions;

type
  TCliente = class
  private
    FLogradouro: String;
    FBairro: String;
    FUF: String;
    FDocumento: String;
    FID: integer;
    FNumero: String;
    FComplemento: String;
    FNome: String;
    FCidade: String;
    FTelefone: String;
    procedure SetBairro(const Value: String);
    procedure SetCidade(const Value: String);
    procedure SetComplemento(const Value: String);
    procedure SetDocumento(const Value: String);
    procedure SetID(const Value: integer);
    procedure SetLogradouro(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetNumero(const Value: String);
    procedure SetTelefone(const Value: String);
    procedure SetUF(const Value: String);
  published
    property ID: integer read FID write SetID;
    property Nome: String read FNome write SetNome;
    property Documento: String read FDocumento write SetDocumento;
    property Logradouro: String read FLogradouro write SetLogradouro;
    property Numero: String read FNumero write SetNumero;
    property Complemento: String read FComplemento write SetComplemento;
    property Bairro: String read FBairro write SetBairro;
    property Cidade: String read FCidade write SetCidade;
    property UF: String read FUF write SetUF;
    property Telefone: String read FTelefone write SetTelefone;
  public
    procedure ValidarRegrasNegocios;
  end;

implementation

{ TCliente }

procedure TCliente.ValidarRegrasNegocios;
begin
  if (Trim(FNome) = '') then
  begin
    ExceptionNome;
  end;

  if (Length(FNome) < 3) then
  begin
    ExceptionNomeMinimo;
  end;

  if (Trim(FDocumento) = '') then
  begin
    ExceptionDocumento;
  end;

  if (Length(FDocumento) < 4) then
  begin
    ExceptionDocumentoMinimo;
  end;

  if (Trim(FTelefone) = '') then
  begin
    ExceptionTelefone;
  end;

  if (Length(FDocumento) < 8) then
  begin
    ExceptionTelefoneMinimo;
  end;
end;

procedure TCliente.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TCliente.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TCliente.SetComplemento(const Value: String);
begin
  FComplemento := Value;
end;

procedure TCliente.SetDocumento(const Value: String);
begin
  FDocumento := Value;
end;

procedure TCliente.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TCliente.SetLogradouro(const Value: String);
begin
  FLogradouro := Value;
end;

procedure TCliente.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TCliente.SetNumero(const Value: String);
begin
  FNumero := Value;
end;

procedure TCliente.SetTelefone(const Value: String);
begin
  FTelefone := Value;
end;

procedure TCliente.SetUF(const Value: String);
begin
  FUF := Value;
end;

end.
