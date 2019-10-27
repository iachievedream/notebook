建立物件
~~~
      class Employee
      {
        public $Name = 'FU';
        public function ShowName()
        {
          echo '這名員工的名字為'.$this->Name;
        }
      }
      $Obj = new Employee(); 
      $Obj->Name = 'AB';
      $Obj->ShowName();	  
~~~
使用static關鍵字::
~~~
    class MyMath 
    {
        public static function Cubic($X) 
      {
          return $X * $X * $X;
        }
      }  
  
      echo '5的三次方為'.MyMath::Cubic('5');
~~~
類別常數
~~~
      class Circle
      {
        const PI = 3.14;
    public $Radius;
        public function ShowArea()
        {
          echo '圓面積為'.($this->Radius * $this->Radius * self::PI);
        }
      }
      echo '圓周率為'.Circle::PI.'<br>';
      $Obj = new Circle(); 
      $Obj->Radius = 10;
      $Obj->ShowArea();  
~~~

~~~
    class Employee
      {
        public $Name;
    function __construct($Str) 
        {
          $this->Name = $Str;
          echo '已經建立名字為'.$this->Name.'的物件！';      
        }        
      }
      $Obj = new Employee('小紅豆');  
~~~
建構函式，解構函式
~~~
      class Employee
      {
        public $Name;           //定義名稱為Name的屬性以存放員工的名字
        function __construct($Str)      //透過建構函式指派員工的名字並顯示說明訊息
        {
          $this->Name = $Str; 
          echo '已經建立名字為'.$this->Name.'的物件！';
        }
        function __destruct()       //透過解構函式清除員工的名字並顯示說明訊息
        {
          $this->Name = NULL;         
          echo '這個物件已經被釋放！';     
        }           
      }
      $Obj = new Employee('小紅豆');     //建立物件 (會自動執行建構函式)
    $Obj = NULL;              //釋放物件 (會自動執行解構函式)
~~~

~~~
    class Employee
      {
        public $Name;
    function __construct($Str) 
        {
          $this->Name = $Str;          
        }        
      }
      $Obj1 = new Employee('小紅豆');
      $Obj2 = new Employee('小紅豆');
    $Obj3 = $Obj1;
    if($Obj2 == $Obj1) echo '$Obj2的成員與値均和$Obj1相同'.'<br>';
    else echo '$Obj2的成員或値和$Obj1不同'.'<br>';
      if($Obj2 === $Obj1) echo '$Obj2和$Obj1指向相同的案例'.'<br>';
    else echo '$Obj2和$Obj1指向不同的案例'.'<br>';
    if($Obj3 === $Obj1) echo '$Obj3和$Obj1指向相同的案例'.'<br>';
    else echo '$Obj3和$Obj1指向不同的案例'.'<br>';
~~~

~~~