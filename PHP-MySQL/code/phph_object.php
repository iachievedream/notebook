<?php
class Employee
{
  public $Name = '小丸子';
  public function ShowName()
  {
    echo '這名員工的名字為'.$this->Name;
  }
}
$Obj = new Employee(); 
$Obj->Name = '花輪';
$Obj->ShowName();	  
?>