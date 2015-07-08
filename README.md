ansible-vagrant
---

This repo provides a minimum VM to build and test Ansible on an Ubuntu 14.04 system.

To run:

```
$ vagrant up
```

To connect:

```
$ vagrant ssh ansible
```

To build and test:

```
$ vagrant ssh ansible
...
$ cd ansible/
$ sudo make tests
```
