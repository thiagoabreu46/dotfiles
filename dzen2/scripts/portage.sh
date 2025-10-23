#!/bin/env bash

emerge=/bin/emerge
update="-avkuDN @world" 
sync=/bin/emaint
emaint_sync="emaint sync -a"
daily=$emaint_sync && $emerge $update
package_use=
package_mask=
emerge_fetch=

exec doas $daily
