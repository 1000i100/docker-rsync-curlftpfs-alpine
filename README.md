# docker-rsync-curlftpfs-alpine

For CI/CD use. (More CD than CI)

The idea : https://www.debiantutorials.com/automated-backups-to-ftp-server-using-rsync-and-curlftpfs/

.gitlab-ci.yml exemple :

```yaml
deploy:
  image: 1000i100/rsync-ftp
  script:
    - mkdir /mnt/ftp
    # $FTP_USER_COLON_PASSWORD = ftp-user:ftp-pass
    # $FTP_HOST = ftp-host.tld
    - curlftpfs -o user=$FTP_USER_COLON_PASSWORD $FTP_HOST /mnt/ftp/
    - rsync -az ./public/ /mnt/ftp/
```
