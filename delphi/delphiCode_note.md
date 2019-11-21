視窗變綠
~~~
procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Color := clGreen;{ The reference to Form1 didn't change! }
end;
~~~

原文書P54,按鈕顏色執行錯誤
~~~
procedure TForm1.Button1Click(Sender: TObject);
begin
Color := clFuchsia;
Button1.Color := clLime;
end;
~~~

P61