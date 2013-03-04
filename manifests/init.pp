class clojure {
  include java
  include clojure::leiningen

  homebrew::formula { 'clojure':
    before => Package['boxen/brews/clojure']
  }

  package { 'boxen/brews/clojure':
    ensure  => '1.5.0-boxen1',
    require => Class['java']
  }
}
