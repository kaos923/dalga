# DALGA v0.5 - Apex 3 TKL tuş dalgası

## EXE yapmak (bir kere)
1. Python kurulu bir Windows PC'de `build_exe.bat` çift tıkla.
2. `dist\DALGA.exe` oluşur. Bu tek dosyayı istediğin PC'ye at; Python/driver kurmak gerekmez.

## Kullanım
- **BAŞLAT / DURDUR**: efekti açar/kapatır. Durdurunca klavye serbest kalır.
- **Klavyenin kendi ayarına dön**: DALGA'yı durdurur, klavyeyi bırakır, SteelSeries GG kuruluysa onu açar (profilini yeniden uygular).
- SteelSeries GG açıksa BAŞLAT'a basınca sorar, istersen kapatıp devam eder.
- DALGA hiçbir sürücü kurmaz/değiştirmez; klavyeyle Windows'un kendi HID arayüzünden konuşur. Silmek = dosyayı silmek.

## Dosyalar
- Ayarlar: `%APPDATA%\Dalga\ayarlar.json` (exe yanına `ayarlar.json` koyarsan taşınabilir mod)
- Hata kaydı: `%APPDATA%\Dalga\dalga.log`

## Uyumluluk
Sadece **Apex 3 TKL** denendi. Başka model için `ayarlar.json` içine `"ek_pid": ["0x...."]` ekleyip denenebilir, garanti yok.

## Antivirüs uyarısı
Tuş dinleyen + PyInstaller ile paketlenen her program bazen yanlış alarm verir. Uyarırsa Defender'da klasörü istisna yap ya da `--onefile` yerine `--onedir` kullan.

instagram : savcizz

## Python kurmadan exe üretmek (GitHub ile)
1. github.com'da ücretsiz hesap aç, yeni bir repo oluştur.
2. Bu klasördeki tüm dosyaları (`.github` klasörü dahil) repoya yükle.
3. Repoda **Actions → DALGA exe → Run workflow** de.
4. 1-2 dakika sonra çalıştırma sayfasının altındaki **Artifacts → DALGA-exe** dosyasını indir, zip'ten `DALGA.exe` çıkar.
