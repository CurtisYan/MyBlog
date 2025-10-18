#!/bin/bash

# Hexo博客自动部署和GitHub备份脚本
# 使用方法: ./deploy-and-backup.sh [commit_message]

set -e  # 遇到错误立即退出

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 打印带颜色的消息
print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# 获取提交消息
COMMIT_MSG="${1:-博客更新 $(date '+%Y-%m-%d %H:%M:%S')}"

print_info "开始Hexo博客部署和GitHub备份流程..."

# 1. 清理和生成静态文件
print_info "步骤1: 清理和生成静态文件..."
hexo clean
hexo generate

# 2. 部署到服务器
print_info "步骤2: 部署到服务器..."
hexo deploy

# 3. 备份源码到GitHub
print_info "步骤3: 备份源码到GitHub..."

# 检查是否有未提交的更改
if [[ -n $(git status --porcelain) ]]; then
    print_info "检测到未提交的更改，正在提交..."
    
    # 添加所有更改（排除不需要的文件）
    git add .
    
    # 提交更改
    git commit -m "$COMMIT_MSG"
    
    print_info "已提交更改: $COMMIT_MSG"
else
    print_warning "没有检测到新的更改"
fi

# 推送到GitHub
print_info "推送到GitHub备份仓库..."
git push origin main

print_info "✅ 部署和备份完成！"
print_info "📝 博客已部署到服务器"
print_info "💾 源码已备份到GitHub"
print_info "🌐 访问地址: http://112.74.51.206/blog"
