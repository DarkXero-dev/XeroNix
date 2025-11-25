{ pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    bat
    eza
    mpv
    git
    gtk3
    meld
    wget
    curl
    btop
    inxi
    hugo
    uget
    mesa
    unrar
    p7zip
    cmake
    figlet
    lolcat
    yt-dlp
    amarok
    hblock
    rustup
    amdvlk
    iptables
    pciutils
    wineasio
    hw-probe
    topgrade
    qemu-user
    spice-gtk
    qemu-utils
    v4l-utils
    fastfetch
    hardinfo2
    winetricks
    oh-my-posh
    ffmpeg-full
    imagemagick
    gtk_engines
    bridge-utils
    spice-protocol
    linux-firmware
    vulkan-headers
    grml-zsh-config
    mesa-gl-headers
    bash-completion
    nerd-fonts.hack
    zsh-powerlevel10k
    gnome-disk-utility
    gtk-engine-murrine
    lomiri.cmake-extras
    kdePackages.yakuake
    nerd-fonts.meslo-lg
    nerd-fonts.fira-code
    driversi686Linux.mesa
    noto-fonts-color-emoji
    vulkan-utility-libraries
    kdePackages.kdeconnect-kde
    kdePackages.kde-gtk-config
    kdePackages.dolphin-plugins
    wineWowPackages.waylandFull
    obs-studio-plugins.obs-vkcapture
    kdePackages.qtstyleplugin-kvantum
    androidenv.androidPkgs.platform-tools
    kdePackages.plasma-browser-integration
  ];

   services.flatpak = {
    # List the Flatpak applications you want to install
    # Use the official Flatpak application ID (e.g., from flathub.org)
    packages = [
      "com.rtosta.zapzap"               # whatsapp
      "com.vivaldi.Vivaldi"             # Web Browser
      "org.ferdium.Ferdium"             # All in one Web
      "com.spotify.Client"              # Streaming Music
      "com.vysp3r.ProtonPlus"           # Manage Proton GE
      "com.usebottles.bottles"          # Games/Apps Mangr
      "com.chatterino.chatterino"       # Twitch Chat App
      "de.schmidhuberj.tubefeeder"      # watch YT videos
      "io.github.flattool.Warehouse"    # Manage flatpaks
      "io.missioncenter.MissionCenter"  # Win Task Manager
      "org.filezillaproject.Filezilla"  # FTP/SCP Transfer

      # OBS Studio Mega Pack

      "com.obsproject.Studio"
      "com.obsproject.Studio.Plugin.DroidCam"
      "com.obsproject.Studio.Plugin.waveform"
      "com.obsproject.Studio.Plugin.DistroAV"
      "com.obsproject.Studio.Plugin.WebSocket"
      "com.obsproject.Studio.Plugin.Gstreamer"
      "com.obsproject.Studio.Plugin.SourceClone"
      "com.obsproject.Studio.Plugin.SourceRecord"
      "com.obsproject.Studio.Plugin.ScaleToSound"
      "com.obsproject.Studio.Plugin.OBSVkCapture"
      "com.obsproject.Studio.Plugin.AdvancedMasks"
      "com.obsproject.Studio.Plugin.CompositeBlur"
      "com.obsproject.Studio.Plugin.SceneSwitcher"
      "com.obsproject.Studio.Plugin.GStreamerVaapi"
      "com.obsproject.Studio.Plugin.MoveTransition"
      "com.obsproject.Studio.Plugin.TransitionTable"
      "com.obsproject.Studio.Plugin.AitumMultistream"
      "com.obsproject.Studio.Plugin.BackgroundRemoval"
      "org.freedesktop.Platform.VulkanLayer.OBSVkCapture/x86_64/24.08"
    ];

    # Optional: Automatically update Flatpaks when you run nixos-rebuild switch
    update.onActivation = true;
   };
}
