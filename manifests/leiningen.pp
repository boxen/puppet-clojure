class clojure::leiningen {

  package { 'leiningen':
    ensure  => present,
    require => [
      Homebrew::Tap['clojure'],
      Package['clojure'],
    ]
  }

}
