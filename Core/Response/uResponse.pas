unit uResponse;

interface

uses
  System.Generics.Collections, System.SysUtils;

type
  TResponse = record
    lSucesso: Boolean;
    iCodErro: Integer;
    cMensagem: String;
    lstData: TObjectList<TObject>;
  end;

implementation

end.