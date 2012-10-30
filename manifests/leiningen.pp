class clojure::leiningen {
  package { 'boxen/brews/leiningen':
    ensure  => '2.0.0-preview10',
    require => Package['clojure'],
  }
}
