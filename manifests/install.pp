class jjb::install () inherits jjb {

  if $jjb::use_packages {
    contain jjb::package
  } else {
    contain jjb::python
  }

}
