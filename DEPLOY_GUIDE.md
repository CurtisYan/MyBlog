# Hexo博客自动部署和GitHub备份指南

## 功能说明

现在您的Hexo博客支持自动部署到服务器并同步备份源码到GitHub。

## 使用方法

### 方法1: 使用npm脚本（推荐）

```bash
# 自动部署到服务器并备份到GitHub
npm run deploy-backup

# 或者指定提交消息
./deploy-and-backup.sh "添加新文章：技术分享"
```

### 方法2: 仅备份源码到GitHub

```bash
# 仅将源码备份到GitHub（不部署到服务器）
npm run backup
```

### 方法3: 传统方式（需要手动备份）

```bash
# 生成静态文件
hexo g

# 部署到服务器
hexo d

# 手动备份源码到GitHub
git add .
git commit -m "博客更新"
git push origin main
```

## 自动化脚本功能

`deploy-and-backup.sh` 脚本会自动执行以下步骤：

1. **清理和生成** - `hexo clean && hexo generate`
2. **部署到服务器** - `hexo deploy`（使用rsync到 112.74.51.206）
3. **备份到GitHub** - 自动提交并推送源码到GitHub仓库

## 目录结构说明

```
Blog/
├── source/_posts/          # 博客文章源文件
├── themes/                 # 主题文件
├── _config.yml            # Hexo配置
├── deploy-and-backup.sh   # 自动部署备份脚本
└── public/                # 生成的静态文件（部署到服务器）
```

## 部署目标

- **服务器地址**: 112.74.51.206
- **服务器路径**: /var/www/html/blog
- **GitHub仓库**: CurtisYan/CurtisYan.github.io.git
- **访问地址**: http://112.74.51.206/blog

## 注意事项

1. 确保SSH密钥已配置，能够无密码访问服务器和GitHub
2. 脚本会自动处理Git提交，无需手动操作
3. 如果没有新更改，脚本会跳过Git提交步骤
4. 建议在执行前先本地测试：`hexo server`

## 故障排除

### SSH连接问题
```bash
# 测试服务器连接
ssh root@112.74.51.206

# 测试GitHub连接
ssh -T git@github.com
```

### Git权限问题
```bash
# 检查Git配置
git config --list

# 重新配置用户信息
git config user.name "Your Name"
git config user.email "your.email@example.com"
```
