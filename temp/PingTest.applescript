log "start of script"

set temp_var to (do shell script "ping -c 1 www.apple.com")
log temp_var
log "Toggle: " & (temp_var & contains "100% packet loss")

log "end of script"