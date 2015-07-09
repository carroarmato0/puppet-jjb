class jjb::install () inherits jjb {

	if $jjb::use_packages {
		include jjb::package
	} else {
		include jjb::python
	}

}