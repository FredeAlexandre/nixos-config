{
  "custom/power" = {
    format = "{}";
    rotate = 0;
    exec = "echo ; echo  logout";
    on-click = "logoutlaunch.sh 2";
    on-click-right = "logoutlaunch.sh 1";
    interval = 86400;
    tooltip = true;
  };
  "custom/cliphist" = {
    format = "{}";
    rotate = 0;
    exec = "echo ; echo 󰅇 clipboard history";
    on-click = "sleep 0.1 && cliphist.sh c";
    on-click-right = "sleep 0.1 && cliphist.sh d";
    on-click-middle = "sleep 0.1 && cliphist.sh w";
    interval = 86400;
    tooltip = true;
  };
  "custom/wbar" = {
    format = "{}";
    rotate = 0;
    exec = "echo ; echo  switch bar //  dock";
    on-click = "wbarconfgen.sh n";
    on-click-right = "wbarconfgen.sh p";
    on-click-middle = "sleep 0.1 && quickapps.sh kitty firefox spotify code dolphin";
    interval = 86400;
    tooltip = true;
  };
  "custom/theme" = {
    format = "{}";
    rotate = 0;
    exec = "echo ; echo 󰟡 switch theme";
    on-click = "themeswitch.sh -n";
    on-click-right = "themeswitch.sh -p";
    on-click-middle = "sleep 0.1 && themeselect.sh";
    interval = 86400;
    tooltip = true;
  };
  "custom/wallchange" = {
    format = "{}";
    rotate = 0;
    exec = "echo ; echo 󰆊 switch wallpaper";
    on-click = "swwwallpaper.sh -n";
    on-click-right = "swwwallpaper.sh -p";
    on-click-middle = "sleep 0.1 && swwwallselect.sh";
    interval = 86400;
    tooltip = true;
  };
  "wlr/taskbar" = {
    format = "{icon}";
    rotate = 0;
    icon-size = 18;
    icon-theme = "Tela-circle-dracula";
    spacing = 0;
    tooltip-format = "{title}";
    on-click = "activate";
    on-click-middle = "close";
    ignore-list = [
      "Alacritty"
    ];
    app_ids-mapping = {
      firefoxdeveloperedition = "firefox-developer-edition";
    };
  };
  "custom/spotify" = {
    exec = "mediaplayer.py --player spotify";
    format = " {}";
    rotate = 0;
    return-type = "json";
    on-click = "playerctl play-pause --player spotify";
    on-click-right = "playerctl next --player spotify";
    on-click-middle = "playerctl previous --player spotify";
    on-scroll-up = "volumecontrol.sh -p spotify i";
    on-scroll-down = "volumecontrol.sh -p spotify d";
    max-length = 25;
    escape = true;
    tooltip = true;
  };
  idle_inhibitor = {
    format = "{icon}";
    rotate = 0;
    format-icons = {
      activated = "󰥔";
      deactivated = "";
    };
  };
  clock = {
    format = "{:%I:%M %p}";
    rotate = 0;
    format-alt = "{:%R 󰃭 %d·%m·%y}";
    tooltip-format = "<span>{calendar}</span>";
    calendar = {
      mode = "month";
      mode-mon-col = 3;
      on-scroll = 1;
      on-click-right = "mode";
      format = {
        months = "<span color='#ffead3'><b>{}</b></span>";
        weekdays = "<span color='#ffcc66'><b>{}</b></span>";
        today = "<span color='#ff6699'><b>{}</b></span>";
      };
    };
    actions = {
      on-click-right = "mode";
      on-click-forward = "tz_up";
      on-click-backward = "tz_down";
      on-scroll-up = "shift_up";
      on-scroll-down = "shift_down";
    };
  };
  tray = {
    icon-size = 18;
    rotate = 0;
    spacing = 5;
  };
  battery = {
    states = {
      good = 95;
      warning = 30;
      critical = 20;
    };
    format = "{icon} {capacity}%";
    rotate = 0;
    format-charging = " {capacity}%";
    format-plugged = " {capacity}%";
    format-alt = "{time} {icon}";
    format-icons = [
      "󰂎"
      "󰁺"
      "󰁻"
      "󰁼"
      "󰁽"
      "󰁾"
      "󰁿"
      "󰂀"
      "󰂁"
      "󰂂"
      "󰁹"
    ];
  };
  backlight = {
    device = "intel_backlight";
    rotate = 0;
    format = "{icon} {percent}%";
    format-icons = [
      ""
      ""
      ""
      ""
      ""
      ""
      ""
      ""
      ""
    ];
    on-scroll-up = "brightnessctl set 1%+";
    on-scroll-down = "brightnessctl set 1%-";
    min-length = 6;
  };
  network = {
    tooltip = true;
    format-wifi = " ";
    rotate = 0;
    format-ethernet = "󰈀 ";
    tooltip-format = "Network: <big><b>{essid}</b></big>\nSignal strength: <b>{signaldBm}dBm ({signalStrength}%)</b>\nFrequency: <b>{frequency}MHz</b>\nInterface: <b>{ifname}</b>\nIP: <b>{ipaddr}/{cidr}</b>\nGateway: <b>{gwaddr}</b>\nNetmask: <b>{netmask}</b>";
    format-linked = "󰈀 {ifname} (No IP)";
    format-disconnected = "󰖪 ";
    tooltip-format-disconnected = "Disconnected";
    format-alt = "<span foreground='#99ffdd'> {bandwidthDownBytes}</span> <span foreground='#ffcc66'> {bandwidthUpBytes}</span>";
    interval = 2;
  };
  pulseaudio = {
    format = "{icon} {volume}";
    rotate = 0;
    format-muted = "婢";
    on-click = "pavucontrol -t 3";
    on-click-middle = "volumecontrol.sh -o m";
    on-scroll-up = "volumecontrol.sh -o i";
    on-scroll-down = "volumecontrol.sh -o d";
    tooltip-format = "{icon} {desc} // {volume}%";
    scroll-step = 5;
    format-icons = {
      headphone = "";
      hands-free = "";
      headset = "";
      phone = "";
      portable = "";
      car = "";
      default = [
        ""
        ""
        ""
      ];
    };
  };
  "pulseaudio#microphone" = {
    format = "{format_source}";
    rotate = 0;
    format-source = "";
    format-source-muted = "";
    on-click = "pavucontrol -t 4";
    on-click-middle = "volumecontrol.sh -i m";
    on-scroll-up = "volumecontrol.sh -i i";
    on-scroll-down = "volumecontrol.sh -i d";
    tooltip-format = "{format_source} {source_desc} // {source_volume}%";
    scroll-step = 5;
  };
  "custom/notifications" = {
    tooltip = true;
    format = "{icon} {}";
    rotate = 0;
    format-icons = {
      email-notification = "<span foreground='white'><sup></sup></span>";
      chat-notification = "󱋊<span foreground='white'><sup></sup></span>";
      warning-notification = "󱨪<span foreground='yellow'><sup></sup></span>";
      error-notification = "󱨪<span foreground='red'><sup></sup></span>";
      network-notification = "󱂇<span foreground='white'><sup></sup></span>";
      battery-notification = "󰁺<span foreground='white'><sup></sup></span>";
      update-notification = "󰚰<span foreground='white'><sup></sup></span>";
      music-notification = "󰝚<span foreground='white'><sup></sup></span>";
      volume-notification = "󰕿<span foreground='white'><sup></sup></span>";
      notification = "<span foreground='white'><sup></sup></span>";
      none = "";
    };
    return-type = "json";
    exec-if = "which dunstctl";
    exec = "notifications.py";
    on-click = "sleep 0.1 && dunstctl history-pop";
    on-click-middle = "dunstctl history-clear";
    on-click-right = "dunstctl close-all";
    interval = 1;
    escape = true;
  };
  "custom/keybindhint" = {
    format = " ";
    rotate = 0;
    on-click = "keybinds_hint.sh";
  };
  "custom/l_end" = {
    format = " ";
    interval = "once";
    tooltip = false;
  };
  "custom/r_end" = {
    format = " ";
    interval = "once";
    tooltip = false;
  };
  "custom/sl_end" = {
    format = " ";
    interval = "once";
    tooltip = false;
  };
  "custom/sr_end" = {
    format = " ";
    interval = "once";
    tooltip = false;
  };
  "custom/rl_end" = {
    format = " ";
    interval = "once";
    tooltip = false;
  };
  "custom/rr_end" = {
    format = " ";
    interval = "once";
    tooltip = false;
  };
  "custom/padd" = {
    format = "  ";
    interval = "once";
    tooltip = false;
  };
}
