unit uResponse;

interface

uses
  System.Generics.Collections, System.SysUtils;

type
  TResponse = record
    Sucesso: Boolean;
    CodErro: Integer;
    Mensagem: String;
    Data: TObjectList<TObject>;
  end;

implementation

end.
