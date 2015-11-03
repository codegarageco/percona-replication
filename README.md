# Percona Replication testing
Replication master slave, using vagrant.

# Pre-requisites
- At least Vagrant 1.5
- vagrant
- vagrant-omnibus
- vagrant-berkshelf

# Add plugins

```
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-berkshelf
```

# HowTo

```
bundle install
berks install
vagrant up
```
