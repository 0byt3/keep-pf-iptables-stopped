install:
	install --compare --mode=0755 stop-pf-iptables.service /etc/systemd/system/stop-pf-iptables.service
	install --compare --mode=0755 stop-pf-iptables.timer /etc/systemd/system/stop-pf-iptables.timer
	install --compare --mode=0755 enable-stop-pf-iptables.service /etc/systemd/system/enable-stop-pf-iptables.service
	systemctl daemon-reload
	systemctl enable --now stop-pf-iptables.timer
	systemctl enable --now enable-stop-pf-iptables.service
