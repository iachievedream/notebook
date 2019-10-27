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