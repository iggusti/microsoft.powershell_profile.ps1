oh-my-posh --init --shell pwsh --config ~\AppData\Local\Programs\oh-my-posh\themes\tokyo.omp.json | Invoke-Expression
Import-Module -Name Terminal-Icons

# Definisi fungsi-fungsi untuk akses cepat ke profil PowerShell
function ShowProfilePS1 { bat $profile }
function EditProfilePS1nano { nano $profile }
function EditProfilePS1nvim { cd "~\OneDrive\Dokumen\WindowsPowerShell"; nvim . }
function EditProfilePS1notepad { notepad $profile }
function PushToGithubPS1 { cd "~\OneDrive\Dokumen\WindowsPowerShell"; git add .; git commit -m "update Microsoft.PowerShell_profile.ps1"; git push; git log --pretty='%C(cyan)%ad %C(yellow)%h %C(cyan)%d %Creset%s' --date-order --graph --date=iso }

function NewDirectory { param($Path) New-Item -ItemType Directory -Path $Path }
function RenameDirectory { param($OldPath,$NewName) Rename-Item -Path $OldPath -NewName $NewName }

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
Set-Alias -Name pushprofile -Value PushToGithubPS1 -Description "Push ke Github $profile"

Set-Alias -Name ndir -Value NewDirectory -Description "Membuat direktori baru di lokasi yang ditentukan."
Set-Alias -Name rndir -Value RenameDirectory -Description "Mengubah nama direktori."

Set-Alias -Name sfile -Value SearchFile -Description "Mencari file berdasarkan nama atau pola tertentu."
Set-Alias -Name nfile -Value CreateNewFile -Description "Membuat file kosong di lokasi yang ditentukan."
Set-Alias -Name touch -Value CreateNewFile -Description "Alias lain membuat file kosong di lokasi yang ditentukan."
Set-Alias -Name rnfile -Value RenameFile -Description "Mengubah nama file atau direktori."

Set-Alias -Name cmp -Value CompressItem -Description "Mengompresi file atau direktori menjadi arsip."
Set-Alias -Name exp -Value ExpandZipFile -Description "Mengekstrak file ZIP ke dalam direktori tujuan."
Set-Alias -Name cf -Value CountFiles -Description "Menghitung jumlah file di sebuah direktori."
Set-Alias -Name mb -Value GetDirectorySize -Description "Mendapatkan ukuran total direktori dalam megabyte."

Set-Alias -Name net -Value TestInternetConnection -Description "Memeriksa koneksi internet dan memberikan hasil dalam bentuk boolean (True/False)."
Set-Alias -Name about -Value Get-ComputerInfo -Description "Mendapatkan informasi sistem komputer."
Set-Alias -Name a -Value neofetch -Description "Mendapatkan informasi sistem komputer menggunakan neofetch."
Set-Alias -Name e -Value ExitPowerShell -Description "Keluar dari sesi PowerShell."


#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#


# Fungsi-fungsi untuk navigasi cepat ke direktori-direktori umum
function RemovePSReadLineOption { notepad (Get-PSReadLineOption).HistorySavePath }
function NavigateSelfTaught { cd "~\Code\Self-Taught" }
function NavigateFE { cd "~\Code\Work\Telkom University\Front End" }
function NavigateBE { cd "~\Code\Work\Telkom University\Back End" }
function NavigateBaso { cd "~\Code\Work\Telkom University\Front End\surat-online" }
function NavigateEmom { cd "~\Code\Work\Telkom University\Front End\emom" }
function NavigateOneDataUSU { cd "~\Code\Work\Telkom University\Front End\one-data-usu" }
function NavigateRIS { cd "~\Code\Work\Telkom University\Front End\regulation-information-system" }
function NavigateArsenic { cd "C:\xamppOld\htdocs\igracias-telu\branch\arsenic"; code .; start . }
function ViewGitPrettyLog { git log --pretty='%C(cyan)%ad %C(yellow)%h %C(cyan)%d %Creset%s' --date-order --graph --date=iso }
function RunVSCode { code . }
function RunAngular { ng s }
function RunAngularOpen { ng s -o }


# Definisi alias untuk akses cepat ke fungsi-fungsi navigasi dan pengembangan
Set-Alias -Name fixHistory -Value RemovePSReadLineOption -Description "Memperbaiki history yang salah."
Set-Alias -Name mine -Value NavigateSelfTaught -Description "Berpindah ke direktori peroyek pribadi."
Set-Alias -Name fe -Value NavigateFE -Description "Berpindah ke direktori 'Front End' pada proyek di Telkom University."
Set-Alias -Name be -Value NavigateBE -Description "Berpindah ke direktori 'Back End' pada proyek di Telkom University."
Set-Alias -Name baso -Value NavigateBaso -Description "Berpindah ke direktori proyek 'surat-online' di Telkom University."
Set-Alias -Name emom -Value NavigateEmom -Description "Berpindah ke direktori proyek 'emom' di Telkom University."
Set-Alias -Name onedatausu -Value NavigateOneDataUSU -Description "Berpindah ke direktori proyek 'one-data-usu' di Telkom University."
Set-Alias -Name onedatausu -Value NavigateRIS -Description "Berpindah ke direktori proyek 'ris' di Telkom University."
Set-Alias -Name arsenic -Value NavigateArsenic -Description "Berpindah ke direktori proyek 'arsenic' dalam XAMPP."
Set-Alias -Name gitprettylog -Value ViewGitPrettyLog -Description "Melihat Log Github terkini."
Set-Alias -Name c -Value RunVSCode -Description "Menjalankan Visual Studio Code di direktori saat ini."
Set-Alias -Name okgas -Value RunAngular -Description "Menjalankan aplikasi Angular di mode pengembangan."
Set-Alias -Name okegas -Value RunAngularOpen -Description "Alias lain untuk menjalankan Angular di mode pengembangan, lalu open browser."

#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#  Created by IGGusti  #-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#
