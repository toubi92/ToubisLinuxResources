# How to get Linux source code
From https://wiki.ubuntu.com/Kernel/BuildYourOwnKernel

	git clone git://kernel.ubuntu.com/ubuntu/ubuntu-<release codename>.git
	
Every release has its codename. E.g. 18.04 is called 'Bionic Beaver'

	git clone git://kernel.ubuntu.com/ubuntu/ubuntu-bionic.git
	
(This might take a while)

## with apt
	sudo apt-get source linux-image-$(uname -r)
	
Might contain about not knowing sources in its list. In this case, add debian sources:

	sudo sed -i~orig -e 's/# deb-src/deb-src/' /etc/apt/sources.list
	
Maybe we need some debian tool to extract...

	sudo apt-get install -y dpkg-dev