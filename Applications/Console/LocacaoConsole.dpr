program LocacaoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uMenuPrincipal in 'uMenuPrincipal.pas',
  uClientes in '..\..\Core\Models\uClientes.pas',
  uiUseCaseCliente in '..\..\Core\Ports\uiUseCaseCliente.pas',
  uResponse in '..\..\Core\Response\uResponse.pas',
  uDTOCliente in '..\..\Core\DTO\uDTOCliente.pas',
  uUseCaseCliente in '..\..\Core\UseCases\uUseCaseCliente.pas',
  uEnumerador in '..\..\Core\Enum\uEnumerador.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }

  Menu;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
