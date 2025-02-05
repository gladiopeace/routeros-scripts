#!rsc by RouterOS
# RouterOS script: ssh-keys-import
# Copyright (c) 2013-2023 Christian Hesse <mail@eworm.de>
# https://git.eworm.de/cgit/routeros-scripts/about/COPYING.md
#
# import ssh keys from file
# https://git.eworm.de/cgit/routeros-scripts/about/doc/ssh-keys-import.md

:foreach Key in=[ /file/find where type="ssh key" ] do={
  /user/ssh-key/import user=admin public-key-file=[ /file/get $Key name ];
}
