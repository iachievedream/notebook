<a href="https://winworldpc.com/product/delphi/70">下載網址</a><br>
installation:
![image](https://github.com/iachievedream/notebook/blob/master/picture/delphi1.png)
![image](https://github.com/iachievedream/notebook/blob/master/picture/delphi2.png)
![image](https://github.com/iachievedream/notebook/blob/master/picture/delphi3.png)
<br>
project

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