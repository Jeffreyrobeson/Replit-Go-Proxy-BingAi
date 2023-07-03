rm -rf go-proxy-bingai* #移除＃以升级版本
if [ ! -f "go-proxy-bingai" ];then
  echo Replit一键部署Go-Proxy-BingAI
  echo By The jeffreyrobeson
  echo 仓库开源地址：https://github.com/Jeffreyrobeson/Replit-Go-Proxy-BingAi
  curl -L https://github.com/jeffreyrobeson/go-proxy-vbingai/releases/download/go-proxy-vbingai/go-proxy-bingai-linux-amd64.tar.gz -o bingai.tar.gz
  tar -zxvf bingai.tar.gz
  rm -f bingai.tar.gz
  echo 搭建完成，单击Run以启动项目
fi
# 防休眠命令
while true; do curl -s --user-agent "${UA_Browser}" "https://${REPL_SLUG}.${REPL_OWNER}.repl.co" >/dev/null 2>&1 && echo "$(date +'%Y%m%d%H%M%S') Keeping online ..." && sleep 600; done &
# 启动BingAI
./go-proxy-vbingai
