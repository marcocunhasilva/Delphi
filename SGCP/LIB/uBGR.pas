unit uBGR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ActnMan,
  Vcl.ActnColorMaps;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    btnRGB: TButton;
    btnBGR: TButton;
    btnColorString: TButton;
    ColorDialog1: TColorDialog;
    btnSelectColor: TButton;
    procedure btnBGRClick(Sender: TObject);
    procedure btnRGBClick(Sender: TObject);
    procedure btnColorStringClick(Sender: TObject);
    procedure btnSelectColorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function RGBtoBGR(r, g, b: string): TColor; overload;
    function RGBtoBGR(rgb: string): TColor; overload;
    function BGR(color: string): TColor;
  end;

var
  Form1: TForm1;
  CorRGB: TColor;
  StandardColor: string = 'clBtnFace';

implementation

{$R *.dfm}

{ TForm1 }

function TForm1.BGR(color: string): TColor;
begin
  color := Format('$%.2x%.2x%.2x', [GetBValue(ColorDialog1.Color),
                                    GetGValue(ColorDialog1.Color),
                                    GetRValue(ColorDialog1.Color)]);
  Result := StringToColor(color);
end;

procedure TForm1.btnBGRClick(Sender: TObject);
begin
  Panel1.Color := RGBToBGR('33','59','9A');
end;

procedure TForm1.btnColorStringClick(Sender: TObject);
var
  ColorString: string;
begin
  ColorString := ColorToString(CorRGB);
  ShowMessage(ColorString);
end;

procedure TForm1.btnRGBClick(Sender: TObject);
begin
  // ColorDialog1.
  CorRGB := StringToColor('$0033599A');
  Panel1.Color := StringToColor('$0033599A');
end;

procedure TForm1.btnSelectColorClick(Sender: TObject);
begin
  {
  if ColorDialog1.Execute then
  begin
    StandardColor := Format('$%.2x%.2x%.2x', [GetRValue(ColorDialog1.Color),
                                             GetGValue(ColorDialog1.Color),
                                             GetBValue(ColorDialog1.Color)]);
  end;
  }
  ShowMessage(StandardColor);
  // StandardColor := RGBToBGR(StandardColor);
  Panel1.Color := BGR(StandardColor);
end;

function TForm1.RGBtoBGR(rgb: string): TColor;
var
  BGR: TColor;
begin

end;

function TForm1.RGBtoBGR(r, g, b: string): TColor;
var
  BGR: TColor;
  CorString: string;
begin
  CorString := ColorToString(CorRGB);
  BGR    := StringToColor('$00' + b + g + r);
  Result := BGR;
end;

end.
