![image](https://github.com/iachievedream/EveryNote/blob/master/2019%2009%2026Android%20StudioAPK.png)
<br>
<br>
MainActivity.java
~~~~
package com.example.sum;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText B1;                //宣告全域變數
    EditText B2;                //宣告全域變數
    private Button ButtonA;     //按鍵
    private TextView B3;        //顯示地方

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initView();
    }
    private void initView() {
        B1 = (EditText) findViewById(R.id.A1);    //讀取輸入框A1至B1變數
        B2 = (EditText) findViewById(R.id.A2);    //讀取輸入框A2至B2變數
        ButtonA = (Button) findViewById(R.id.button1); //讀取button1按鈕為ButtonA
        ButtonA.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                B3.setText(calculation());    //呼叫calculation函數
            }
        });
        B3 = (TextView) findViewById(R.id.A3);  //B3回傳至A3顯示螢幕
    }

    private String calculation(){
        double Ans = 0;
        double C1 = Double.valueOf(B1.getText().toString());  //讀取B2至C2
        double C2 = Double.valueOf(B2.getText().toString());  //讀取B2至C2
        Ans = C1 * C2;
        return String.valueOf(Ans);

    }
}

~~~~
<br>
activity_main.xml，<br>
上表用拉的拉出來的，<br>
~~~~
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".MainActivity">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="0dp"
        android:orientation="vertical">

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:orientation="horizontal">

            <TextView
                android:id="@+id/textView"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:text="A1=" />

            <EditText
                android:id="@+id/A1"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:ems="10"
                android:inputType="number" />
        </LinearLayout>

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:orientation="horizontal">

            <TextView
                android:id="@+id/textView2"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:text="A2=" />

            <EditText
                android:id="@+id/A2"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:ems="10"
                android:inputType="number" />
        </LinearLayout>

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:orientation="horizontal">

            <Button
                android:id="@+id/button1"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:text="calculation" />
        </LinearLayout>

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:orientation="horizontal">

            <TextView
                android:id="@+id/textView3"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:text="A3=" />

            <EditText
                android:id="@+id/A3"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:ems="10"
                android:inputType="textPersonName" />
        </LinearLayout>
    </LinearLayout>
</androidx.constraintlayout.widget.ConstraintLayout>
~~~~
<br>
<br>
2019 09 26