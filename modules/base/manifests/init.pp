class base {
  class { '::firewall': }
  create_resources('firewall', hiera_hash('firewall', {}))
  create_resources('host', hiera_hash('hosts', {}))
}
