user { "rubo77":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/rubo77/.ssh/':
  ensure => directory,
  owner => 'rubo77',
  group => 'rubo77',
  mode => '0700',
  require => [ User['rubo77'] ];
}

ssh_authorized_key { "ruben@nebelhaufen":
  user => 'rubo77',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAANJ3eKdv0B6FrxnJz7pmHqslGff4sU/Qs3fa+QRqLi83wWsYG5W567rin92PA/8mUwOHm9tZcUkJSVwTvpXlz5rZl5k80XNPU7u+I/C3d5kCAD4+207d1jMcaDrsV20czSBPucrGIbY23N7XNYXSbXJVivBeu1dn28srabi4t8vbbawVlgkVyhJFr42a83uqDBpgAkYzjGNBYMGEdvfYFgE69Eire/bEBAQqYxUP7HwQyLQMtYpIoZVfVGl7D6gk3Xulnlxk4nfBmRerZ2X4whZZTkYWejKozMj4I/I5hl6FtSFZugFhz8WvMgKyKDZAOEnKiQ0C4uCX2JjoMTcWLXIAawVsQOfJ+PCNUiyZASLY0qJasd4WQcDEGfxL7vimnxrNOu9NlNhZlthAFJTAeNkxIoMQNftIzV/hsi2tJrLKtrwdq0duU/iBYVcTLHt9dSP2M4hVKCdL3su1rsvb2c2KhOa1yyZLveQGLMyrssXTpopdOBpqNjwXmQTkL+5058aBlSSqSewW6t2WXxtw+9V5csvzCaLUg3Jq3G2BPJ+ovH2bosZOGiZcdECnX36MKFft8aHDL5SFucyaeXX1YF3xA0LUBiofM2DPKpbuv8taiHpFHOfQ2Ip0M4PFXvU4pnQifXHe7+KcDtDQ6a3DrbRngAB67eCqNthu9pwL8gr',
  require => [ File['/home/rubo77/.ssh/'] ];
}

exec { "rubo77_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'rubo77:p3TuaWLVdrtgLjVifCi9Oy6H6dLf6bzTt2MN6dA0oKk='\"",
}

file { '/home/rubo77/password':
  ensure => file,
  owner => 'rubo77',
  group => 'rubo77',
  mode => '0700',
  content => "Change this password asap!\npassword: p3TuaWLVdrtgLjVifCi9Oy6H6dLf6bzTt2MN6dA0oKk=\n",
  require => [ User['rubo77'] ];
}

user { "DO9XE":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/DO9XE/.ssh/':
  ensure => directory,
  owner => 'DO9XE',
  group => 'DO9XE',
  mode => '0700',
  require => [ User['DO9XE'] ];
}

ssh_authorized_key { "kontakt@lueth-labs.de":
  user => 'DO9XE',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDRa57Ma+z2ZO6tK4hqf5LFVEqHtqz78d0JNsXFQ72v2tr5kmaJp0jeZ893PSkmiTSkQI1Tq3oEyAYjVo9KuZoba22v8iHd1qBol9cNdvnPqMPAurBOVLPLlgm9m2K2tCLGYBYHJdhu2g2LD3K3Gpn0UqDXWETKsxT2eR7agmXGmkQzRWxm5cajClGLhr1jnGiNqKRxkXdh0N2gQgH5tfpCWgJTZnQUdsM2sdAoupPBA3r4a1N7yAmvLW7VOftaJMwpnAsoVG+GgHS5LaybKcYG68ZN0nbxZyOerDBTAHV4WBSe1MrSjjC5Jj49dZm7pi9gNi2axm6YiFKJt87ZS+ZEgXgKJSXAcOs1pfv1aCefouxHARWa3meG4tQVPLtI6iz5tDlk7M0rkbIJKkRkugnMRt+iRqq+TEf/5tDVZlJs8fixV+7VNmf2mUKDvcCuMEeZVbZtEyLDbso2pm0OKqpoHqLerKTjNqp7N1i8W0fKTuEgO0qHhB7EFSgL6AfGfziCINmUSRk6R70jIu1NU+ODa+CCEgzpTLgdXvLCNtwUyNDH5CCKB/gvVJ8ijxHEL/1u6R9VOONGE+jPTT6alXlwwcFWuk4WX7pflATYCm5AnxuLfzxUG/oH30+9j4RJPLDHPrbe2mIR9nNcvLSSeey2x1FC3DGF7Zv9K2IS3Nuomw==',
  require => [ File['/home/DO9XE/.ssh/'] ];
}

exec { "DO9XE_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'DO9XE:rXpw3UgrcEREU1mljEbThm2OYTFL4vOOiETQUhjaWM4='\"",
}

file { '/home/DO9XE/password':
  ensure => file,
  owner => 'DO9XE',
  group => 'DO9XE',
  mode => '0700',
  content => "Change this password asap!\npassword: rXpw3UgrcEREU1mljEbThm2OYTFL4vOOiETQUhjaWM4=\n",
  require => [ User['DO9XE'] ];
}

user { "mikevanbike":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/mikevanbike/.ssh/':
  ensure => directory,
  owner => 'mikevanbike',
  group => 'mikevanbike',
  mode => '0700',
  require => [ User['mikevanbike'] ];
}

ssh_authorized_key { "luci@lea":
  user => 'mikevanbike',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQClqOygRxXhxI3Ks74gAtgPawgatKIp7d/++uk3sSg5XQtCID+dUGRf+eUXZXM+HsxV6J0yzmopJP0CKmPO2QVDnO18kvveiBvZ4JHQM3yaSwqIVvfWjLaDiZE0YL1zV5M2yZUp6r/whfBvcWY7lZJGf7Rq7x2HUymh3RJiPS4NYOPkMkP8PpvaqgZ10yAliFxrOGnpF9CJkUym44qsRBA9ADl2dbtgiiWT91BPTSCvHY1juNPVvRb31rKvXwW5F0MW5kFEkME/HmGRWZFvUSEQDGj3Aypw14siHYudwOCNZv9pkCWLm5qzBxVO+klf/Q2gDv2ufCZBqYb3AHxq8g1UjbKpDrkJM96CEgtVle2TvA8t1FJn/96v/yQJPPMoqtZGKBMPnso9KhZYh3e2Dfgv4Gu/hWjlHYnl7sciNyPeSnU8iuBsQvREelvROUQeSD9GQy9XPjG3IKmNCsVfxl0uUgljYMUcp29HSpR6mz6HOQnWFNzHtlOhaPFwCPUwQeDjHKJf6YTbdsYQISDwakmiMqe1W6j9xNrPOEZAG0NYMc4T2toGnyA6JjjT6FXD0TiiVpeOhiFLf1KhJRha4dXt6xIyYL8CUQ8w/+lmsOKksCNW1KaH7hJXA5tC2qwMs3bA0pwd08rzEu9dJ6nTxq01jQvl6Lf7JAGWctlqdoDlCQ==',
  require => [ File['/home/mikevanbike/.ssh/'] ];
}

exec { "mikevanbike_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'mikevanbike:Zu0U/7uMST37bE15vlIFdjl78ZpJVx//6rSLKfwzkkE='\"",
}

file { '/home/mikevanbike/password':
  ensure => file,
  owner => 'mikevanbike',
  group => 'mikevanbike',
  mode => '0700',
  content => "Change this password asap!\npassword: Zu0U/7uMST37bE15vlIFdjl78ZpJVx//6rSLKfwzkkE=\n",
  require => [ User['mikevanbike'] ];
}

user { "luftloch":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/luftloch/.ssh/':
  ensure => directory,
  owner => 'luftloch',
  group => 'luftloch',
  mode => '0700',
  require => [ User['luftloch'] ];
}

ssh_authorized_key { "luftloch":
  user => 'luftloch',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQD33R48DMFqqC/yVVMfcpjzseEsbBgjc+dBJLBNpH1/WPEC3G9t+ZsypuSeT8vYO6Qf3wVdiwbBUwWVvyqhyPIYYLYsHf/jHoB90nmXwnDl779oQc+KNz/DN5sEnX0ejdFj8u+KhQwDGqoHtIm3pxTtJsK+pa7x4Cglvn0KGDb4XuP/4TNWiDdEvLBP0qSBjtr65yWZ0WmPWgjwK7SqVVzdkoFrTO8onIB1qEvQt11KH6SFnrlzwJaz0qm1PGyRGVCPkkbfNoVvj9NAWv6owgEQLMwVkHQ9YGS3ZPGm4uQLQ4F+K7dX8UeBafWPm25LogFoXkxZdYBMc9jG+lOXtpjaOWwDnhfuppQEXP5aDFXihVl7AmPexNeGPyVNBTRCX0aVHpiikRdzWD8PrInvKaqz7q/N+x2gfMFWJAhRvUgXgWtOsqRFvCnH3gPV2e1mUmD1sbsBc3NSs0O91tClW8aHQY+kYhlJ4l037Kv3OQOtoW0h3nqcWLJJ0SL2640FKNGBJXbMMy6tmozWU7wRuEJSMo7SOeI9i8FVxsfihD4HHhZiZMfSU425rtNJByphCjkwg2T3dYEBbCiLqJSbPwzLhwJf1/Hbs/ytDcO/QoEmgYPbyd3AhaC09gjgyI/fxPuygEvSNidDUXZIixZxja1Bn9aGG6yJz+x5HxUMK86KVw==',
  require => [ File['/home/luftloch/.ssh/'] ];
}

exec { "luftloch_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'luftloch:Q15JvaEevTASoD3HVwRulbnjybQ2Rt9G1em7wrXGcb8='\"",
}

file { '/home/luftloch/password':
  ensure => file,
  owner => 'luftloch',
  group => 'luftloch',
  mode => '0700',
  content => "Change this password asap!\npassword: Q15JvaEevTASoD3HVwRulbnjybQ2Rt9G1em7wrXGcb8=\n",
  require => [ User['luftloch'] ];
}

user { "sargon":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/sargon/.ssh/':
  ensure => directory,
  owner => 'sargon',
  group => 'sargon',
  mode => '0700',
  require => [ User['sargon'] ];
}

ssh_authorized_key { "sargon@pan":
  user => 'sargon',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAAEAQDYVH0eazRL10d6k2kUgv5M1kfdBXGx8fMp3tV0k4nnveUZeu9B8lhZHPkuHY310dS+XHW8SBZPeVVOf1KwbHYx8bPsbsyDSt0XMhn+xRmQUgfZUf10uPfkb2UfkezwunGoNJkj/ulBKC9J5rzZ6gGktdXPBOl6HmRJohCTyRWAZd/9a9oc8BiNxDHNhSpW3w39Ks8q/zj9nX2TSbacQwBli87Veb5pvrhrSMgIh/DdVs0muf2cUQD9F9PV7nY2bkq4eW+VSclMXxDLDb7qJ8s/4IYwzMl2IDZH0zy3U8iWfRFZ/VoCKjqMgFwt3ztCcxY3u822U+Ru2L9WG9hjQa72oP5rd+gu1YfmSLadG+sU7GtKQyczMRF+HKWq7BvjZhYXNCjD76hyrMbUnvgZ9+Oe5vuwLzvq28UAZiIIsNYwCfweD9aaG4bjwY9Dev+n6OkjrcdkEp4jNFGgmA+ZLsFDXe485a9/Fh+mFm+tOeQUTF/A2ZhY/eCRLuiVdAYW4znlmO6V8xpRc3LGVbhdLS2lmif7N9/zpayqleC0fUqaM3ne8F/7J/SAtCqqd8wQagzbLIUAEZYEWneDr4EUgpEP6ZCrtQebBFzoF5fpRTgG+a0P89IAFO+yCZLtBw2dYEplGHliyF9QQ+BwWKuGLLHFMcLwJ+5XjJ6jnCJgoNsF3DMJiGqValtfnF3zkBclsxCMu6YCVRUNrQHVQyPNZLQwqDNOjK1hwJUtx2M/iCHFF8iifvPhz8pToJGl6DRZUYPqmvXzt1fD8RCefsEB+GPIVKpWJl4AvIK7RFXAEsblrSIBKp2cxl67tgTZf5N4hFCEGAH6H3fkNV0+n2P3ax4z1XrIFp5J+9gGhf3lmFGiYwuokAtT2RKidJpeT7/uFXkofeyP3v7G630XIFCwG8kluZFF/jyd2SV3y4PoJr6B3D7muOEuQoCd4xdz6zehQdChbRShtYz/ylmlDhtlzgjeDMOZ1QKRi++W0aitTBT4JMrANzRQtoD41vwZQhSx/Hq1qUGNqKAAf62sDmMrkJ6+bM7pc4pByoH+r8+0/+hjsUXgi2pn3/CsI8OMp3mP4p2Ip5gvjfv2HqP13qhjFIfkLCdJlzsnu5s30nXtXnlkeJyLbuoigpTzkv7AaAJizkv6h1Syor5CguXYU/dqyORf4fOPLXJ3tZQ7aej9pmlt2qldhw7qmyY46kDNN3JwQlxieImOE6h9ayrGBe5TU0hWVEVnvmYtPvXygugyio38tsVfo8JP0UdFRy51xEwjeoD7E4/5a1b4r/Y+33lGHr3l15xKAX5aH3963v8IyJMx8X+2h4nCou3Ml23p0QsA5LKRgfLJVnUQl32ipsKfwYj3',
  require => [ File['/home/sargon/.ssh/'] ];
}

exec { "sargon_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'sargon:CnCpsrNNhMivJgq250Qn1Kt+MIEXYn3ojzYGiaTAFQ4='\"",
}

file { '/home/sargon/password':
  ensure => file,
  owner => 'sargon',
  group => 'sargon',
  mode => '0700',
  content => "Change this password asap!\npassword: CnCpsrNNhMivJgq250Qn1Kt+MIEXYn3ojzYGiaTAFQ4=\n",
  require => [ User['sargon'] ];
}

user { "wonka":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/wonka/.ssh/':
  ensure => directory,
  owner => 'wonka',
  group => 'wonka',
  mode => '0700',
  require => [ User['wonka'] ];
}

ssh_authorized_key { "w@chaos":
  user => 'wonka',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC0mY0qGJvXaddUREnVuds5x3Vc1P82px087EGW81LJmthf1nFqAqfJH1bVm/SJle/NCwNegO1jAsuAhIFM3CAoBRnWygQz03J9/245FysrCl2iP2lWMysDpSFAHm5oRlIKhK4D+cjA6RHvJl/q76QUAvW1Ul/G+ED+c17obHVWuyPrwuwtsq7GORcpTcLXTwJFDB4QhZxDK7YXnwzrKQYCHrMwvUgdtMVM3TD+vX67EZ26Q7gXJbi1KrrCEDfgNXBOBbM9cQCVFhx2fEQD07kNigtWYDtj4FPowwY/TUEglARbS43F7f9GxtjWCs9LujH1uL3goxXdZYlGmUyreNSp',
  require => [ File['/home/wonka/.ssh/'] ];
}

exec { "wonka_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'wonka:d1xepIcH7EROSc13v9hwuCzmH7V0Qt2tmKxuecovhoU='\"",
}

file { '/home/wonka/password':
  ensure => file,
  owner => 'wonka',
  group => 'wonka',
  mode => '0700',
  content => "Change this password asap!\npassword: d1xepIcH7EROSc13v9hwuCzmH7V0Qt2tmKxuecovhoU=\n",
  require => [ User['wonka'] ];
}

package { 'sudo': ensure=>installed; }
