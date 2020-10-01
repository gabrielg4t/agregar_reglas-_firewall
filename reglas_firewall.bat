@echo off
COLOR 0A
MODE con:cols=80 lines=20

cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo   Agregando Reglas Firewall
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎ
echo ³                                          ³
echo ³ [ 10%% ] ²²²Û°°°°°°°°°°°°°°°°°°°°°°°°°°°° ³
echo ³                                          ³
echo ³        Agregando reglas ICAAV            ³
echo ³                                          ³
echo ³  Abriendo Puertos: 2638-2641             ³
echo ³                    49150-49158           ³
echo ³                                          ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                 [ github.com/rdz-lab ]
echo.
echo.
netsh advfirewall firewall add rule name="Bases ICAAV TCP" dir=in action=allow protocol=TCP localport=2638-2641,49150-49158
netsh advfirewall firewall add rule name="Bases ICAAV UDP" dir=in action=allow protocol=UDP localport=2638-2641,49150-49158
timeout -t 2 >> nul
exit

