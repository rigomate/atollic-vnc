FROM consol/ubuntu-xfce-vnc

# Switch to root user to install additional software
USER 0
RUN wget http://download.atollic.com/TrueSTUDIO/installers/Atollic_TrueSTUDIO_for_STM32_linux_x86_64_v9.1.0_20181011-1241.tar.gz
RUN tar -xvf Atollic_TrueSTUDIO_for_STM32_linux_x86_64_v9.1.0_20181011-1241.tar.gz
RUN cd ..
RUN cd Atollic_TrueSTUDIO_for_STM32_9.1.0_installer && yes 1 | ./install.sh

## switch back to default user
USER 1000

RUN ln -s /opt/Atollic_TrueSTUDIO_for_STM32_x86_64_9.1.0/ide/TrueSTUDIO /headless/Desktop/Atollic-Truestudio