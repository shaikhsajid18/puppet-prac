file { '/tmp/example':
  ensure => file,
  mode => '0644',
}

service { 'httpd':
  ensure => running,
  enable => true,
  hasrestart => true,
  hasstatus  => true,
  # pattern => 'httpd',
}

package { 'httpd':
  ensure => installed,
}
