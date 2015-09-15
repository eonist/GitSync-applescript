log "start of script"

repeat
  set ping_result to (do shell script "ping -c 1 www.apples.com")
  log ping_result
 if (ping_result contains "100% packet loss") then
   log "no internet connection"
   delay 5
 else 
   log "has internet connection"
   exit repeat
 end if
end repeat

log "end of script"