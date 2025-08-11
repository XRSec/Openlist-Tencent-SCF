run:
	@echo " ✅ 生成scf脚本..."
	@printf " ⏳ 下载最新版openlist..."
	@wget https://github.com/OpenListTeam/OpenList/releases/latest/download/openlist-linux-musl-amd64.tar.gz > /dev/null 2>&1 || (echo " ❌"; exit 1)
	@printf "\n ⏳ 解压openlist..."
	@tar -xf openlist-linux-musl-amd64.tar.gz && rm openlist-linux-musl-amd64.tar.gz > /dev/null 2>&1 || (echo " ❌"; exit 1)
	@printf "\n ⏳ 生成scf_bootstrap..."
	@echo -e '#!/bin/bash\n\nmkdir -p /tmp/openlist/\ncp -r data /tmp/openlist/data\n./openlist server --data /tmp/openlist/data' > scf_bootstrap
	@printf "\n ⏳ 修改文件权限"
	@chmod +x scf_bootstrap openlist  > /dev/null 2>&1 || (echo " ❌"; exit 1)
	@printf "\n ⏳ 生成openlist 配置文件...\n\n"
	-@timeout 10s ./openlist server
	@printf "\n ✅ 启动成功！请检阅 data/config.json\n\n"

serve:
	@echo " ✅启动服务..."
	@if [ "${OSTYPE}" = "linux-gnu" ]; then printf " ❌ 前往 https://doc.oplist.org/guide/installation/download 页面\n   下载适合您系统的 openlist 安装包并解压 。\n   否则软件运行不起来哦！\n\n"; fi
	@echo " ✅Web: http://127.0.0.1:5244"
	@echo " ✅Web: http://127.0.0.1:9000"
	@./openlist server
zip:
	zip -r openlist.zip  Makefile LICENSE README.md config示例.json
