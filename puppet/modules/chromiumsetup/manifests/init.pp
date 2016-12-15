class chromiumsetup {

	package { chromium-browser:
	ensure => installed,
	allowcdrom => true,
	}

	file { [ "/home/p2502/.config/chromium/", '/home/p2502/.config/chromium/Default' ]:
	ensure => directory,
	owner => p2502,	
	group => p2502,
	}

	file { "/home/p2502/.config/chromium/Default/Bookmarks":
	content => template("/etc/puppet/modules/chromiumsetup/templates/Bookmarks"),
	ensure => present,
	}

	file { "/home/p2502/.config/chromium/Default/Preferences":
	content => template("/etc/puppet/modules/chromiumsetup/templates/Preferences"),
	ensure => present,
	}
}
