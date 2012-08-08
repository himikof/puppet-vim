import 'stdlib'

# Class vim
#
#  Provides the vim editor configuration.
#
class vim {
  
  package { 'vim':
    ensure   => 'installed',
    require  => Package['portage'],
  }

  file { '/etc/vim/vimrc.local':
    content => template("vim/vimrc"),
    require => Package['vim'],
  }
}
