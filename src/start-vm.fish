#!/bin/env fish

set managervm (cat /usr/lib/stellaros/manager-vm)
set list (VBoxManage list vms)
for vm in $list
    set a (string split "{" $vm)
    set b (string split "}" $a[2])
    set id $b[1]
    if [ $id != $managervm ]
	VBoxManage startvm --type=headless $id
    end
end
sleep 10
if not pgrep -x VBoxHeadless
    set c (status filename)
    exec c
end
