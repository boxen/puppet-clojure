class clojure::leiningen {

  homebrew::formula { 'leiningen':
    before => Package['boxen/brews/leiningen']
  }

  package { 'leiningen':
    ensure  => '2.0.0',
    require => Package['boxen/brews/clojure']
  }

}
