<a href="https://winworldpc.com/product/delphi/70">下載網址</a><br>
installation:
![image](https://github.com/iachievedream/notebook/blob/master/picture/delphi1.png)
![image](https://github.com/iachievedream/notebook/blob/master/picture/delphi2.png)
![image](https://github.com/iachievedream/notebook/blob/master/picture/delphi3.png)
<br>
easy project

~~~
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
begin
Label1.Caption:='Hello,World!'
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Label1.Caption:='Hello,FU!'
end;

end.
~~~

簡易輸出入

~~~
unit two;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    hello: TButton;
    out_put: TButton;
    Label1: TLabel;    
    procedure helloClick(Sender: TObject);
    procedure out_putClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.helloClick(Sender: TObject);
var               //宣告變數位置
  Str:string;
begin
  Str:='hello ';
  Edit1.Text:=Str+Edit1.Text;      //Edit1.Text讀取輸入值，以及添加hollo字串
end;

procedure TForm1.out_putClick(Sender: TObject);
begin
    Label1.Caption:=Edit1.Text;    //顯示(Caption)至Label1
end;

end.
~~~

簡易輸出入(不經由Edit1.Text)

~~~
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    AB:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var               //宣告變數位置
  Str:string;
begin
  Str:='hello ';
  AB:=Str+Edit1.Text;      //Edit1.Text讀取輸入值，以及添加hollo字串
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Label1.Caption:=AB;    //顯示(Caption)至Label1
end;

end.

~~~

if then

~~~
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
~~~

複雜迴圈

~~~
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
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    Int:Integer;
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

procedure TForm1.Button3Click(Sender: TObject);
begin
  Label1.Caption:=IntToStr(Int);
end;

end.

~~~

for then

~~~
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    AB:Integer;
    CD:Integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if AB=0 then
    begin
      AB:=StrToInt(Edit1.Text);
    end
  else
    AB:=AB-1;
  Label1.Caption:=IntToStr(AB);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AB:=StrToInt(Edit1.Text);
  CD:=StrToInt(Edit2.Text);
  for AB:=1 to AB do
  begin
    CD:= CD*CD;
  end;
  Label1.Caption:=IntToStr(CD);
end;

end.
~~~
~~~
procedure TForm1.Button2Click(Sender: TObject);
begin
  AB:=StrToInt(Edit1.Text);
  CD:=StrToInt(Edit2.Text);
  while AB>1 do
  begin
    CD:= CD*CD;
  end;
  Label1.Caption:=IntToStr(CD);
end;
~~~
ShowMessage
~~~
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
var
  string1, string2 : WideString;
begin
  // Assign a famous sentence to the first string
  string1 := 'Hello World';

  // Assign to the second string
  // This simply points string2 at string1
  // The 'Hello World' string storage has a reference count of 2
  string2 := string1;

  // Add to the second string
  // This disassociates from string1 - new string storage is
  // created to hold the string2 value
  string2 := string2 + ', how is everyone?';

  // And finally, set the length of the first string to 5
  SetLength(string1, 8);

  // Display both strings
  ShowMessage('String1 = '+string1);
  ShowMessage('String2 = '+string2);
{$R *.dfm}

end.

~~~

Function:nunber_add

~~~
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
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
Function Add(a, b : Integer) : Integer;
begin
  // Add the two numbers together, and return this value
  Result := a + b;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  A,B,total : Integer;
begin
  A:=StrToInt(Edit1.Text);
  B:=StrToInt(Edit2.Text);
  total := Add(A,B);
  Label1.Caption:=IntToStr(total);
  //ShowMessageFmt('%d + %d = %d',[A,B,total]);
end;

end.
~~~

Function:char_add
~~~
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
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
Function Add(a, b : String) : String;
begin
  // Add the two numbers together, and return this value
  Result := a +'_'+ b;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  A,B,total : String;
begin
  A:=(Edit1.Text);
  B:=(Edit2.Text);
  total := Add(A,B);
  Label1.Caption:=(total);
  //ShowMessageFmt('%d + %d = %d',[A,B,total]);
end;

end.

~~~
