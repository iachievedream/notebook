unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
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

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var               //宣告變數位置
  Str:string;
begin
  Str:='hello ';
  Edit1.Text:=Str+Edit1.Text;                             //給予值 'A'=Str

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Label1.Caption:=Edit1.Text;
end;



end.
