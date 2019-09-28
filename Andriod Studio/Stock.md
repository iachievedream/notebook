![image](https://github.com/iachievedream/notebook/blob/master/picture/Stock.png)
<br>
<br>
MainActivity.java<br>
~~~~

package com.example.mystock;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText BuyNumber;                //宣告全域變數
    EditText BuyStock;                //宣告全域變數
    private TextView BuyHandlingFee;        //顯示地方
    private Button BuyButton;     //按鍵
    private TextView BuyTotalPrice;        //顯示地方

    EditText SellNumber;                //宣告全域變數
    EditText SellStock;                //宣告全域變數
    private TextView SellHandlingFee;        //顯示地方
    private Button SellButton;     //按鍵
    private TextView SellTotalPrice;        //顯示地方

    private Button EarnButton;     //按鍵
    private TextView TotalPrice;        //顯示地方

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initView();
    }
    private void initView() {
        BuyNumber = (EditText) findViewById(R.id.A1);    //讀取輸入框A1至B1變數
        BuyStock = (EditText) findViewById(R.id.A2);    //讀取輸入框A2至B2變數
        BuyButton = (Button) findViewById(R.id.Abutton); //讀取button1按鈕為ButtonA
        BuyButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                BuyHandlingFee.setText(BuyHandlingFee());    //呼叫calculation函數
                BuyTotalPrice.setText(calculation1());    //呼叫calculation函數
            }
        });
        BuyHandlingFee = (TextView) findViewById(R.id.A3);  //B3回傳至A3顯示螢幕
        BuyTotalPrice = (TextView) findViewById(R.id.A4);  //B3回傳至A3顯示螢幕

        SellNumber = (EditText) findViewById(R.id.B1);    //讀取輸入框A1至B1變數
        SellStock = (EditText) findViewById(R.id.B2);    //讀取輸入框A2至B2變數
        SellButton = (Button) findViewById(R.id.Bbutton); //讀取button1按鈕為ButtonA
        SellButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                SellHandlingFee.setText(SellHandlingFee());    //呼叫calculation函數
                SellTotalPrice.setText(calculation2());    //呼叫calculation函數
            }
        });
        SellHandlingFee = (TextView) findViewById(R.id.B3);  //B3回傳至A3顯示螢幕
        SellTotalPrice = (TextView) findViewById(R.id.B4);  //B3回傳至A3顯示螢幕
        EarnButton = (Button) findViewById(R.id.C1); //讀取button1按鈕為ButtonA
        EarnButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TotalPrice.setText(TotalPrice());    //呼叫calculation函數
            }
        });
        TotalPrice = (TextView) findViewById(R.id.C2);  //B3回傳至A3顯示螢幕
    }
    private String TotalPrice(){
        double Ans = 0;
        double C1 = Double.valueOf(BuyTotalPrice.getText().toString());  //讀取B2至C2
        double C2 = Double.valueOf(SellTotalPrice.getText().toString());  //讀取B2至C2
        Ans = C2-C1;
        return String.valueOf(Ans);
    }
    private String BuyHandlingFee(){
        double Ans = 0;
        double C1 = Double.valueOf(BuyNumber.getText().toString());  //讀取B2至C2
        double C2 = Double.valueOf(BuyStock.getText().toString());  //讀取B2至C2
        Ans = C1 * C2*1.425;
        return String.valueOf(Ans);
    }
    private String calculation1(){
        double Ans = 0;
        double C1 = Double.valueOf(BuyNumber.getText().toString());  //讀取B2至C2
        double C2 = Double.valueOf(BuyStock.getText().toString());  //讀取B2至C2
        double C3 = Double.valueOf(BuyHandlingFee.getText().toString());  //讀取B2至C2
        Ans = C1 * C2*1000+C3;
        return String.valueOf(Ans);
    }
    private String SellHandlingFee(){
        double Ans = 0;
        double C1 = Double.valueOf(SellNumber.getText().toString());  //讀取B2至C2
        double C2 = Double.valueOf(SellStock.getText().toString());  //讀取B2至C2
        Ans = C1 * C2*4.425;
        return String.valueOf(Ans);
    }
    private String calculation2(){
        double Ans = 0;
        double C1 = Double.valueOf(SellNumber.getText().toString());  //讀取B2至C2
        double C2 = Double.valueOf(SellStock.getText().toString());  //讀取B2至C2
        double C3 = Double.valueOf(SellHandlingFee.getText().toString());  //讀取B2至C2
        Ans = C1 * C2*1000-C3;
        return String.valueOf(Ans);
    }
}
~~~~
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
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:orientation="vertical">

        <TextView
            android:id="@+id/textView5"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="Buy" />

        <LinearLayout
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:orientation="horizontal">

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <TextView
                    android:id="@+id/textView"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:text="張數" />

                <EditText
                    android:id="@+id/A1"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:ems="10"
                    android:inputType="number" />
            </LinearLayout>

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <TextView
                    android:id="@+id/textView2"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:text="股價*1000" />

                <EditText
                    android:id="@+id/A2"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:ems="10"
                    android:inputType="number" />
            </LinearLayout>

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <TextView
                    android:id="@+id/textView3"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:text="手續費(0.1425%) " />

                <TextView
                    android:id="@+id/A3"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:text="TextView" />

            </LinearLayout>

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <Button
                    android:id="@+id/Abutton"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:text="=" />
            </LinearLayout>

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <TextView
                    android:id="@+id/textView4"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:text="總價" />

                <TextView
                    android:id="@+id/A4"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:text="TextView" />

            </LinearLayout>
        </LinearLayout>

        <TextView
            android:id="@+id/textView6"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="Sell " />

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:layout_weight="1"
            android:orientation="horizontal">

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <TextView
                    android:id="@+id/textView"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:text="張數" />

                <EditText
                    android:id="@+id/B1"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:ems="10"
                    android:inputType="number" />

            </LinearLayout>

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <TextView
                    android:id="@+id/textView2"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:text="股價*1000" />

                <EditText
                    android:id="@+id/B2"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:ems="10"
                    android:inputType="number" />

            </LinearLayout>

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <TextView
                    android:id="@+id/textView3"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:text="手續費(0.4425%) " />

                <TextView
                    android:id="@+id/B3"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:text="TextView" />

            </LinearLayout>

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <Button
                    android:id="@+id/Bbutton"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:text="=" />
            </LinearLayout>

            <LinearLayout
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:orientation="vertical">

                <TextView
                    android:id="@+id/textView4"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:text="總價" />

                <TextView
                    android:id="@+id/B4"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:text="TextView" />

            </LinearLayout>
        </LinearLayout>

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:layout_weight="1"
            android:orientation="horizontal">

            <TextView
                android:id="@+id/textView9"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:text="Sell-Buy " />

            <Button
                android:id="@+id/C1"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:text="=" />

            <TextView
                android:id="@+id/C2"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:text="TextView" />

        </LinearLayout>

    </LinearLayout>

</androidx.constraintlayout.widget.ConstraintLayout>
~~~~
2019 09 27