### about relay
>*    1.变量 pin user_name  password length请根据自己的需要填写
>*    2.脚本会调用kdialog，若其他非KDE桌面用户，请用“zenity --password  --title "SUSE"” 代替
>*    3.relay脚本上半部分根据自己的需要删减。
>*    4.expect 脚本部分，根据自己的交互shell填写相应的expect和send行

### about sec
>*    1.sec脚本需要在relay脚本后执行，依赖relay脚本生成的./.login文件
>*    2.用sec替代默认的shell后，每次新打开窗口都是自动登陆到远程服务器端
>*    3.以terminator举例，如sec替代默认shell后，终端无法启动，请修改 ~/.config/terminator/config，
>*      4.将use_custom_command = True 改为False，或者删除改行

### about relay_nogui
    1.功能与relay相同，去掉的图形界面部分(kdialog,zenity)

#### 如有问题，请联系 chaubeau01@gmail.com
