{ pkgs }: {
# Using renpenguin's dunstrc file (modified)
# See dunst(5) for all configuration options

	global = {
    ### Display ###

    # Which monitor should the notifications be displayed on.
    monitor = 0;

    width = 300;
    height = "(0, 200)"; # Height range;
    origin = "top-right";
    offset = "25x25";
    corner_radius = 5;
    scale = 3;

    # Maximum number of notification (0 means no limit)
    notification_limit = 20;

    ### Progress bar ###
    # Shows when a progress hint is passed, e.g. dunstify -h int:value:12
    progress_bar = true;
    progress_bar_height = 10;
    progress_bar_frame_width = 1;
    progress_bar_min_width = 150;
    progress_bar_max_width = 300;
    progress_bar_corner_radius = 2;

    # Show how many messages are currently hidden (because of
    # notification_limit).
		indicate_hidden = "yes";

    # The transparency of the window.  Range: [0; 100].
    # This option will only work if a compositing window manager is
    # present (e.g. xcompmgr, compiz, etc.). (X11 only)
    transparency = 10;

    # Draw a line of "separator_height" pixel height between two
    # notifications.
    # Set to 0 to disable.
    # If gap_size is greater than 0, this setting will be ignored.
    separator_height = 2;

    # Padding between text and separator.
    padding = 8;

    # Horizontal padding.
    horizontal_padding = 8;

    # Padding between text and icon.
    text_icon_padding = 0;

    # Defines width in pixels of frame around the notification window.
    # Set to 0 to disable.
    frame_width = 2;

    background = "#151426";

    # Text colour
    foreground = "#93b5af";

    # Defines color of the frame around the notification window.
    frame_color = "#657b83";

    # Size of gap to display between notifications - requires a compositor.
    # If value is greater than 0, separator_height will be ignored and a border
    # of size frame_width will be drawn around each notification instead.
    # Click events on gaps do not currently propagate to applications below.
    gap_size = 10;

    # Define a color for the separator.
    # possible values are:
    #  * auto: dunst tries to find a color fitting to the background;
    #  * foreground: use the same color as the foreground;
    #  * frame: use the same color as the frame;
    #  * anything else will be interpreted as a X color.
    separator_color = "frame";

    # Sort type.
    # possible values are:
    #  * id: sort by id
    #  * urgency_ascending: sort by urgency (low then normal then critical)
    #  * urgency_descending: sort by urgency (critical then normal then low)
    #  * update: sort by update (most recent always at the top)
    sort = "yes";

    # Don't remove messages, if the user is idle (no mouse or keyboard input)
    # idle_threshold = 30

    ### Text ###

    font = "CaskaydiaCove NF Bold 10";

    line_height = 0; # 0 -> default
    markup = "full";
    alignment = "left";
    vertical_alignment = "center";

    # The format of the message.  Possible variables are:
    #   %a  appname
    #   %s  summary
    #   %b  body
    #   %i  iconname (including its path)
    #   %I  iconname (without its path)
    #   %p  progress value if set ([  0%] to [100%]) or nothing
    #   %n  progress value if set without any extra characters
    #   %%  Literal %
    # Markup is allowed
    format = "<b>%s</b>\n%b";

    # Show age of message if message is older than show_age_threshold
    # seconds.
    # Set to -1 to disable.
    show_age_threshold = 15;

    # Specify where to make an ellipsis in long lines.
    # Possible values are "start", "middle" and "end".
    ellipsize = "middle";

    # Ignore newlines '\n' in notifications.
    ignore_newline = "no";

    # Stack together notifications with the same content
    stack_duplicates = true;

    # Hide the count of stacked notifications with the same content
    hide_duplicate_count = false;

    # Display indicators for URLs (U) and actions (A).
    show_indicators = "yes";

    ### Icons ###

    # Corner radius for the icon image.
    icon_corner_radius = 5;

    # Recursive icon lookup. You can set a single theme, instead of having to
    # define all lookup paths.
    enable_recursive_icon_lookup = true;

    # Set icon theme (only used for recursive icon lookup)
    icon_theme = "Papirus-Dark";
    # You can also set multiple icon themes, with the leftmost one being used first.
    # icon_theme = "Adwaita, breeze"

    # Align icons left/right/top/off
    icon_position = "left";

    min_icon_size = "16";
    max_icon_size = "32";

    # Paths to default icons (only neccesary when not using recursive icon lookup)
    # icon_path = /usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/

    ### History ###

    # Should a notification popped up from history be sticky or timeout
    # as if it would normally do.
    sticky_history = "yes";

    # Maximum amount of notifications kept in history
    history_length = 20;

    ### Misc/Advanced ###

    # dmenu path.
    dmenu = "${pkgs.dmenu}/bin/dmenu -p dunst";

    # Browser for opening urls in context menu.
    browser = "${pkgs.xdg-utils}/bin/xdg-open";

    # Always run rule-defined scripts, even if the notification is suppressed
    always_run_script = true;

    # Define the title of the windows spawned by dunst
    title = "Dunst";

    # Define the class of the windows spawned by dunst
    class = "Dunst";

    # Ignore the dbus closeNotification message.
    # Useful to enforce the timeout set by dunst configuration. Without this
    # parameter, an application may close the notification sent before the
    # user defined timeout.
    ignore_dbusclose = false;

    # * do_action: Invoke the action determined by the action_name rule. If there is no
    #              such action, open the context menu.
    # * open_url: If the notification has exactly one url, open it. If there are multiple
    #             ones, open the context menu.
    # * close_current: Close current notification.
    # * close_all: Close all notifications.
    # * context: Open context menu for the notification.
    # * context_all: Open context menu for all notifications.
    # These values can be strung together for each mouse event, and
    # will be executed in sequence.
    mouse_left_click = "close_current";
    mouse_middle_click = "do_action, close_current";
    mouse_right_click = "context";
	};

	urgency_low = {
    # IMPORTANT: colors have to be defined in quotation marks.
    # Otherwise the "#" and following would be interpreted as a comment.
    frame_color = "#93b5af";
    timeout = 3;
    # Icon for notifications with low urgency, uncomment to enable
    #default_icon = /path/to/icon
	};

	urgency_normal = { 
		frame_color = "#282a36";
    timeout = 10;
    override_pause_level = 30;
    # Icon for notifications with normal urgency, uncomment to enable
    #default_icon = /path/to/icon
	};

	urgency_critical = {
    frame_color = "#b3000f";
    timeout = 0;
    override_pause_level = 60;
    # Icon for notifications with critical urgency, uncomment to enable
    #default_icon = /path/to/icon
	};
}
