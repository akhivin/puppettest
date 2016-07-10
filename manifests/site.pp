node default {

}


node 'server' {
  class { '::gocd::server':
  }
}

node /^slave/ {
  class { '::gocd::agent':
    server => 'server',
  }
}
