# docker-rsync-curlftpfs-alpine

For CI/CD use. (More CD than CI)

The idea : https://www.debiantutorials.com/automated-backups-to-ftp-server-using-rsync-and-curlftpfs/

.gitlab-ci.yml exemple :

```yaml
deploy:
  image: 1000i100/rsync-ftp
  script:
    - mkdir /mnt/ftp
    # $USER_PASSWORD_HOSTSSH_PRIVATE_KEY = ftp-user:ftp-pass@ftp-host.tld
    - curlftpfs $USER_PASSWORD_HOSTSSH_PRIVATE_KEY /mnt/ftp/
    - rsync -az ./public/ /mnt/ftp/
```
