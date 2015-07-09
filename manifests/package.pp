class jjb::package {

  package { 'python-jenkins':
    ensure => installed,
  }

  package { 'python-jenkins-job-builder':
    ensure => installed,
  }

  package { 'python-pbr':
    ensure => installed,
  }

  package { 'python-pyyaml':
    ensure => installed,
  }

}