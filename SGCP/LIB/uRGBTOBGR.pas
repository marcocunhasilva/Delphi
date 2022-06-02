unit uRGBTOBGR;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.ActnMan,
  Vcl.ActnColorMaps;

var
  CorRGB: TColor;

function RGBtoBGR(r, g, b: string): TColor;

implementation

function RGBtoBGR(r, g, b: string): TColor; overload;
var
  BGR: TColor;
  CorString: string;
begin
  CorString := ColorToString(CorRGB);
  BGR    := StringToColor('$00' + b + g + r);
  Result := BGR;
end;

end.
