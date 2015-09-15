log "start of script"

set temp_var to (do shell script "ping -c 1 www.apple.com")
log temp_var
log ("apples" contains "apple")
--log "Toggle: " & (temp_var & contains "100% packet loss")
log "end of script"


repeat while false
  log "no internet connection"
  delay 5
end repeat

log "has internet connection"
log "end of script"