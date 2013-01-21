class clojure {
  require java

  homebrew::tap { 'clojure':
    source => 'puppet:///modules/clojure/brews'
  }

  package { 'clojure':
    require => Homebrew::Tap['clojure'],
  }

  include clojure::leiningen

}
