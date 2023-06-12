# ClickHouse 本地开发服务

启动服务后，将启动两个节点的ClickHouse集群，并创建nignx实现端口映射，最后会在`test`数据库中创建QAPM业务表。

并配置`0.0.0.0:8123`和`0.0.0.0:9000`端口映射，50%的概率转发到两个节点。

## 启动服务

执行`make`命令启动所有服务。

会执行三步：

1. 生成配置文件到`tmp/`目录
2. 启动nginx、clickhouse集群
3. 执行建表语句


## 停止服务

```bash
make down
```

## 清理配置

```bash
make clean
```
