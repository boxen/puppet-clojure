class clojure {
  require java

  homebrew::formula { 'clojure':
    before => Package['boxen/brews/clojure']
  }

  package { 'boxen/brews/clojure': }

  include clojure::leiningen

}
