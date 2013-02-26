class clojure::leiningen {
  $home   = "${boxen::config::home}/leiningen"
  $bindir = "${home}/bin"
  $bin    = "${bindir}/lein"
  $uri    = 'https://raw.github.com/technomancy/leiningen/stable/bin/lein'

  file {
    $home:
      ensure => directory ;
    $bindir:
      ensure => directory ;
    $bin:
      mode    => '0755',
      require => Exec['install leiningen'] ;
    "${boxen::config::envdir}/leiningen.sh":
      mode    => '0755',
      content => template('clojure/env.sh.erb') ;
  }

  exec { 'install leiningen':
    command => "curl -sL ${uri} > ${bin}",
    creates => $bin,
    require => File["${boxen::config::home}/leiningen/bin"],
    before  => File[$bin],
  }

  package { 'boxen/brews/leiningen': ensure => absent }
}
