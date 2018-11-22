<?php
function debuglog($wsTxt) {
  $myfile = file_put_contents('debug.log', $wsTxt.PHP_EOL , FILE_APPEND | LOCK_EX);
}

?>
