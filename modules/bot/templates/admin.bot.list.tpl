<div id="barsearch" align="right"><div style="float:left; margin:5px">ผลลัพธ์ <?php echo number_format($this->count)?> รายการ
<?php if($this->btime['tmin']!=$this->btime['tmax']):?> ( ข้อมูลเื่มื่อ <?php echo time::show($this->btime['tmin'],'datetime')?> - <?php echo time::show($this->btime['tmax'],'datetime')?> )<?php endif?></div><form onSubmit="search2();return false">ค้นหา <input type="text" id="search" class="tbox" value="<?php echo $this->search?>" size="15" /> เรียงโดย <select id="order"  class="tbox"><?php foreach($this->allorder as $key=>$value){?><option value="<?php echo $key?>" <?php echo $this->order==$key?'selected=\'selected\'':''?>><?php echo $value?></option><?php }?></select> จาก <select id="by" class="tbox"><?php foreach($this->allby as $key=>$value){?><option value="<?php echo $key?>" <?php echo $this->by==$key?'selected=\'selected\'':''?>><?php echo $value?></option><?php }?></select><input type="submit" id="find" value="" /></form></div>
<div style="padding:5px;">
<table cellpadding="5" cellspacing="1" border="0" width="100%" class="tbservice">
<tr align="center">
<?php foreach($this->allorder as $key=>$val):?>
<th> &nbsp; <?php echo $val?> <?php if($this->order!=$key||$this->by!='asc'):?><a href="javascript:;" onClick="order('<?php echo $key?>','asc');return false" class="order"><img src="<?php echo HTTP?>static/images/asc.gif" /></a><?php endif?><?php if($this->order!=$key||$this->by!='desc'):?><a href="javascript:;" onClick="order('<?php echo $key?>','desc');return false" class="order"><img src="<?php echo HTTP?>static/images/desc.gif" /></a><?php endif?></th>
<?php endforeach?>
    </tr>
<?php for($i=0;$i<count($this->bot);$i++):?>
<tr align="center">
<?php foreach($this->allorder as $key=>$val):?>
<?php if(in_array($key,array('title'))):?>
<?php echo $this->html->td('bot_title_'.$this->bot[$i]['asin'],$this->bot[$i]['title'],'input',array('class'=>'tab_'.$key))?>
<?php elseif($key=='s'):?>
<td width="60" class="tab_<?php echo $key?>"><img src="<?php echo $this->bot[$i]['s']?>" /> </td>
<?php elseif(in_array($key,array('added','time'))):?>
<td class="tab_<?php echo $key?>"><?php echo time::show($this->bot[$i][$key],'datetime')?></td>
<?php else:?>
<td class="tab_<?php echo $key?>"><?php echo $this->bot[$i][$key]?></td>
<?php endif?>
<?php endforeach?>
   </tr>
<?php endfor?>
</table></div><br /><?php echo $this->pager?><br />
<div align="center"><input type="button" class="submit" value="  เคลียร์ข้อมูล " onClick="if(confirm('คุณต้องการเคลียร์ข้อมูลนี้ทั้งหมดหรือไม่'))ajax_bclear()"></div>
