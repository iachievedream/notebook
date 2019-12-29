![image](https://github.com/iachievedream/notebook/blob/master/picture/Android_Studio_second_page.png)
~~~
package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btn = (Button)findViewById(R.id.button);
        /** 按鈕註冊的功能*/
        btn.setOnClickListener(AA);
    }
    View.OnClickListener AA = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            /**從MAIN 跳到 SECOND 頁面*/
            Intent intent = new Intent(MainActivity.this,Main2Activity.class);

			//從Ａ頁跳到Ｂ頁，傳遞資料
			//放資料
			Intent intent = new Intent(AActivity.this, BActivity.class);
			intent.putExtra("book_name", "HKT 線上教室");
			startActivity(intent);

			//取資料
			Intent intent = getIntent();
			String book_name = intent.getStringExtra("book_name");  


            /** 啟動intent */
            startActivity(intent);
        }
    };
}

~~~

~~~
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".MainActivity">

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hello World!"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <Button
        android:id="@+id/button"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Button"
        tools:layout_editor_absoluteX="16dp"
        tools:layout_editor_absoluteY="100dp" />

</androidx.constraintlayout.widget.ConstraintLayout>
~~~
