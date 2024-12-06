unit uTesteCasosUsoCliente;

interface

uses
  DUnitX.TestFramework, uCasoUsoCliente, uEnumerador, uResponse, uiCasoUsoCliente,
  uDTOCliente, uClientes, DTUtils;

type
  [TestFixture]
  TTesteCasoUsoCliente = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;

    [Test]
    procedure CadastrarCliente;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation

var
  CasoUso: ICasoUsoCliente;
  Cliente: TCliente;

procedure TTesteCasoUsoCliente.Setup;
begin
  Cliente := TCliente.Create;
  CasoUso := TUCasoUsoCliente.Create;
end;

procedure TTesteCasoUsoCliente.TearDown;
begin
  Cliente.Free;
end;

procedure TTesteCasoUsoCliente.CadastrarCliente;
var
  Response: TResponse;
begin

end;

procedure TTesteCasoUsoCliente.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TTesteCasoUsoCliente);

end.
