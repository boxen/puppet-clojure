class clojure::leiningen {
  package { 'leiningen':
    ensure  => present,
    require => Package['clojure'],
  }
}
