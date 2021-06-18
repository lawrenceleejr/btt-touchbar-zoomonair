if application "zoom.us" is not running then
    return
else
    set isOnAir to false
    tell application "System Events"
        tell application process "zoom.us"
            if (menu item "Mute Audio" of menu 1 of menu bar item "Meeting" of menu bar 1 exists) then
                set isOnAir to true
            else if (menu item "Unmute Audio" of menu 1 of menu bar item "Meeting" of menu bar 1 exists) then
                set isOnAir to false
            end if
        end tell
    end tell

    if isOnAir then
        set widgetProps to "{
            \"text\":\"                                   ON AIR                                   \",
            \"sf_symbol_name\":\"mic\",
            \"sf_symbol_size\":20,
            \"background_color\": \"255,0,0,255\",
            \"font_color\": \"255,255,255,255\",
            \"font_size\": 20}"
    else
        set widgetProps to "{\"text\":\"Muted\",
            \"sf_symbol_name\":\"mic.slash\",
            \"sf_symbol_size\":20,
            \"background_color\": \"200,200,200,255\",
            \"font_color\": \"255,255,255,255\",
            \"font_size\": 12}"
    end if
    return widgetProps
end if

