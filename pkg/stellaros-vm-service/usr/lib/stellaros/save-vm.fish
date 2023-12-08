#!/bin/env fish

set list (VBoxManage list runningvms)
for vm in $list
    set a (string split "{" $vm)
    set b (string split "}" $a[2])
    set id $b[1]
    VBoxManage controlvm $id savestate
end
