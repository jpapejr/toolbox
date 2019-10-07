#!/bin/bash
MACHINE={$1:-dev01.cloud.ibm.com}
sshfs root@$MACHINE:/root/projects ~/Documents/RemoteProjects -oauto_cache,reconnect,defer_permissions,negative_vncache,noappledouble,volname=RemoteProjects
