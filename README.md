## OpenList For Tencent SCF Example

很简单, Let's Go

1. 创建 WEB云函数
2. 运行环境 Nodejs 18.15
3. 下载 最新的 Release, 上传到云函数(本地上传zip包)
4. 打开编辑器, 打开终端, 运行: `cd src && make`
5. 找到 [config示例.json](config%E7%A4%BA%E4%BE%8B.json) 和 [data/config.json](data/config.json) 针对性修改
6. 给项目一个大大的 Star，给作者点个关注

> 运行 make 命令会自动生成 config.json 文件、scf_bootstrap
> 
> scf_bootstrap 会自动把 data 目录复制到 /tmp/data 目录下
> 
> 腾讯云函数只有在 /tmp 目录下才有读写权限, 但是空间要收费哦!
> 
> 如果怕配置文件有变化,那就运行 `cd src && make server`, 注意路径哦!
> 
> 也可以在本地先生成好配置文件哦, 但是 `temp_dir` 之类的记得修改
> 
> 端口号必须设置成 9000, 注意看 [config示例.json](config%E7%A4%BA%E4%BE%8B.json)

### 推荐示例:

| **基础配置**  |                     |
|-----------|---------------------|
| 函数类型      | Web函数               |
| 运行环境      | Nodejs 18.15        |
| 时区        | Asia/Shanghai(北京时间) |
|           |                     |
| **环境配置**  |                     |
| 内存        | 64MB                |
| 初始化超时时间   | 120秒                |
| 执行超时时间    | 10秒                 |
|           |                     |
| **网络配置**  |                     |
| 公网访问      | 已启用                 |
|           |                     |
| **请求缓冲**  |                     |
| 最大缓冲时间    | 5秒                  |
|           |                     |
| **请求多并发** |                     |
| 请求多并发     | 自定义静态并发             |
| 最大并发值     | 2                   |

