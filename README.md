# Rails challenge by @owalmirneto

> Put your requirements here…

## Solution

This application was implemented using Ruby on Rails and PostgreSQL.

### Requirements

- Ruby 3.2+
- Rails 7.0+
- PostgreSQL 15.1+

You only need install
  - Docker
    * Mac: https://docs.docker.com/desktop/install/mac-install
    * Windows: https://docs.docker.com/desktop/install/windows-install
    * Linux: https://docs.docker.com/desktop/install/linux-install
  - Docker compose: https://docs.docker.com/compose/install

### Setup

```bash
make setup
```

### Start application

To starting the application, we need to start services with docker-compose in daemon. So, this will start all services include web application

```bash
make up
```

### CI

To run all tests and code verification

```bash
make ci
```

### Code fix

```bash
make code-fix
```

### Rspec

To run only tests

```bash
make rspec
```
