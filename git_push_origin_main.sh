# 20260723
#!/bin/bash

# 进入项目目录
# cd hexo

# GITEE
git remote set-url --delete origin git@gitee.com:shenjuexiao/hexo.git
git remote set-url --add origin git@gitee.com:shenjuexiao/hexo.git

# 暂存所有更改
git add .

# 提交更改
git commit -m "$(date +%Y%m%d)"

# 推送到远程 main 分支
git push origin main

# 提示完成
echo "✅ 执行完成！按任意键退出..."

# 等待任意键输入
read -n 1