<?php
include_once "../base.php";
?>

<h3 class="ct">訂單清單</h3>
<div>
  快速刪除:
  <input type="radio" name="bydate" id="bydate">
  依日期
  <input type="text" name="date" id="date">
  依電影
  <input type="radio" name="bymovie" id="bymovie">
  <select name="movie" id="movie">

  </select>
  <button>刪除</button>
  
</div>
<ul>
  <li>訂單編號</li>
  <li>電影名稱</li>
  <li>日期</li>
  <li>場次時間</li>
  <li>訂購數量</li>
  <li>訂購位置</li>
  <li>操作</li>
</ul>


<?php
$orders=$Ord->all([]," order by no DESC");

foreach($orders as $ord){
?>
<ul>
  <li><?=$ord['no'];?></li>
  <li><?=$ord['movie'];?></li>
  <li><?=$ord['date'];?></li>
  <li><?=$ord['session'];?></li>
  <li><?=$ord['qt'];?></li>
  <li><?=$ord['seat'];?></li>
  <li><button>刪除</button></li>
</ul>

<?php
}


?>
<div>

</div>