unit uLocacao;

interface

uses
  uCLientes, uVeiculo, uExceptions, uEnumerador, System.DateUtils,
  System.SysUtils;

type
  TLocacao = class
  private
    FCliente: TCliente;
    FTotal: Currency;
    FDataLocacao: TDateTime;
    FID: Integer;
    FDataDevolucao: TDateTime;
    FVeiculo: TVeiculo;
    FHash: String;
    FVeiculoAtual: TVeiculo;
    procedure SetCliente(const Value: TCliente);
    procedure SetDataDevolucao(const Value: TDateTime);
    procedure SetDataLocacao(const Value: TDateTime);
    procedure SetID(const Value: Integer);
    procedure SetTotal(const Value: Currency);
    procedure SetVeiculo(const Value: TVeiculo);
    procedure SetHash(const Value: String);
    procedure SetVeiculoAtual(const Value: TVeiculo);
  published
    property ID: Integer              read FID            write SetID;
    property Cliente: TCliente        read FCliente       write SetCliente;
    property Veiculo: TVeiculo        read FVeiculo       write SetVeiculo;
    property VeiculoAtual: TVeiculo   read FVeiculoAtual  write SetVeiculoAtual;
    property DataLocacao: TDateTime   read FDataLocacao   write SetDataLocacao;
    property DataDevolucao: TDateTime read FDataDevolucao write SetDataDevolucao;
    property Total: Currency          read FTotal         write SetTotal;
    property Hash: String             read FHash          write SetHash;

    constructor Create;

    procedure ValidarRegrasNegocio;
    function CalcularTotal: Currency;
  end;

implementation

{ TLocacao }

constructor TLocacao.Create;
begin
  FHash := IntToStr(Self.GetHashCode);
end;

function TLocacao.CalcularTotal: Currency;
var
  Total: Currency;
  QtdeDias: Integer;
begin
  Total    := 0;
  QtdeDias := 1;

  if(FDataLocacao <> StrToDate('30/12/1889')) and (FDataDevolucao <> StrToDate('30/12/1889'))then
  begin
    QtdeDias := DaysBetween(FDataLocacao, FDataDevolucao);

    if (QtdeDias <= 0) then
      QtdeDias := 1;
  end;

  Total  := QtdeDias * FVeiculo.Valor;
  Result := Total;
end;

procedure TLocacao.SetCliente(const Value: TCliente);
begin
  FCliente := Value;
end;

procedure TLocacao.SetDataDevolucao(const Value: TDateTime);
begin
  FDataDevolucao := Value;
end;

procedure TLocacao.SetDataLocacao(const Value: TDateTime);
begin
  FDataLocacao := Value;
end;

procedure TLocacao.SetHash(const Value: String);
begin
  FHash := Value;
end;

procedure TLocacao.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TLocacao.SetTotal(const Value: Currency);
begin
  FTotal := Value;
end;

procedure TLocacao.SetVeiculo(const Value: TVeiculo);
begin
  FVeiculo := Value;
end;

procedure TLocacao.SetVeiculoAtual(const Value: TVeiculo);
begin
  FVeiculoAtual := Value;
end;

procedure TLocacao.ValidarRegrasNegocio;
begin
  if(FVeiculo = nil)then
    ExceptionLocacaoVeiculo;

  if(FCliente = nil)then
    ExceptionLocacaoCliente;

  if(FVeiculo.Status = Alugado)then
    ExceptionValorVeiculo;
end;

end.
