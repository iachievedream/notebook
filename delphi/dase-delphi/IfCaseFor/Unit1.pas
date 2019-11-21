unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    Int:Integer;
    AB:Integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Int=0 then
    begin
      Int:=StrToInt(Edit1.Text);
    end
  else
    Int:=Int-1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Int=0 then
    begin
      Int:=StrToInt(Edit1.Text);
    end
  else
    Int:=Int+1;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Label1.Caption:=IntToStr(Int);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  AB:=0;
  for Int:=1 to 10 do
    AB:= AB+1;
  Label1.Caption:=IntToStr(AB);
end;

end.
