class jjb::python {

  class { '::python' :
    version  => 'system',
    pip      => true,
  }

  python::pip { 'python-jenkins' :
    pkgname  => 'python-jenkins',
  }

  python::pip { 'PyYAML' :
    pkgname  => 'PyYAML',
  }

  python::pip { 'jenkins-job-builder' :
    pkgname  => 'jenkins-job-builder',
    url      => 'git+https://github.com/carroarmato0/jenkins-job-builder.git#egg=python-jenkins-job-builder',
  }

}