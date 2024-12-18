unit uDTOLocacao;

interface

type
  DtoLocacao = record
    ID           : Integer;
    ClienteID    : Integer;
    DataLocacao  : TDateTime;
    DataDevolucao: TDateTime;
    Status       : String;
  end;

implementation

end.
