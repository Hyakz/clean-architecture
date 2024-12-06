program LocacaoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uMenuPrincipal in 'uMenuPrincipal.pas',
  uClientes in '..\..\Core\Models\uClientes.pas',
  uiCasoUsoCliente in '..\..\Core\Ports\uiCasoUsoCliente.pas',
  uResponse in '..\..\Core\Response\uResponse.pas',
  uDTOCliente in '..\..\Core\DTO\uDTOCliente.pas',
  uCasoUsoCliente in '..\..\Core\UseCases\uCasoUsoCliente.pas',
  uEnumerador in '..\..\Core\Enum\uEnumerador.pas',
  uExceptions in '..\..\Core\Exception\uExceptions.pas',
  DTUtils in '..\..\Utils\DTUtils.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }

  Menu;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
