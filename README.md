# Oracle Database Dockerfile

This repository contains **Dockerfile** of Oracle Database Express Edition 11g Release 2 on Ubuntu 14.04.1 LTS for [Docker](https://www.docker.com/)'s [automated build](https://hub.docker.com/r/sergeymakinen/oracle/) published to [Docker Hub](https://hub.docker.com/).

[![Build Type](https://img.shields.io/docker/automated/sergeymakinen/oracle.svg?style=flat-square)](https://hub.docker.com/r/sergeymakinen/oracle/) [![Total Stars](https://img.shields.io/docker/stars/sergeymakinen/oracle.svg?style=flat-square)](https://hub.docker.com/r/sergeymakinen/oracle/) [![Total Pulls](https://img.shields.io/docker/pulls/sergeymakinen/oracle.svg?style=flat-square)](https://hub.docker.com/r/sergeymakinen/oracle/) [![License](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](LICENSE)

## What is Oracle Database?

Oracle Database (commonly referred to as Oracle RDBMS or simply as Oracle) is an object-relational database management system produced and marketed by [Oracle Corporation](https://www.oracle.com/).

## Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/sergeymakinen/oracle/) from [Docker Hub](https://hub.docker.com/): 

```bash
docker pull sergeymakinen/oracle
```

## How to use this image

#### Start an instance

```bash
docker run --name some-oracle -p 34000:1521 -d sergeymakinen/oracle
```

#### Start with persistent storage

```bash
docker run --name some-oracle -p 34000:1521 -t ./data:/u01/app/oracle -d sergeymakinen/oracle
```

#### Connect to it

Parameter | Value
--- | ---
Protocol | `tcp`
Host | `localhost`
Port | `34000`
SID | `xe`
User ID | `system`
Password | `oracle`
