all:

clean:

install:
	mkdir -p $(DESTDIR)/usr/share/kayak
	mkdir -p $(DESTDIR)/usr/share/car-hacking
	mkdir -p $(DESTDIR)/usr/share/applications
	mkdir -p $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/opt
	
	chown root:root -R kayak CANBus-Triple caringcaribou UDSim kayak.desktop
	cp -r kayak/* $(DESTDIR)/usr/share/kayak/
	cp -r CANBus-Triple $(DESTDIR)/usr/share/car-hacking/
	cp -r caringcaribou $(DESTDIR)/usr/share/car-hacking/
	cp -r UDSim $(DESTDIR)/usr/share/car-hacking/
	echo "cd /usr/share/kayak;/usr/share/kayak/bin/kayak" > $(DESTDIR)/usr/bin/kayak
	chmod +x $(DESTDIR)/usr/bin/kayak
	ln -s /usr/share/car-hacking $(DESTDIR)/opt/car-hacking
	cp kayak.desktop $(DESTDIR)/usr/share/applications/
