

repeat
  set ping_result to (do shell script "ping -c 1 www.apple.com")
  log ping_result
	if ping_result contains "100% packet loss" then
		delay 5
	else 
		exit repeat
end repeat