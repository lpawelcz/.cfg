#aliast for config repo
alias config='/usr/bin/git --git-dir=/home/pczarnecki/.cfg/ --work-tree=/home/pczarnecki'

alias makegcc='make gcc/download'
alias makelitex='make litex/gen'
alias makexc3='make xc3/compile'
alias makeupload='make litex/upload'
alias pico='sudo picocom -b 115200 /dev/ttyUSB1 --imap lfcrlf'

alias makeclean='make gcc/clean ; make litex/clean ; make xc3/clean'

alias makenv='source ~/work/litex-vexriscv-build/zephyr/zephyr-env.sh'
alias cmakelitex='cmake -DBOARD=litex_vexriscv ..'
alias litexterm='wget https://raw.githubusercontent.com/enjoy-digital/litex/190ff89aaa120cc983ccaeb1077ba1d23f00e37c/litex/tools/litex_term.py ; chmod 755 litex_term.py'
alias ldzephyr='sudo ./litex_term.py --serial-boot --kernel ~/work/litex-vexriscv-build/zephyr/samples/hello_world/build/zephyr/zephyr.bin /dev/ttyUSB1'
alias zephyr='cd .. && rm -rf build && makenv && mkdir build && cd build && litexterm && cmakelitex && make -j 8 && sudo ./litex_term.py --serial-boot --kernel ~/work/litex-vexriscv-build/zephyr/samples/drivers/clock_control/build/zephyr/zephyr.bin /dev/ttyUSB1'
alias zephyr_soft='cmakelitex && make -j 8 && sudo ./litex_term.py --serial-boot --kernel ~/work/litex-vexriscv-build/zephyr/samples/drivers/clock_control/build/zephyr/zephyr.bin /dev/ttyUSB1'
alias rldzephyr='make ; sudo ./litex_term.py --serial-boot --kernel ~/work/litex-vexriscv-build/zephyr/samples/drivers/clock_control/build/zephyr/zephyr.bin /dev/ttyUSB1'
alias linuxbuild='./make.py --board=arty --build'
alias linuxload='./make.py --board=arty --load'
alias ethinit='sudo ifconfig enx00e04c34f4f9 192.168.1.100'
alias cpimg='cp arch/riscv/boot/Image /tftpboot/'
alias cpdtb='cp arch/riscv/boot/dts/litex_vexriscv_arty.dtb /tftpboot/rv32.dtb'
alias cpkern='cpimg && cpdtb'
alias makern='make && ( cpkern && echo copied files ) || echo copying files prevented, build error'
alias make='make -j 8'

alias ll='ls -l'
alias lla='ls -la'
