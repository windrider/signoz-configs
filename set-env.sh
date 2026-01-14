#!/bin/bash

# 创建数据目录
mkdir -p /data/clickhouse /data/zookeeper /data/signoz

# ClickHouse - 容器内默认用户 ID 是 101
chown -R 101:101 /data/clickhouse
chmod 755 /data/clickhouse

# ZooKeeper (bitnami 镜像) - 容器内用户 ID 是 1001
chown -R 1001:1001 /data/zookeeper
chmod 755 /data/zookeeper

# SigNoz - 使用 root 或通用权限
chmod 777 /data/signoz

echo "数据目录创建完成:"
ls -la /data/

# git clone https://github.com/windrider/signoz-configs
