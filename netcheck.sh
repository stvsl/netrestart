#!/bin/bash
echo "网络抗封锁已在$(date +%F-%T)启动" >>/root/netrestart.log
while true; do
    ping -c 1 www.baidu.com >/dev/null
    if [ $? -eq 0 ]; then
        echo "网络正常"
    else
        echo "网络异常,正在重新启动"
        # 执行网络重启
        /etc/init.d/supplicant restart
        # 输出到/root/netrestart.log文件
        echo "网络于:$(date +%F-%T)重启" >>/root/netrestart.log
    fi
    sleep 3
done
