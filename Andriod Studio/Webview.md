![image](https://github.com/iachievedream/notebook/blob/master/picture/Webview.png)
<br>
<br>
manifest/AndroidManifest.xml<br>
<br>
添加關鍵<br>
    <uses-permission android:name="android.permission.INTERNET" /><br>
        android:usesCleartextTraffic="true"
~~~
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.webview">
    <!--    以下添加-->
    <uses-permission android:name="android.permission.INTERNET" />
    <application
        android:usesCleartextTraffic="true"
        android:allowBackup="true"
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        android:roundIcon="@mipmap/ic_launcher_round"
        android:supportsRtl="true"
        android:theme="@style/AppTheme">
        <!--        第一行添加-->
        <activity android:name=".MainActivity">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />

                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>

</manifest>
~~~
<br>
<br>
MainActivity.java<br>
~~~
package com.example.webview;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class MainActivity extends AppCompatActivity {
    WebView webView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        WebView webview = (WebView) findViewById(R.id.web_view);
        webview.getSettings().setJavaScriptEnabled(true);
        webview.setWebViewClient(new WebViewClient()); //不調用系統瀏覽器
        webview.loadUrl("https://www.google.com.tw/");
    }
}
~~~
<br>
<br>
Layout/activity_main.xml<br>
~~~
<?xml version="1.0" encoding="utf-8"?>
<!--重拉樣板-->
<WebView xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/web_view"
    android:layout_width="match_parent"
    android:layout_height="match_parent">
</WebView>
~~~
<br>
<br>
res/values/styles.xml<br>
~~~
<resources>
    <style name="AppTheme" parent="Theme.AppCompat.Light.NoActionBar"><!-- 全屏 -->
		<!--    <style name="AppTheme" parent="Theme.AppCompat.Light.DarkActionBar">-->
        <!-- Customize your theme here. -->
        <item name="colorPrimary">@color/colorPrimary</item>
        <item name="colorPrimaryDark">@color/colorPrimaryDark</item>
        <item name="colorAccent">@color/colorAccent</item>
    </style>
</resources>
~~~
<br>
<br>
2019 09 28