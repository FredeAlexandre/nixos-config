{
  "hyprland/workspaces" = {
    "on-scroll-up" = "hyprctl dispatch workspace r-1";
    "on-scroll-down" = "hyprctl dispatch workspace r+1";
    "on-click" = "activate";
    "active-only" = false;
    "all-outputs" = true;
    "format" = "{}";
    "format-icons" = {
      "urgent" = "";
      "active" = "";
      "default" = "";
    };
    "persistent-workspaces" = {
      "*" = 5;
    };
  };
  "wlr/taskbar" = {
    "format" = "{icon}";
    "icon-size" = 18;
    "tooltip-format" = "{title}";
    "on-click" = "activate";
    "on-click-middle" = "close";
    "ignore-list" = [
      "Alacritty"
    ];
    "app_ids-mapping" = {
      "firefoxdeveloperedition" = "firefox-developer-edition";
    };
    "rewrite" = {
      "Firefox Web Browser" = "Firefox";
      "Foot Server" = "Terminal";
    };
  };
  "hyprland/window" = {
    "rewrite" = {
      "(.*) - Brave" = "$1";
      "(.*) - Chromium" = "$1";
      "(.*) - Brave Search" = "$1";
      "(.*) - Outlook" = "$1";
      "(.*) Microsoft Teams" = "$1";
    };
    "separate-outputs" = true;
  };
  "custom/ml4w-welcome" = {
    "on-click" = "sleep 0.1 && ~/dotfiles/eww/ml4w-sidebar/launch.sh";
    "on-click-right" = "sleep 0.1 && ~/dotfiles/apps/ML4W_Welcome-x86_64.AppImage";
    "format" = " ";
    "tooltip-format" = "Open Sidebar";
  };
  "custom/ml4w-hyprland-settings" = {
    "on-click" = "~/dotfiles/apps/ML4W_Hyprland_Settings-x86_64.AppImage";
    "format" = " ";
    "tooltip-format" = "ML4W Hyprland Settings";
  };
  "custom/empty" = {
    "format" = "";
  };
  "custom/tools" = {
    "format" = "";
    "tooltip-format" = "Tools";
  };
  "custom/cliphist" = {
    "format" = "";
    "on-click" = "sleep 0.1 && ~/dotfiles/scripts/cliphist.sh";
    "on-click-right" = "sleep 0.1 && ~/dotfiles/scripts/cliphist.sh d";
    "on-click-middle" = "sleep 0.1 && ~/dotfiles/scripts/cliphist.sh w";
    "tooltip-format" = "Clipboard Manager";
  };
  "custom/updates" = {
    "format" = "   {}";
    "escape" = true;
    "return-type" = "json";
    "exec" = "~/dotfiles/scripts/updates.sh";
    "restart-interval" = 60;
    "on-click" = "alacritty --class dotfiles-floating -e ~/dotfiles/scripts/installupdates.sh";
    "on-click-right" = "~/dotfiles/.settings/software.sh";
  };
  "custom/wallpaper" = {
    "format" = "";
    "on-click" = "waypaper";
    "on-click-right" = "~/dotfiles/hypr/scripts/wallpaper-effects.sh";
    "tooltip-format" = "Left= Select a wallpaper\nRight= Select wallpaper effect";
  };
  "custom/waybarthemes" = {
    "format" = "";
    "on-click" = "~/dotfiles/waybar/themeswitcher.sh";
    "tooltip-format" = "Select a waybar theme";
  };
  "custom/settings" = {
    "format" = "";
    "on-click" = "~/dotfiles/apps/ML4W_Dotfiles_Settings-x86_64.AppImage";
    "tooltip-format" = "ML4W Dotfiles Settings";
  };
  "custom/keybindings" = {
    "format" = "";
    "on-click" = "~/dotfiles/hypr/scripts/keybindings.sh";
    "tooltip" = false;
  };
  "custom/chatgpt" = {
    "format" = " ";
    "on-click" = "~/dotfiles/.settings/ai.sh";
    "tooltip-format" = "AI Support";
  };
  "custom/calculator" = {
    "format" = "";
    "on-click" = "qalculate-gtk";
    "tooltip-format" = "Open calculator";
  };
  "custom/windowsvm" = {
    "format" = "";
    "on-click" = "~/dotfiles/scripts/launchvm.sh";
    "tooltip" = false;
  };
  "custom/appmenu" = {
    "format" = "Apps";
    "on-click" = "sleep 0.2;rofi -show drun -replace";
    "on-click-right" = "~/dotfiles/hypr/scripts/keybindings.sh";
    "tooltip-format" = "Left= Open the application launcher\nRight= Show all keybindings";
  };
  "custom/appmenuicon" = {
    "format" = "";
    "on-click" = "rofi -show drun -replace";
    "on-click-right" = "~/dotfiles/hypr/scripts/keybindings.sh";
    "tooltip-format" = "Left= Open the application launcher\nRight= Show all keybindings";
  };
  "custom/exit" = {
    "format" = "";
    "on-click" = "wlogout";
    "tooltip-format" = "Power Menu";
  };
  "custom/hyprshade" = {
    "format" = "";
    "tooltip-format" = "Toggle Screen Shader";
    "on-click" = "sleep 0.5; ~/dotfiles/hypr/scripts/hyprshade.sh";
    "on-click-right" = "sleep 0.5; ~/dotfiles/hypr/scripts/hyprshade.sh rofi";
  };
  "custom/hypridle" = {
    "format" = "";
    "return-type" = "json";
    "escape" = true;
    "exec-on-event" = true;
    "interval" = 60;
    "exec" = "~/dotfiles/hypr/scripts/hypridle.sh status";
    "on-click" = "~/dotfiles/hypr/scripts/hypridle.sh toggle";
    "on-click-right" = "hyprlock";
  };
  "keyboard-state" = {
    "numlock" = true;
    "capslock" = true;
    "format" = "{name} {icon}";
    "format-icons" = {
      "locked" = "";
      "unlocked" = "";
    };
  };
  "tray" = {
    "icon-size" = 21;
    "spacing" = 10;
  };
  "clock" = {
    "format" = "{=%H=%M %a}";
    "tooltip-format" = "<big>{=%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
    "format-alt" = "{=%Y-%m-%d}";
  };
  "custom/system" = {
    "format" = "";
    "tooltip" = false;
  };
  "cpu" = {
    "format" = "/ C {usage}% ";
    "on-click" = "~/dotfiles/.settings/systeminfo.sh";
  };
  "memory" = {
    "format" = "/ M {}% ";
    "on-click" = "~/dotfiles/.settings/systeminfo.sh";
  };
  "disk" = {
    "interval" = 30;
    "format" = "D {percentage_used}% ";
    "path" = "/";
    "on-click" = "~/dotfiles/.settings/systeminfo.sh";
  };
  "hyprland/language" = {
    "format" = "/ K {short}";
  };
  "group/hardware" = {
    "orientation" = "inherit";
    "drawer" = {
      "transition-duration" = 300;
      "children-class" = "not-memory";
      "transition-left-to-right" = false;
    };
    "modules" = [
      "custom/system"
      "disk"
      "cpu"
      "memory"
      "hyprland/language"
    ];
  };
  "group/tools" = {
    "orientation" = "inherit";
    "drawer" = {
      "transition-duration" = 300;
      "children-class" = "not-memory";
      "transition-left-to-right" = false;
    };
    "modules" = [
      "custom/tools"
      "custom/cliphist"
      "custom/hypridle"
      "custom/hyprshade"
    ];
  };
  "group/links" = {
    "orientation" = "horizontal";
    "modules" = [
      "custom/chatgpt"
      "custom/empty"
    ];
  };
  "group/settings" = {
    "orientation" = "inherit";
    "drawer" = {
      "transition-duration" = 300;
      "children-class" = "not-memory";
      "transition-left-to-right" = true;
    };
    "modules" = [
      "custom/settings"
      "custom/waybarthemes"
      "custom/wallpaper"
      "custom/ml4w-hyprland-settings"
    ];
  };
  "network" = {
    "format" = "{ifname}";
    "format-wifi" = "   {signalStrength}%";
    "format-ethernet" = "  {ifname}";
    "format-disconnected" = "Disconnected";
    "tooltip-format" = " {ifname} via {gwaddri}";
    "tooltip-format-wifi" = "  {ifname} @ {essid}\nIP= {ipaddr}\nStrength= {signalStrength}%\nFreq= {frequency}MHz\nUp= {bandwidthUpBits} Down= {bandwidthDownBits}";
    "tooltip-format-ethernet" = " {ifname}\nIP= {ipaddr}\n up= {bandwidthUpBits} down= {bandwidthDownBits}";
    "tooltip-format-disconnected" = "Disconnected";
    "max-length" = 50;
    "on-click" = "alacritty --class dotfiles-floating -e nmtui";
    "on-click-right" = "~/dotfiles/.settings/networkmanager.sh";
  };
  "battery" = {
    "states" = {
      # "good"= 95;
      "warning" = 30;
      "critical" = 15;
    };
    "format" = "{icon}   {capacity}%";
    "format-charging" = "  {capacity}%";
    "format-plugged" = "  {capacity}%";
    "format-alt" = "{icon}  {time}";
    # "format-good"= ""; // An empty format will hide the module
    # "format-full"= "";
    "format-icons" = [
      " "
      " "
      " "
      " "
      " "
    ];
  };
  "pulseaudio" = {
    # "scroll-step"= 1; // %, can be a float
    "format" = "{icon}   {volume}%";
    "format-bluetooth" = "{volume}%  {icon} {format_source}";
    "format-bluetooth-muted" = " {icon} {format_source}";
    "format-muted" = " {format_source}";
    "format-source" = "{volume}% ";
    "format-source-muted" = "";
    "format-icons" = {
      "headphone" = " ";
      "hands-free" = " ";
      "headset" = " ";
      "phone" = " ";
      "portable" = " ";
      "car" = " ";
      "default" = [
        " "
        " "
        " "
      ];
    };
    "on-click" = "pavucontrol";
  };
  "bluetooth" = {
    "format" = " {status}";
    "format-disabled" = "";
    "format-off" = "";
    "interval" = 30;
    "on-click" = "blueman-manager";
    "format-no-controller" = "";
  };
  "user" = {
    "format" = "{user}";
    "interval" = 60;
    "icon" = false;
  };
}
