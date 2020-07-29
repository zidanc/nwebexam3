<?php
include_once "../base.php";


  $db=new DB('movie');
  $rows=$db->all([]," order by rank DESC");       //ASC 表示結果是由小至大排列； DESC 表示由大至小排列。
  foreach($rows as $k => $row){
    $prev=($k!=0)?$rows[$k-1]['id']:$row['id'];
    $next=($k!=(count($rows)-1))?$rows[$k+1]['id']:$row['id'];
  
?>
    <div class="movie-item">
      <div style="vertical-align:super;"><img src="img/<?=$row['poster'];?>" style="width:98px;"></div>
      <div>分級: <img src="icon/<?=$row['level'].'.png';?>"> </div>
      <div>
        <div>
            <span>片名:<?=$row['name'];?></span>
            <span>片長:<?=$row['length'];?></span>
            <span>上映時間:<?=$row['ondate'];?></span>
        </div>
        <div>
          <button onclick="sh('movie',<?=$row['id'];?>)"><?=($row['sh']==1)?"顯示":"隱藏";?></button>
          <button class="shift" data-rank="<?=$row['id']."-".$prev;?>">往上</button>
          <button class="shift" data-rank="<?=$row['id']."-".$next;?>">往下</button>
          <button onclick="location.href='?do=edit_movie&id=<?=$row['id'];?>'">編輯電影</button>
          <button onclick="del('movie',<?=$row['id'];?>)">刪除電影</button>
        </div>
        <div>劇情簡介:<?=$row['intro'];?></div>
      </div>
    </div>  
<?php
}
?>