log "start of script"


repeat while (do shell script "ping -c 1 www.apple.com") contains "100% packet loss"
  log "no internet connection"
  delay 5
end repeat

log "has internet connection"
log "end of script"