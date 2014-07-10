ssh-askpass
---
#####   DESCRIPTION
>   ssh-askpass is an X11-based pass-phrase dialog for use with OpenSSH.  It is intended to be called from the ssh-add(1) program and not invoked directly.
#####   ADD Feature
*   gnome & kde desktop add config file,this file can control ssh-askpass on or off.
*   In addition to gnome desktop and kde desktop ,disable ssh-askpass
#####  Other
>   You can also  run ``` unset SSH_ASKPASS ```
disable ssh_askpass.
##### Notice
######  The default desktop configuration does not exist ssh-askpassrc,you must create ssh-askpassrc.  

*  &ensp;&ensp;&ensp;&ensp;KDE DESKTOP FILE PATH : $HOME/.kde4/share/config/ssh-askpassrc
*  &ensp;&ensp;&ensp;&ensp;GNOME DESKTP FILE PATH: $HOME/.local/share/ssh-askpass/ssh-askpassrc

----
