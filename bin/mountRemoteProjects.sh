#!/bin/bash
sshfs root@dev01.cloud.ibm:/root/projects ~/Documents/RemoteProjects -oauto_cache,reconnect,defer_permissions,negative_vncache,noappledouble,volname=RemoteProjects
