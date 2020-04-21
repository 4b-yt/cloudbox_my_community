# cloudbox_my_community

Additional community roles for cloudbox.


| Service | Description   | Docker Image | Subdomain.{{ user.domain}}  |
|---|---|---|---|
| [Calibre](https://hub.docker.com/r/linuxserver/calibre) | a powerful and easy to use e-book manager.  interface available via Guacamole server in the browser. | linuxserver/calibre | calibre |
| [Cloud Commander](https://github.com/coderaiser/cloudcmd)  | Cloud Commander file manager for the web with console and editor  | coderaiser/cloudcmd |   cloudcmd |
| Codeserver | | | |
| Gitea | | | |
| Lazylibrarian | | | |
| [Ubooquity](https://vaemendis.net/ubooquity/)  | a free home server for your comics and ebooks library  |  linuxserver/ubooquity  |  booq |
| [Varken](https://) | Utility to aggregate data from the Plex ecosystem | boerderij/varken | varken |
| [Wallabag](https://github.com/wallabag/wallabag)   | wallabag is a self hostable application for saving web pages: Save and classify articles. Read them later. Freely. https://wallabag.org |  wallabag/wallabag:latest  | bag   |
|  [XBackBone](https://github.com/SergiX44/XBackBone)  |  A lightweight file manager with full ShareX support (and more) | pe46dro/xbackbone-docker   | xbackbone  |

## How to use this resource

1. Assumes an install of  [Cloudbox](https://github.com/Cloudbox/Cloudbox) Automated Cloud Media Server.
1. Clone this repo:
1. CD into the `cloudbox_my_community` folder:
1. Run `bash run.sh` to view availabile tags.
1. Run `bash run.sh /tag/` to install or update

```
