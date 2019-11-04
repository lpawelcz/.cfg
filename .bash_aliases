#aliast for config repo
alias config='/usr/bin/git --git-dir=/home/korzen/.cfg/ --work-tree=/home/korzen'

alias ll='ls -l'
alias lla='ls -la'
alias makef='make -j 8'
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gd='git diff'

alias toradex-zephyr='cmake -B build -DBOARD=colibri_imx7d_m4 && make -C build && sudo mount -L BOOT /mnt/boot -v && sudo mount -L rootfs /mnt/rootfs -v && sudo cp -v build/zephyr/zephyr.bin /mnt/rootfs/ && sudo umount /mnt/{boot,rootfs} -v && echo all gut'

alias toradex-linux='sudo mount -L BOOT /mnt/boot -v && sudo mount -L rootfs /mnt/rootfs -v && sudo cp -r -v rootfs/* /mnt/rootfs && sudo cp -L -v colibri-imx7_bin/zImage /mnt/boot && sudo cp -L -v colibri-imx7_bin/imx7d-colibri-aster.dtb /mnt/boot/imx7d-colibri-emmc-eval-v3.dtb && sudo umount /mnt/{boot,rootfs} -v && echo all gut'

alias pacman-fzf='pacman -Slq | fzf -m --preview '"'"'pacman -Si {1}'"'"' | xargs -ro sudo pacman -S'
