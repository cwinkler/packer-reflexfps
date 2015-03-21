# ReflexFPS Dedicated Server AMI
This is a Packer Template for a dedicated ReflexFPS Server based on Debian 8.0 (Jessie) and Wine.

## Configuration
Right now you have to manually SSH into your running Instance and change the configuration files manually.

The server config is located at `/home/admin/steamcmd/reflexfps/dedicatedserver.cfg `.

## Start / Stop / Restart

    /etc/init.d/reflexfps start|stop|restart

## Roadmap
- Build a lightweight Web-Interface for managing the Server
- Get rid of Wine, once the linux dedicated server binaries are out