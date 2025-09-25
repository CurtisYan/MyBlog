# Hexo 博客更新指南

## 部署到服务器

```bash
# 清理缓存
hexo clean

# 生成静态文件
hexo generate

# 部署到服务器
hexo deploy

# 或者一条命令完成所有步骤
hexo clean && hexo generate && hexo deploy
```

## 常用命令

| 命令 | 简写 | 说明 |
|------|------|------|
| `hexo new [layout] <title>` | `hexo n` | 创建新文章 |
| `hexo generate` | `hexo g` | 生成静态文件 |
| `hexo server` | `hexo s` | 启动本地服务器 |
| `hexo deploy` | `hexo d` | 部署到服务器 |
| `hexo clean` | | 清理缓存文件 |

## 目录结构

```
Blog/
├── _config.yml          # 主配置文件
├── _config.redefine.yml  # 主题配置文件
├── source/              # 源文件目录
│   ├── _posts/         # 文章目录
│   └── about/          # 关于页面等
├── themes/             # 主题目录
├── public/             # 生成的静态文件（自动生成）
└── README.md           # 本文档
```

## 更多资源

- [Hexo 官方文档](https://hexo.io/zh-cn/docs/)
- [Redefine 主题文档](https://github.com/EvanNotFound/hexo-theme-redefine)
- [Markdown 语法指南](https://markdown.com.cn/)
