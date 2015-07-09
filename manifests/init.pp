class jjb (
  $jenkins_url        = 'http://0.0.0.0:8080',
  $user               = undef,
  $password           = undef,
  $ignore_cache       = true,
  $keep_description   = false,
  $include_path       = '.:scripts:~/git/',
  $recursive          = false,
  $exclude            = '.*:manual:./development',
  $allow_duplicates   = false,
  $query_plugins_info = false,
  $use_packages       = false,
) {

  validate_bool($ignore_cache, $keep_description, $recursive, $allow_duplicates, $query_plugins_info, )
  validate_string($jenkins_url, $user, $password, $include_path, )

  $r_ignore_cache = $ignore_cache ? {
    true    => 'True',
    default => 'False',
  }

  $r_keep_description = $keep_description ? {
    true    => 'True',
    default => 'False',
  }

  $r_recursive = $recursive ? {
    true    => 'True',
    default => 'False',
  }

  $r_allow_duplicates = $allow_duplicates ? {
    true    => 'True',
    default => 'False',
  }

  $r_query_plugins_info = $query_plugins_info ? {
    true    => 'True',
    default => 'False',
  }

  include config
  include install

}
