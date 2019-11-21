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

混雜:try_Except，functure_Add，functure_Add_char

~~~
unit Unit1;            //檔案名稱

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)  //功能鍵宣告，需用視窗拉出
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var               //全域變數宣告
  Form1: TForm1;
    X : Integer;  //資料型態為數字
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
  Except                          //錯誤(輸入字串)跳出此訊息
      ShowMessage('Unknown error encountered');
  end;
end;

Function Add(X, Y, Z: Integer) : Integer;  //函數以及資料型態定義
begin
  Result := X + Y+ Z;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  X := StrToInt(Edit1.Text);
  Y := StrToInt(Edit2.Text);
  Z := StrToInt(Edit3.Text);
  K := Add(X, Y, Z);          //使用functure
  Label2.Caption:=IntToStr(K);
end;

Function Addchar(a, b : String) : String;  //functure定義兩字串相加
begin
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
    //Label4.Caption:=(IntToStr(k));
    j:=j-1;
    end;
end;

end.

~~~

備註:<br>
讀取Edit1，需用Str字串轉成Int數字型式才可計算數值:<br>
X := StrToInt(Edit1.Text);<br>
<br>
顯示Label1，需用Int數字轉換成Str字串型式才可順利顯示:<br>
Label1.Caption:=IntToStr(K);<br>
<br>
For迴圈需要注意變數的位置在回圈內還是迴圈外，另外指令要清楚，所以需多打begin~~~end;的動作內容。<br>
<br>
form1跳頁至form2<br>
Unit1<br>

~~~
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var frm2:TForm2 ;
begin
  frm2:=TForm2.Create(frm2);
  frm2.ShowModal;
end;

end.
~~~
Unit2
~~~
unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  self.close;
end;

end.
~~~

Project1
~~~
program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
~~~