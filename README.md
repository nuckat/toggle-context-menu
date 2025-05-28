# toggle-context-menu
A `.bat` script I made to toggle between the legacy Windows 10 right-click context menu and the newer Windows 11 style. It also automatically restarts Windows Explorer so changes take effect immediately.

This is primarily a personal backup, but feel free to use it however you please. I am not responsible for your system

---

## 📋 Credits

This mostly is just to back this up for future reference as a backup. Credits to [Sumit D - VM](https://answers.microsoft.com/en-us/profile/8b836f17-c1e9-4b5a-98cc-520ecfc08aaa) via the [Microsoft Answer's Community](https://answers.microsoft.com/en-us/windows/forum/all/restore-old-right-click-context-menu-in-windows-11/a62e797c-eaf3-411b-aeec-e460e6e5a82a) for the original registry command listed below. 

```reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve```

---
