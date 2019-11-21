unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    X : Integer;
    Y : Integer;
    Z : Integer;
    K : Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Try
    X := StrToInt(Edit1.Text);
    Y := StrToInt(Edit2.Text);
    Z := StrToInt(Edit3.Text);
    k:=X*Y+Z;
    Label1.Caption:=IntToStr(K);
  Except
    ShowMessage('Unknown error encountered');
  end;
end;

Function Add(X, Y, Z: Integer) : Integer;
begin
  // Add the two numbers together, and return this value
  Result := X + Y+ Z;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  X := StrToInt(Edit1.Text);
  Y := StrToInt(Edit2.Text);
  Z := StrToInt(Edit3.Text);
  K := Add(X, Y, Z);
  Label2.Caption:=IntToStr(K);
end;

Function Addchar(a, b : String) : String;
begin
  // Add the two numbers together, and return this value
  Result := a +'_'+ b;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  A,B,total : String;
begin
  Try
    A:=(Edit1.Text);
    B:=(Edit2.Text);
    total := Addchar(A,B);
    Label3.Caption:=(total);
  Except
    ShowMessage('Unknown error encountered');
  end;
end;
procedure TForm1.Button4Click(Sender: TObject);
var
  i : Integer;
  j : Integer;
begin
  X := StrToInt(Edit1.Text);
  Y := StrToInt(Edit2.Text);
  Z := StrToInt(Edit3.Text);
  K := Add(X, Y, Z);
  j:=K;
  For i := X to (Y div Z) do
    begin
    ShowMessage('j = '+IntToStr(j));
    Label4.Caption:=(IntToStr(k));
    j:=j-1;
    end;
end;

end.
