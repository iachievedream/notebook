<?php
class Server{
    const TOKEN = 'API';
    //响应前台的请求
     function respond(){
        //验证身份
       if (!(isset($_GET['t']) && isset($_GET['r']) && isset($_GET['ab'] ) )){
            echo "參數錯誤";
            exit;
        }
        $timeStamp = $_GET['t'];
        $randomStr = $_GET['r'];
        $signature = $_GET['ab'];
        $str = $this -> arithmetic($timeStamp,$randomStr);
        if($str != $signature){
            echo "代碼錯誤";
            exit;
        }
        //模拟数据
        $arr['name'] = 'api';
        $arr['age'] = 15;
        $arr['address'] = 'zz';
        $arr['ip'] = "192.168.0.1";
        echo json_encode($arr);
    }
    /**
     * @param $timeStamp 时间戳
     * @param $randomStr 随机字符串
     * @return string 返回签名
     */
     function arithmetic($timeStamp,$randomStr){
        $arr['timeStamp'] = $timeStamp;
        $arr['randomStr'] = $randomStr;
        $arr['token'] = self::TOKEN;
        //按照首字母大小写顺序排序
        sort($arr,SORT_STRING);
        //拼接成字符串
        $str = implode($arr);
        //进行加密
        $signature = sha1($str);
        $signature = md5($signature);
        //转换成大写
        $signature = strtoupper($signature);
        return $signature;
    }
}