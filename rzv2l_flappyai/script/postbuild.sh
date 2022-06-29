echo "Post build script started"
test $projName != "" ; filename=$projName
test $PROJNAME != "" ; filename=$PROJNAME

arm-none-eabi-objcopy -O binary -j .secure_vector ${filename}.elf ${filename}_secure_vector.bin
arm-none-eabi-objcopy -O binary -j .non_secure_vector ${filename}.elf ${filename}_non_secure_vector.bin
arm-none-eabi-objcopy -O binary -j .secure_code ${filename}.elf ${filename}_secure_code.bin
arm-none-eabi-objcopy -O binary -j .non_secure_code -j .data ${filename}.elf ${filename}_non_secure_code.bin

echo "Post build script complete"
