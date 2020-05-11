ctrl_interface=/var/run/wpa_supplicant
update_config=1

network={
	ssid="Les enfants du Chat Noir"
	psk="bhaaaaaa"
	proto=RSN
	key_mgmt=WPA-PSK
	pairwise=CCMP
	auth_alg=OPEN
	pbss=2
}
