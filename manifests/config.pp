class jjb::config () inherits jjb {

	file { '/etc/jenkins_jobs':
		ensure => directory,
	}

	file { '/etc/jenkins_jobs/jenkins_jobs.ini':
		ensure  => file,
		content => template('jjb/jenkins_jobs.ini.erb'),
	}

}