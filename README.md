# cloudbox_mod

- [Wallabag](https://github.com/wallabag/wallabag) - wallabag is a self hostable application for saving web pages: Save and classify articles. Read them later. Freely. https://wallabag.org
  - *URL:* bag.{{ user.domain }} 
  - *Image:* wallabag/wallabag:latest
- [Ubooquity](https://vaemendis.net/ubooquity/) - a free home server for your comics and ebooks library
  - *URL:* booq.{{ user.domain }}
  - *Image:* linuxserver/ubooquity
- [XBackBone](https://github.com/SergiX44/XBackBone) - A lightweight file manager with full ShareX support (and more)
  - *URL:* xbackbone.{{ user.domain }}
  - *Image:* pe46dro/xbackbone-docker
- [Cloud Commander](https://github.com/coderaiser/cloudcmd) - Cloud Commander file manager for the web with console and editor
  - *URL:* cloudcmd.{{ user.domain }} 
  - *Image:* coderaiser/cloudcmd
- [Calibre](https://hub.docker.com/r/linuxserver/calibre) - a powerful and easy to use e-book manager.  interface available via Guacamole server in the browser.
  - *URL:* calibre.{{ user.domain }}
  - *Image:* linuxserver/calibre

- [Cloudbox](https://github.com/Cloudbox/Cloudbox) - Automated Cloud Media Server


## How to use this template

1. Assumes an install of cloudbox.
1. Clone this repo:
1. CD into the `cloudbox_my_community` folder:
1. Run `bash run.sh` to view availabile tags.
1. Run `bash run.sh /tag/` to install or update

```
