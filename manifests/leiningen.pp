class clojure::leiningen {

  homebrew::formula { 'leiningen':
    before => Package['boxen/brews/leiningen']
  }

  package { 'boxen/brews/leiningen':
    ensure  => '2.0.0',
    require => Package['boxen/brews/clojure']
  }

}
