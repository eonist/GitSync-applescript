wait_for_internet()
(*
 * Delays 5 secs, then checks for internet, if it doesnt have internet, the process is repeated
 * NOTE: Just add a call to this method when you need to check for internet
 *)
on wait_for_internet()
  repeat while (do shell script "ping -c 1 www.apple.com") contains "100% packet loss"--0.0% packet loss is the opposite
    log "no internet connection"
    delay 5--delays 5 seconds
  end repeat
  log "has internet connection"
end wait_for_internet
