<!---預告片-->
<style>
.btns{
  display:flex;
}
.nav{
  display:flex;
  width:320px;
  overflow:hidden;
}
.icon{
  width:80px;
  flex-shrink:0;
  text-align:center;
  position:relative;
}
.icon img{
  width:50px;
  cursor:pointer;
}

.control{
  width:45px;
  font-size:45px;
  text-align:center;
  cursor: pointer;
}
.poster{
  border: 1px solid white;
  width:200px; 
  height:260px;
  margin: 0 auto 20px auto;
  position: relative;
}
.po{
  width: 100%;
  height: 100%;
  background: white;
  position: absolute;
  display:none;
}
.po img{
  width: 100%;

}

</style>

<?php
$po=new DB("poster");

//取出設定為顯示並排序過的資料
$rows=$po->all(['sh'=>1]," order by `rank`");


?>
<div class="half" style="vertical-align:top;">
      <h1>預告片介紹</h1>
      <div class="rb tab" style="width:95%;">
        
        <div class="poster" > 
             <?php
                foreach($rows as $k=>$row){
                  echo "<div class='po' data-ani='$row[ani]'>";
                  echo "<img src='img/".$row['path']."'>";
                  echo "<div class='ct' style='color:black;'>".$row['name']."</div>";
                  echo "</div>";
          
                }
             ?>
        </div>

        <div class="btns">
          <div class='control' onclick="shift('left')">&#9664;</div>
          <div class="nav">
          <?php
          foreach($rows as $k=> $row){
            echo "<div class='icon'>";
            echo "<img src='img/".$row['path']."'>";
            echo "</div>";
          }

          ?>
          </div>
          <div class='control' onclick="shift('right')">&#9654;</div>



        </div>
      </div>
    </div>

    <script>
            $(".po").eq(0).show();
            
            let auto=setInterval(() => {
                slider()
            }, 3000);

            function slider(){
              let dom=$(".po:visible");
              // let ani=$(dom).data('ani');      //這個ani資料型態是數字。
              let ani=$(dom).attr("data-ani");    //這個ani資料型態是文字。
              let next=$(dom).next();
              if(next.length<=0){
                next=$(".po").eq(0);
              }

              // console.log(dom,ani,next);
              switch (ani){
                case '1':
                  //淡入淡出
                  $(dom).fadeOut(1000,function(){   //這種語法結構叫做回呼函式，動作fadeOut做完，fadeIn才會執行。
                    $(next).fadeIn(1000);
                  });
                break;
                case '2':
                  //放大縮小
                  $(dom).hide(2000);        //這裡故意示範若不用回呼函式，動作就會有重疊，視覺較不合乎認知。
                  $(next).show(2000);
                break;
                case '3':
                  //滑入滑出
                  $(dom).slideUp(1000,function(){
                    $(next).slideDown(1000);
                  });
                break;
                case '4':
                  //縮放
                  $(dom).animate({width:0,height:0,left:100,top:130},function(){
                    $(next).css({width:0,height:0,left:100,top:130})
                    $(next).show();
                    $(next).animate({width:200,height:260,left:0,top:0})
                    $(dom).hide();
                    $(dom).css({width:200,height:260,left:0,top:0});
                  });

              }
            }


            $(".icon").on("click",function(){
              
              let index=$(".icon").index($(this))    //index函式jQuery
              $(".po").hide();
              $(".po").eq(index).show();
            })

            $(".nav").hover(
              function(){
                clearInterval(auto)
              },
              function(){
                auto=setInterval(slider,3000);
              }
            )


            let p=0;
            // let total=PHP短標籤 count($rows) PHP短標籤 ;   //php方式的話，結尾一定要加 ;中斷。
            let total=$(".icon").length;
            function shift(direct){
                  switch(direct){
                    case 'right':
                      if(p <(total-4)){
                        p++;
                        $(".icon").animate({right:80*p},2000);    //animate({right:80})  是指移動到(-80,0)座標。
                      }
                    break;
                    case 'left':
                      if(p > 0){
                        p--;
                        $(".icon").animate({right:80*p})   //沒有寫毫秒，Default:1000
                      }
                    break;
                  }
            }

    </script>
<style>
  .mb{
    background: #444;
    width: 48%;
    height: 160px;
    display: inline-block;
    margin: 0.5%;
  }
  
</style>

  <!---院線片-->  
    <div class="half">
      <h1>院線片清單</h1>
      <div class="rb tab" style="width:95%;">
        <?php
          $db=new DB("movie");
          $ondate=date("Y-m-d",strtotime("-2 days"));
          $today=date("Y-m-d");
          $total=$db->count(['sh'=>1]," && ondate >= '$ondate' && ondate <='$today'");
          $div=4;
          $pages=ceil($total/$div);
          $now=(!empty($_GET['p']))?$_GET['p']:1;
          $start=($now-1)*$div;
          $rows=$db->all(['sh'=>1]," && ondate >= '$ondate' && ondate <='$today' order by rank limit $start,$div");

          foreach($rows as $row){
        ?>
          <div class="mb">
            <table>
              <tr>
                <td rowspan="3"> <img src="img/<?=$row['poster'];?>" style="width:80px;height:100px;"> </td>
                <td><?=$row['name'];?></td>
              </tr>
              <tr>
                <td> <img src="icon/<?=$row['level'];?>.png" style="width:15px;"><?=$level[$row['level']];?></td>
              </tr>
              <tr>
                <td><?=$row['ondate'];?></td>
              </tr>
            </table>
            <div>
              <button onclick="location.href='?do=intro&id=<?=$row['id'];?>'">劇情簡介</button>
              <button onclick="location.href='?do=order&id=<?=$row['id'];?>'">線上訂票</button>
            </div>
          </div>
        <?php
        }
        ?>
          <div class="ct"> 
          <?php
          for($i=1;$i<=$pages;$i++){
              $font=($i==$now)?'24px':'18px';
            echo "<a href='?p=$i' style='font-size:$font;text-decoration:none;'> $i </a>";
          }

          ?>
          </div>
      </div>
    </div>
          
        

    