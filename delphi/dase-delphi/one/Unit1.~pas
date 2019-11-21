unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 X : Integer;
begin
 X := StrToInt(Edit1.Text);
 if X > 10 then
 Label1.Caption := 'X> 10';
 if X = 10 then
 Label1.Caption := 'X= 10';
 if X < 10 then
 Label1.Caption := 'X< 10';
end;

end.
