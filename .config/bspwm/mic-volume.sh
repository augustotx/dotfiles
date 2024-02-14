while true; do
	sleep 0.1
	pamixer --source alsa_input.pci-0000_0d_00.4.analog-stereo --set-volume 16
done
