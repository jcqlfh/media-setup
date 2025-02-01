# media setup

Create docker images for a series of arr servers and dependencies:

- Transmission (Torrent Client)
- Prowlarr (Torrent tracker)
- Bazarr (Subtitle Manager)
- Radarr (Movies)
- Sonarr (TV Shows)
- Readarr (Books)

## software dependencies

- docker
- docker-compose

## recommended file structure

- data/media
  - series
  - movies
  - torrents
    - series
    - movies
  - configs
    - prowlarr
    - bazarr
    - radarr
    - sonarr

## instalation

- Install docker
- Install docker-compose
- change .env acording to your data/media folder
- run composeUp script
