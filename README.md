# 校园网单点登录暴力破解脚本

- ###### 使用条件：

  openwrt软路由

  校园网为小蝴蝶校园认证

  脚本依赖OpenWrt版小蝴蝶拨号认证插件[github地址](https://github.com/ok-dok/lua_supplicant.git)

- 文件说明：

  脚本包含两部分

  1. netcheck.sh

     说明：主要的运行程序，将会每隔3秒钟对网络进行一次连通性测试，如果网络不通，将会自动调用supplicant进行网络重连，以此重置网络被限制状态。

  2. netrestart

     说明：用于设置开机自启动

- 使用方法：

  将两个文件上传到openwrt设备上（如使用scp命令），随后将netcheck.sh文件放到/root文件夹下，将netrestart放到/etc/init.d文件夹下，随后使用以下指令设置开机自动启：

  ```bash
  /etc/init.d/netrestart enable
  ```

  随后重启即可运行

  如果不想重启，可执行以下指令：

  ```bash
  /etc/init.d/netrestart start
  ```

  supplicant的相关设置请自行查阅它的readme文件

- 注意事项：

  1. 本项目仅供技术交流使用，请勿用于违法行为，若存在使用此脚本造成恶劣情形着，其后果与开发者本人无关
  2. 欢迎提交pr,issue
  3. 项目使用GPL V3许可证发布，请在GPL V3许可下使用，但禁止商业用途 ！！！
  4. 此项目不接受打赏等形式的赞助
