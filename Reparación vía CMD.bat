.
echo on
msg /time:3 * "Vamos a ejecutar comandos de reparación de Windows"
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
DISM /Online /Cleanup-Image /RestoreHealth /Source:"H:\CD" /LimitAccess
DISM /online /cleanup-image /startcomponentcleanup
sfc /scannow
msg /time:2 * "Trabajo terminado!"
msg /time:4 * "Si el problema persiste, volver a ejecutar en MODO SEGURO CON FUNCIONES DE RED"
