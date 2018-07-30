
node "svm2.llnl.gov" {

file { '/root/example_file.txt':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "700",
    content => "Congratulations!
Puppet has created this file.
",}

} # End node svm2.llnl.gov




file { '/etc/hosts':
  source => '/etc/puppet/manifests/hosts',
  owner => 'root',
  group => 'root',
  mode => '644',
}


file { '/etc/resolv.conf':
  source => '/etc/puppet/manifests/resolv.conf',
  owner => 'root',
  group => 'root',
  mode => '644',
}


package { 'git':
  ensure => 'latest',
}
