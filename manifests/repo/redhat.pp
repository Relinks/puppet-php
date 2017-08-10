# Configure a yum repo for RedHat-based systems
#
# === Parameters
#
# [*yum_repo*]
#   Class name of the repo under ::yum::repo
#

class php::repo::redhat (
  $yum_repo = 'ius-release',
) {
  package { $yum_repo:
    ensure  => 'latest',
    require => Yumrepo['rorix'],
  }
}
