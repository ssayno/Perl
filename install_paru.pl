#!/usr/bin/perl -w
use v5.34;
use Cwd qw(cwd chdir);
use Term::ANSIColor;
print color('bold blue');
print "Install Paru on Arch Linux!\n";
print color("reset");
sub install_paru{
    my $status = `pacman -Q paru | wc -l`;
    if($status == 1){
        print color("bright_magenta");
        print "Paru is installed on your system already!\n";
        return 0;
    }else{
        print "Start install paru\n";
    }
    chdir($ENV{"HOME"});
    mkdir("paru");
    system("sudo pacman -S --needed base-devel");
    system("git clone https://aur.archlinux.org/paru.git");
    if(system("makepkg -si") == 1){
        print color("red");
        print "Install finished!\n";
        chdir("..");
        rmdir("paru");
    }

}
install_paru();
