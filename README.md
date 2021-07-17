# FreeIPA-VMware-Template
This service configure FreeIPA Client at first start VM.

Install:
- Put /opt/* to /opt on VM.
- Put ipajoin.service to /etc/systemd/system/ipajoin.service
- systemctl enable ipajoin.service
- systemctl poweroff
- Convert VM to template.

Now, when deploying a virtual machine from a template, it will automatically connect to the freeipa server.