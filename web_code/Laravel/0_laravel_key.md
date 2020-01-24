Laravel>>.env>>先去mysql新增一個資料庫(laravel)
_____________>>php artisan key:generate
____資料表指令>>php artisan make:migration create_todos_table
_____________>>laravel/database/migrations/2020_01_12_050222_create_messages_table.php
Laravel>>由路(routes/web.php)
Laravel>>Model 模型(app/User.php)


<?php
var_dump($admin);die(); 
?>

@if($post->user === $auth or !$posts === $admin)

@if($post->user === $admin)


@if(($post->user === $admin) and (isset($posts)))

@else
<td><a class="btn btn-info" href="post/{{$post->id}}/edit" role="button">1qaz</a></td>

@endif


php artisan make:middleware admin
