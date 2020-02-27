FROM    archlinux:latest

RUN pacman -Syu --noconfirm &&\
    pacman -S --noconfirm texlive-{core,bin,bibtexextra,fontsextra,formatsextra,games,humanities,langchinese,langcyrillic,langextra,langgreek,langjapanese,langkorean,latexextra,music,pictures,pstricks,publishers,science} &&\
    pacman -S --noconfirm biber ghostscript &&\
    pacman -S --noconfirm lua &&\
    pacman -Syyu --noconfirm &&\
    pacman -Scc --noconfirm
    
CMD ["/bin/bash"]
