class awesome {
  create_resources('awesome::maillist', hiera_hash('maillists', {}))

  opendkim::socket { 'opendkim default': }
  Package['opendkim'] ->
  opendkim::domain { 'awesomeretro.org':
    private_key => 'puppet:///modules/awesome/awesomeretro.org.mail._domainkey.key',
  }
}
