
Write-Output '-- WSUS CONFIGURATION - START --'

$Tgg = "Build"
$Wup = "http://winupdate.oy.gb.sportingindex.com:8530" # primary WSUS server
$Wur = "http://winupdate.oy.gb.sportingindex.com:8530" # secondary WSUS server (use primary, if only one!)

#Stop all before the magic can happen
Write-Output "Stoping WSUS services"
stop-service wuauserv -Force
stop-service bits -Force
stop-service usosvc -Force
stop-service cryptsvc -Force

#Removing all old
Write-Output "Remove old updates"
Remove-item -Path 'C:\windows\SoftwareDistribution' -Recurse -Force -Confirm:$false -ErrorAction SilentlyContinue
Remove-item -Path 'C:\windows\SoftwareDistribution\Datastore' -Recurse -Force -Confirm:$false -ErrorAction SilentlyContinue
Remove-item -Path 'C:\windows\SoftwareDistribution\Download' -Recurse -Force -Confirm:$false -ErrorAction SilentlyContinue

#Force set WU client settings
Write-Output "Configure WSUS"
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name TargetGroup -Value $Tgg -PropertyType "String" -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name WUServer -Value $Wup -PropertyType "String" -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name WUStatusServer -Value $Wup -PropertyType "String" -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name UpdateServiceUrlAlternate -Value $Wur -PropertyType "String" -Force -ErrorAction SilentlyContinue

New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name TargetGroupEnabled -Value 1 -PropertyType DWord -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name DoNotConnectToWindowsUpdateInternetLocations -Value 1 -PropertyType DWord -Force -ErrorAction SilentlyContinue

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name UseWUServer -Value 1 -PropertyType DWord -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name NoAutoUpdate -Value 1 -PropertyType DWord -Force -ErrorAction SilentlyContinue

#Start all necessary services
Write-Output "Starting WSUS services"
start-service wuauserv
start-service bits
start-service usosvc
start-service cryptsvc

#TODO: disabled actual updates, as it is handled by another provisioner
# #Detect and reset auth
# Write-Output "Querying WSUS for updates"
# start-sleep -s 60
# cmd /c "wuauclt /resetauthorization /detectnow"

# $updatesession =  [activator]::CreateInstance([type]::GetTypeFromProgID("Microsoft.Update.Session",$env:COMPUTERNAME))
# $updatesearcher = $updatesession.CreateUpdateSearcher()
# try{
# $searchresult = $updatesearcher.Search("IsInstalled=1")
# } Catch {}
# if(!$searchresult){
#     stop-service wuauserv -force
#     Start-Service wuauserv
#     start-sleep -s 60

#     $updatesession =  [activator]::CreateInstance([type]::GetTypeFromProgID("Microsoft.Update.Session",$env:COMPUTERNAME))
#     $updatesearcher = $updatesession.CreateUpdateSearcher()
#     $searchresult = $updatesearcher.Search("IsInstalled=1")

# }

# Write-Output "Sending reports to WSUS server"
# start-sleep -s 60
# cmd /c "wuauclt /reportnow"

Write-Output '-- WSUS CONFIGURATION - END --'