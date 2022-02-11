# Command Line Interface for Operating System Installation

import browsers
import terminal

let
    arch64 = "http://mirror.rackspace.com/archlinux/iso/2022.02.01/archlinux-2022.02.01-x86_64.iso"
    
    debian64 = "https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-11.2.0-amd64-netinst.iso"
    
    fedora64 = "https://download.fedoraproject.org/pub/fedora/linux/releases/35/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-35-1.2.iso"
    
    kali64 = "https://cdimage.kali.org/kali-2021.4a/kali-linux-2021.4a-installer-amd64.iso"
    
    manjaroXC = "https://download.manjaro.org/xfce/21.2.2/manjaro-xfce-21.2.2-220123-linux515.iso"
    manjaroXCm = "https://download.manjaro.org/xfce/21.2.2/manjaro-xfce-21.2.2-minimal-220123-linux515.iso"
    manjaroP = "https://download.manjaro.org/kde/21.2.2/manjaro-kde-21.2.2-220123-linux515.iso"
    manjaroPm = "https://download.manjaro.org/kde/21.2.2/manjaro-kde-21.2.2-minimal-220123-linux515.iso"
    manjaroPmLTS = "https://download.manjaro.org/kde/21.2.2/manjaro-kde-21.2.2-minimal-220123-linux510.iso"
    manjaroG = "https://download.manjaro.org/gnome/21.2.2/manjaro-gnome-21.2.2-220123-linux515.iso"
    manjaroGm = "https://download.manjaro.org/gnome/21.2.2/manjaro-gnome-21.2.2-minimal-220123-linux515.iso"
    manjaroGmLTS = "https://download.manjaro.org/gnome/21.2.2/manjaro-gnome-21.2.2-minimal-220123-linux510.iso"
    
    mintC = "https://mirrors.layeronline.com/linuxmint/stable/20.3/linuxmint-20.3-cinnamon-64bit.iso"
    mintM = "https://mirrors.layeronline.com/linuxmint/stable/20.3/linuxmint-20.3-mate-64bit.iso"
    mintXC = "https://mirrors.layeronline.com/linuxmint/stable/20.3/linuxmint-20.3-xfce-64bit.iso"
    
    pop = "https://pop-iso.sfo2.cdn.digitaloceanspaces.com/21.10/amd64/intel/6/pop-os_21.10_amd64_intel_6.iso"
    popNV = "https://pop-iso.sfo2.cdn.digitaloceanspaces.com/21.10/amd64/nvidia/6/pop-os_21.10_amd64_nvidia_6.iso"
    popRP = "https://pop-iso.sfo2.cdn.digitaloceanspaces.com/21.10/arm64/raspi/7/pop-os_21.10_arm64_raspi_7.img.xz"
    popLTS = "https://pop-iso.sfo2.cdn.digitaloceanspaces.com/20.04/amd64/intel/38/pop-os_20.04_amd64_intel_38.iso"
    popLTSnv = "https://pop-iso.sfo2.cdn.digitaloceanspaces.com/20.04/amd64/nvidia/38/pop-os_20.04_amd64_nvidia_38.iso"

    ubuntu = "https://releases.ubuntu.com/21.10/ubuntu-21.10-desktop-amd64.iso"
    ubuntuLTS = "https://releases.ubuntu.com/20.04.3/ubuntu-20.04.3-desktop-amd64.iso"

eraseScreen()
setCursorPos(0, 0)

echo "\n  ~ CLI 4 OS Installation ~ \n\n"
echo "  Choose Operating System : \n\n"
echo "  For Arch    ENTER =>    a"
echo "  For Debian  ENTER =>    d"
echo "  For Fedora  ENTER =>    f"
echo "  For Kali    ENTER =>    k"
echo "  For Manjaro ENTER =>    j"
echo "  For Mint    ENTER =>    m"
echo "  For PopOS   ENTER =>    p" # pushin' p
echo "  For Ubuntu  ENTER =>    u"

var os = readLine(stdin)

if os == "a":
    openDefaultBrowser(arch64)

if os == "d":
    openDefaultBrowser(debian64)

if os == "f":
    openDefaultBrowser(fedora64)

if os == "k":
    openDefaultBrowser(kali64)

if os == "j":
    eraseScreen()
    setCursorPos(0, 0)

    echo "For ManjaroXFCE               ENTER => x"
    echo "For ManjaroXFCE Minimal       ENTER => xm"
    echo "For ManjaroKDE                ENTER => k"
    echo "For ManjaroKDE Minimal        ENTER => km"
    echo "For ManjaroKDE Minimal LTS    ENTER => kml"
    echo "For ManjaroGNOME              ENTER => g"
    echo "For ManjaroGNOME Minimal      ENTER => gm"
    echo "For ManjaroGNOME Minimal LTS  ENTER => gml"

    var mn = readLine(stdin)

    if mn == "x":
        openDefaultBrowser(manjaroXC)
    if mn == "xm":
        openDefaultBrowser(manjaroXCm)
    if mn == "k":
        openDefaultBrowser(manjaroP)
    if mn == "km":
        openDefaultBrowser(manjaroPm)
    if mn == "kml":
        openDefaultBrowser(manjaroPmLTS)
    if mn == "g":
        openDefaultBrowser(manjaroG)
    if mn == "gm":
        openDefaultBrowser(manjaroGm)
    if mn == "gml":
        openDefaultBrowser(manjaroGmLTS)

if os == "m":
    eraseScreen()
    setCursorPos(0, 0)

    echo "For Mint Cinnamon Edition  ENTER => c"
    echo "For Mint MATE Edition      ENTER => m"
    echo "For Mint Xfce Edition      ENTER => x"

    var m = readLine(stdin)

    if m == "c":
        openDefaultBrowser(mintC)
    if m == "m":
        openDefaultBrowser(mintM)
    if m == "x":
        openDefaultBrowser(mintXC)

if os == "p":
    eraseScreen()
    setCursorPos(0, 0)

    echo "For POP! 21.10                 ENTER => p"
    echo "For POP! 21.10 NVIDIA          ENTER => v"
    echo "For POP! 21.10 RASPBERRY PI 4  ENTER => r"
    echo "For POP! 20.04 LTS             ENTER => l"
    echo "For POP! 20.04 LTS NVIDIA      ENTER => lv"

    var p = readLine(stdin) # pushin' p

    if p == "p":
        openDefaultBrowser(pop)
    if p == "v":
        openDefaultBrowser(popNV)
    if p == "r":
        openDefaultBrowser(popRP)
    if p == "l":
        openDefaultBrowser(popLTS)
    if p == "lv":
        openDefaultBrowser(popLTSnv)

if os == "u":
    eraseScreen()
    setCursorPos(0, 0)

    echo "For Ubuntu 21.10     ENTER => u"
    echo "For Ubuntu 20.04 LTS ENTER => l"

    var u = readLine(stdin)

    if u == "u":
        openDefaultBrowser(ubuntu)
    if u == "lts":
        openDefaultBrowser(ubuntuLTS)

# v0.1
