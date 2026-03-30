,@echo off
start "" "C:\Desktop\DrainMaster\1.txt"
:loop
:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,0,0,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,500,0,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,1000,0,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,1500,0,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,0,400,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,500,400,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,1000,400,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,1500,400,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,0,800,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,500,800,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,1000,800,500,400,$true)"

:: Abre um novo cmd e roda curl
start "" cmd /k "curl parrot.live"

:: Espera a janela abrir
timeout /t 1 >nul

:: Move a janela recém-aberta para o canto superior esquerdo
powershell -Command "$hwnd = (Get-Process cmd | Sort-Object StartTime -Descending | Select-Object -First 1).MainWindowHandle; Add-Type -Name Win -Namespace Native -MemberDefinition '[DllImport(\"user32.dll\")]public static extern bool MoveWindow(IntPtr hWnd,int X,int Y,int Width,int Height,bool Repaint);'; [Native.Win]::MoveWindow($hwnd,1500,800,500,400,$true)"


goto loop