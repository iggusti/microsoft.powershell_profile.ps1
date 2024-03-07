# Definisi fungsi-fungsi untuk akses cepat ke profil PowerShell
function ShowProfilePS1 { bat $profile }
function EditProfilePS1nano { nano $profile }
function EditProfilePS1nvim { cd "C:\Users\DevTI-TelU\OneDrive\Dokumen\WIndowsPowerShell"; nvim . }
function EditProfilePS1notepad { notepad $profile }

function NewDirectory { param($Path) New-Item -ItemType Directory -Path $Path }
function RenameDirectory { param($OldPath,$NewName) Rename-Item -Path $OldPath -NewName $NewName }
function RemoveFileDirectory { param($Path) Remove-Item -Path $Path -Confirm:$false }

function SearchFile { param($FileName) Get-ChildItem -Recurse | ? { $_.Name -like "*$FileName*" } | select FullName }
function CreateNewFile { Set-Content -Path ($args[0]) -Value ($null) }
function RenameFile { param($OldName,$NewName) Rename-Item -Path $OldName -NewName $NewName }

function CompressItem { param($Path,$Destination) Compress-Archive -Path $Path -DestinationPath $Destination }
function ExpandZipFile { param($ZipFile,$Destination) Expand-Archive -Path $ZipFile -DestinationPath $Destination }
function CountFiles { param($Path) (Get-ChildItem -Path $Path -File | Measure-Object).Count }
function GetDirectorySize { param($Path) (Get-ChildItem $Path -Recurse | Measure-Object -Property Length -Sum).Sum / 1MB }

function TestInternetConnection { ping 8.8.8.8 }
function ExitPowerShell { exit }


# Definisi alias untuk akses cepat ke fungsi-fungsi profil PowerShell
Set-Alias -Name abc -Value ShowProfilePS1 -Description "Menampilkan isi dari file profil PowerShell."
Set-Alias -Name proflist -Value ShowProfilePS1 -Description "Alias lain untuk menampilkan isi dari file profil PowerShell."
Set-Alias -Name profeditnano -Value EditProfilePS1nano -Description "Membuka file profil PowerShell dalam nano."
Set-Alias -Name profeditnvim -Value EditProfilePS1nvim -Description "Membuka file profil PowerShell dalam Neovim."
Set-Alias -Name profeditnp -Value EditProfilePS1notepad -Description "Membuka file profil PowerShell dalam notepad."
Set-Alias -Name ga -Value Get-Alias -Description "Membuka list Alias"

Set-Alias -Name ndir -Value NewDirectory -Description "Membuat direktori baru di lokasi yang ditentukan."
Set-Alias -Name rndir -Value RenameDirectory -Description "Mengubah nama direktori."
Set-Alias -Name rmdirfile -Value RemoveFile -Description "Menghapus file atau direktori."

Set-Alias -Name sfile -Value SearchFile -Description "Mencari file berdasarkan nama atau pola tertentu."
Set-Alias -Name nfile -Value CreateNewFile -Description "Membuat file kosong di lokasi yang ditentukan."
Set-Alias -Name rnfile -Value RenameFile -Description "Mengubah nama file atau direktori."

Set-Alias -Name cmp -Value CompressItem -Description "Mengompresi file atau direktori menjadi arsip."
Set-Alias -Name exp -Value ExpandZipFile -Description "Mengekstrak file ZIP ke dalam direktori tujuan."
Set-Alias -Name cf -Value CountFiles -Description "Menghitung jumlah file di sebuah direktori."
Set-Alias -Name mb -Value GetDirectorySize -Description "Mendapatkan ukuran total direktori dalam megabyte."

Set-Alias -Name net -Value TestInternetConnection -Description "Memeriksa koneksi internet dan memberikan hasil dalam bentuk boolean (True/False)."
Set-Alias -Name about -Value Get-ComputerInfo -Description "Mendapatkan informasi sistem komputer."
Set-Alias -Name e -Value ExitPowerShell -Description "Keluar dari sesi PowerShell."


#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#


# Fungsi-fungsi untuk navigasi cepat ke direktori-direktori umum
function NavigateFE { cd "C:\Users\DevTI-TelU\Code\Work\Telkom University\Front End" }
function NavigateBE { cd "C:\Users\DevTI-TelU\Code\Work\Telkom University\Back End" }
function NavigateBaso { cd "C:\Users\DevTI-TelU\Code\Work\Telkom University\Front End\surat-online" }
function NavigateEmom { cd "C:\Users\DevTI-TelU\Code\Work\Telkom University\Front End\emom" }
function NavigateOneDataUSU { cd "C:\Users\DevTI-TelU\Code\Work\Telkom University\Front End\one-data-usu" }
function NavigateArsenic { cd "C:\xamppOld\htdocs\igracias-telu\branch\arsenic" }
function RunVSCode { code . }
function RunAngular { ng s -o }


# Definisi alias untuk akses cepat ke fungsi-fungsi navigasi dan pengembangan
Set-Alias -Name fe -Value NavigateFE -Description "Berpidah ke direktori 'Front End' pada proyek di Telkom University."
Set-Alias -Name be -Value NavigateBE -Description "Berpidah ke direktori 'Back End' pada proyek di Telkom University."
Set-Alias -Name baso -Value NavigateBaso -Description "Berpidah ke direktori proyek 'surat-online' di Telkom University."
Set-Alias -Name emom -Value NavigateEmom -Description "Berpidah ke direktori proyek 'emom' di Telkom University."
Set-Alias -Name onedatausu -Value NavigateOneDataUSU -Description "Berpidah ke direktori proyek 'one-data-usu' di Telkom University."
Set-Alias -Name arsenic -Value NavigateArsenic -Description "Berpidah ke direktori proyek 'arsenic' dalam XAMPP."
Set-Alias -Name c -Value RunVSCode -Description "Menjalankan Visual Studio Code di direktori saat ini."
Set-Alias -Name okgas -Value RunAngular -Description "Menjalankan aplikasi Angular di mode pengembangan."


#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#  Created by IGGusti  #-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#
