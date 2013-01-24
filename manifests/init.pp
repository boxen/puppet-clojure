class clojure {
  require java

  homebrew::formula { 'clojure':
    before => Package['boxen/brews/clojure']
  }

  package { 'boxen/brews/clojure':
    ensure => '1.4.0'
  }

  include clojure::leiningen

}
