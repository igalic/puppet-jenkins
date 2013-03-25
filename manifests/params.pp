
class jenkins::params {

  $master_user = 'jenkins-master'
  $master_home = "/home/${master_user}"
  $slave_user  = 'jenkins-slave'
  $slave_home  = "/home/${slave_user}"

  case $::osfamily {
    RedHat, Linux: {
      $java_package = 'java-1.6.0-openjdk'
    }
    Debian, Ubuntu: {
      #needs java package for debian.
      $java_package = 'openjdk-7-jdk'
    }
    default: {
      fail ('Currently unsupported OS! Please fork this module and extend it!')
    }
  }
}
