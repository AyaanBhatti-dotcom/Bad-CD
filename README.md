# BADCD - Fake System Installer CD

A harmless prank CD that displays a scary-looking fake system installer when inserted into a Windows 7 VM.

## ⚠️ IMPORTANT
This is **completely harmless** - it only displays fake messages and does not actually modify your system or extract any data. It's designed for educational purposes and pranks only.

## Features
- Auto-runs when CD is inserted (Windows 7 autorun)
- Fake GUI installer interface
- Scary-looking but harmless batch files that simulate:
  - Virus scanning
  - Registry modifications
  - System file injection
  - Data extraction

## How to Create the CD

### For Windows:
1. Burn all files from this directory to a CD
2. Make sure `autorun.inf` is in the root of the CD
3. Insert the CD in your Windows 7 VM
4. Autorun should execute automatically

### For macOS/Linux:
1. Create an ISO image:
   ```bash
   mkisofs -o badcd.iso -J -R -V "BADCD Installation" .
   ```
2. Mount the ISO in your Windows 7 VM
3. The autorun should execute

## Files Included
- `autorun.inf` - Windows autorun configuration
- `installer.bat` - Main fake installer that orchestrates everything
- `virus_scanner.bat` - Fake virus scanning simulation
- `system_infect.bat` - Fake registry modification simulation
- `data_extract.bat` - Fake data extraction simulation

## Note
Windows 7 VM must have autorun enabled (default setting). If autorun is disabled, the user can manually run `installer.bat` from the CD.

## Safety
All scripts are completely safe and only display fake messages. No actual system modifications or file operations are performed.

