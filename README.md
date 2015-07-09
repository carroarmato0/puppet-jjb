# puppet-jjb
Puppet module for the OpenStack Jenkins-Job-Builder

Link to the project: http://docs.openstack.org/infra/jenkins-job-builder/

## Requirements

Due to the nature of the tool, the following python modules are needed:

- python-jenkins
- python-jenkins-job-builder
- python-pbr
- python-pyyaml

By default the optional Python module is used to perform the installation through PIP.
Should you have RPM's available in a repository, you can set the appropriate boolean.

## Usage

```
include jjb
```

```
class {'jjb':
	jenkins_url => 'https://jenkins.example.com',
	user        => 'jenkins',
	password    => '1234567890abcdef1234567890abcdef'
}
```
