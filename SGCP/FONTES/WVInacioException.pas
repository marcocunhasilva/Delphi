unit WVInacioException;

interface

uses
  SysUtils, DB, JclDebug;

type
  EWVInacioException = class(Exception);
  EWVInacioDBException = class(EDatabaseError);

implementation

initialization
  AddIgnoredException(EWVInacioException);
  AddIgnoredException(EWVInacioDBException);
  AddIgnoredException(EDatabaseError);
end.
