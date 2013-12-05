# From the System.Net namespace
$wc   = New-Object Net.WebClient
$rss  = $wc.DownloadString("http://dougfinke.com/blog/?feed=rss2")
$feed = [xml]$rss 

$feed.rss.Channel.Item | ForEach {$_.title}
