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
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'luftloch:2iXfU4Ek/LyAijS5k7/AReuD8hJbPFM4ce3tB/bFIBo='\"",
}

file { '/home/luftloch/password':
  ensure => file,
  owner => 'luftloch',
  group => 'luftloch',
  mode => '0700',
  content => "Change this password asap!\npassword: 2iXfU4Ek/LyAijS5k7/AReuD8hJbPFM4ce3tB/bFIBo=\n",
  require => [ User['luftloch'] ];
}

user { "tarnatos":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/tarnatos/.ssh/':
  ensure => directory,
  owner => 'tarnatos',
  group => 'tarnatos',
  mode => '0700',
  require => [ User['tarnatos'] ];
}

ssh_authorized_key { "cbreut@cbook-UB":
  user => 'tarnatos',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDY0l9IZuodB8B3dyitDlpnSG0n8T7EbNnwYybbYoXwbHUB6ulhSe+g1Qso8PvJVXqeX2wLxrP9djDuHJQf2QZCwA3Qr0f06D4XYVQ33nuaP+y9a8HV+bL27sYrplH+GRrm84Vw5qvsKkL/aGKqJWHRBRkRka8Gsf38z1F3yz5z5yWCvIC11mCuFJW0DS1L4YgAuaNO0+nCtyJD0tyghbxprfbN2chltNUzJ+y5Jo+zh6FxLP6LqQEx4bFHvBs2ojGVDKX78M4VUBxhqQ+tFNHuQHHV1WowRNtNK0nTYqyIE2gW9cXjqQF6p5c0AiWN7FF4KtXdvavCnqMvO/q6oP7P',
  require => [ File['/home/tarnatos/.ssh/'] ];
}

exec { "tarnatos_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'tarnatos:4Qb+u3H/LBPPSjO/1YDt1NtXfPt1Jqkp9GWoeRI8abs='\"",
}

file { '/home/tarnatos/password':
  ensure => file,
  owner => 'tarnatos',
  group => 'tarnatos',
  mode => '0700',
  content => "Change this password asap!\npassword: 4Qb+u3H/LBPPSjO/1YDt1NtXfPt1Jqkp9GWoeRI8abs=\n",
  require => [ User['tarnatos'] ];
}

user { "fsteinel":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/fsteinel/.ssh/':
  ensure => directory,
  owner => 'fsteinel',
  group => 'fsteinel',
  mode => '0700',
  require => [ User['fsteinel'] ];
}

ssh_authorized_key { "grill@calculon":
  user => 'fsteinel',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAAD7wDWgQfdR/lGGGvEmAo01HvK/7G1XVAmIdf/U8meHn0Fbc0xlw9tXJRrlMJ3p6ONA9ZaOR5xzq6weJnK/vLxP9ev5lfjb5SDyR957Gd0X4S9e3mSCaEriuHlNd20EayeU8lf5u3WmXJDSH8dkAyvSLaReXAsKYDfJnQgAhv+XKbmsxdTq/E2uvfsEiXPDZhepSeV+9zIZIKRYHTTHTlIvyYak9o9VsrbQj3hWbJ69wcR1VqC6laVkbJc3Ouio6RHFloLbL513cUzvGjECifqqUQB5QpksbbeJLmSnyW2iyUHmVrHfaJmfwFltHB6ShONjqYQj1/FQN/v5x1tHLHgXPge4StgMieESqxL+SRUTLFOL1Y+b/HUxnlFRhh0HqKqUgxkTqUgLm479O1kRa6aeQLDGUhdxyzaZ/NM57cyBE9lfYle4VPLSzvGucYx/yRyRwwAe9RHEG4SqG8QV4L6kB+gVC/NxfudAWrtHE0dDGToo56NzCSHVZLZ4HDVvmdW63fufEKtmwaf9Y5hI7SBo8wcJjoBe9BDCvachA/HJCxSctrV9ceJZ0hmm2NT6dMgl9nupTS4tSyvMNG+uRuf3dt7mPnHe32WrBN9ieg1dfAPCLR4FxC+DYBAuiLrfp0RMJI38+dg6nyH5JWTZoUUvJHqaaG7+83qcRnhGhWzIsygCZTP0ZNTVI1ZDZUtkl8+nWoomHkJ3VzW3R6YwgEhCS3wgVRXaeDl0WOES4TCdr5m6/+7y5t6XsVJaf5Owjb9/48spSmZvqmJF1iuPXkF+r6+nK1/17E8MSy37bkDvKr/lQbCvRwkITGFpu0/ryDnSzK5zH82crtDjMi7nzq6UoHff/aX0bQH8iWA1sCZb3n6iZkqxxlvT8zDbs5YvN/9qt8VJJcOwr5RtbL5SobV8QmoyWpURGw48AKvDs+V5NhjJJIYsDjeyI057RgY4zWu2reSu2BfYBv13bPWYwBdKQXC9rT3MBTShNkmUiopzIoWWNXKpXiBNXG6zlAcHnrWTsvF/deA7u3Q4fyeloo+5JFrtGPMSuHQKqq+rz6WfktNUKQUmVgVXIjQKuP7NWm7M5yl0DXq/Kvan0UFhNuYeno8Dth6xHFo6C1dlFej313+NfJGRUR+sq/ftiFJomnvNM5EeeDUBu9eZxNre23gpXCagf+vy5tixE4MpTHPNT22tnHqityRoS6pYIxiXmGOo0lTfm4UH0Jyah4u907PFEc3WC4ip/WZrqJY5H5NwZ1U+DMlyBO3hBirr5oW0LWhictEiT9Zwmw3TV2ZvqD5uhXkTQw5XDIgbJFfdQC/oUUQxoxDXBlEAE02Exo3gSdX',
  require => [ File['/home/fsteinel/.ssh/'] ];
}

exec { "fsteinel_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'fsteinel:1YEywygQXfRFJnSHadWy2VFVev6uN+fdLuC0u/WuZa4='\"",
}

file { '/home/fsteinel/password':
  ensure => file,
  owner => 'fsteinel',
  group => 'fsteinel',
  mode => '0700',
  content => "Change this password asap!\npassword: 1YEywygQXfRFJnSHadWy2VFVev6uN+fdLuC0u/WuZa4=\n",
  require => [ User['fsteinel'] ];
}

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
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'rubo77:shghTjEy6nxX/reziz93CDcL/qFO+eqPjeElKw/95tY='\"",
}

file { '/home/rubo77/password':
  ensure => file,
  owner => 'rubo77',
  group => 'rubo77',
  mode => '0700',
  content => "Change this password asap!\npassword: shghTjEy6nxX/reziz93CDcL/qFO+eqPjeElKw/95tY=\n",
  require => [ User['rubo77'] ];
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
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'mikevanbike:iQ81GXxTy8P+kqqlTifY7g7FyglwFVdJETTVu4Siv3E='\"",
}

file { '/home/mikevanbike/password':
  ensure => file,
  owner => 'mikevanbike',
  group => 'mikevanbike',
  mode => '0700',
  content => "Change this password asap!\npassword: iQ81GXxTy8P+kqqlTifY7g7FyglwFVdJETTVu4Siv3E=\n",
  require => [ User['mikevanbike'] ];
}

user { "mxmla":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/mxmla/.ssh/':
  ensure => directory,
  owner => 'mxmla',
  group => 'mxmla',
  mode => '0700',
  require => [ User['mxmla'] ];
}

ssh_authorized_key { "kontakt@maximilian-jacobsen.de":
  user => 'mxmla',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDGYC6WDJRCJWOgs706p8tc5OoEUj9ksCoVIs2RpAP/Sj+F5eQHz4BGpnEFZIT9ivmOwAFIZoLFlNqSOTTDXzvZDKY64VKjNG5lYxnopWhnG9KfIWuz5Fwymjt1/SHWLXYOPSZl/KV3xT1usRgP1+t5+lYHRw078WKSpt1sfy2rYzbbUjiW5FSZZebKEvCp0yc/w0cqfFORJFntzOEhsiy9fAq5VQCeiQHb5z/AEPIMxcs8tNxsEnFTRLy31WWGTM4LMV4gBCqHRWhE4vh4yrVVx7AIyUcCuFuO3p4/fGi1ESbcCx+Jzll2lee5VjY4bwGO574q4Bqe4eESRRnqu0EHVYMGSPPAGY+eCIzvmiwaachGPG0HBwd+cqJrEeZNpXyQG3x3u2kmzVqUTveYs1zSCQz5xwn3wwGj4mMuq35pmDQn/xqX3MTnGFqxL5w7UMYrJdTOJn3sE0ZO37q43rmWcELdwI7bSqSOK8epwvkpS0JvqfZJGjIYy67MYeCPTDdBDfsT26dmvx4g8+78tyrMVIsP5PVnvi34KN6jxMCEkE5teh1lAtM007mDyUvGn+YQoDzzEsQI2NLPYt2R1TTLvq/WrVOhzyZEZ8mx25kAVFIAdZVIMf3iWWyyFitvZ2YsvnBiZN5n0aASmfhIqKEXJbTVDMrM2cyrJTdm29C1fQ==',
  require => [ File['/home/mxmla/.ssh/'] ];
}

exec { "mxmla_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'mxmla:UxWAp90hCkwqBA77RmAi+pGMpCB/660a1w/edC9dUzM='\"",
}

file { '/home/mxmla/password':
  ensure => file,
  owner => 'mxmla',
  group => 'mxmla',
  mode => '0700',
  content => "Change this password asap!\npassword: UxWAp90hCkwqBA77RmAi+pGMpCB/660a1w/edC9dUzM=\n",
  require => [ User['mxmla'] ];
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
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'sargon:OMQA8N6tzxiAhZcPvmDl8t0S3MceiFib++ptSFGSosI='\"",
}

file { '/home/sargon/password':
  ensure => file,
  owner => 'sargon',
  group => 'sargon',
  mode => '0700',
  content => "Change this password asap!\npassword: OMQA8N6tzxiAhZcPvmDl8t0S3MceiFib++ptSFGSosI=\n",
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
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< 'wonka:d/VzhBGeP45tZKiYutKZkEyDd2Je35dTvu/QO09BmPQ='\"",
}

file { '/home/wonka/password':
  ensure => file,
  owner => 'wonka',
  group => 'wonka',
  mode => '0700',
  content => "Change this password asap!\npassword: d/VzhBGeP45tZKiYutKZkEyDd2Je35dTvu/QO09BmPQ=\n",
  require => [ User['wonka'] ];
}

package { 'sudo': ensure=>installed; }
