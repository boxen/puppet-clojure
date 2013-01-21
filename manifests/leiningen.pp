class clojure::leiningen {
  package { 'leiningen':
    ensure  => '2.0.0',
    require => Package['clojure'],
  }
}
