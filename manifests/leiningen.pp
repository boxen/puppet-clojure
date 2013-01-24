class clojure::leiningen {

  homebrew::formula { 'leiningen':
    before => Package['boxen/brews/leiningen']
  }

  package { 'leiningen':
    ensure  => latest,
    require => Package['boxen/brews/clojure'],
  }

}
