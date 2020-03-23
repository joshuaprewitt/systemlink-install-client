$isoImg = "\\argo\ni\nipkg\feeds\ni-s\ni-systemlink-client\19.6.1\19.6.1.49152-0+f0\offline\ni-systemlink-client_19.6.1_offline.iso"
$driveLetter = "Y:"

$diskImg = Mount-DiskImage -ImagePath $isoImg -NoDriveLetter

$volInfo = $diskImg | Get-Volume

mountvol $driveLetter $volInfo.UniqueId

Start-Process -FilePath "Y:\Install.exe" -ArgumentList "--passive --accept-eulas --prevent-reboot" -Wait
