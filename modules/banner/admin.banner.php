<?php
if(is_numeric(lz::$f[0]))
{
	require_once(dirname(__FILE__).'/admin.banner.view.php');
}
else
{
	require_once(dirname(__FILE__).'/admin.banner.home.php');
}
?>