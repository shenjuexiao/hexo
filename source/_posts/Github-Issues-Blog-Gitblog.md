---
categories: git
comments: true
date: 2026-07-03 00:00:00
disableNunjucks: false
excerpt: ''
lang: zh-CN
layout: post
permalink:
published: true
tags:
title: Github Issues Blog Gitblog
updated: 2026-07-03 00:00:00
---

# Gitblog

用过 Jekyll、Hexo，捣鼓了一阵子，都没能长期使用持续写作，现在转头使用 GIthub Issue 搭建的博客系统。后者有两个优点，一来省去了生成、部署的操作；二来解决了图床的需求。只要仓库存在，Issues 可以一直保留，改天也可以换个相似的博客系统。

## 项目地址和安装指南
[yihong0618/gitblog](https://github.com/yihong0618/gitblog)  
[这个博客开源了](https://github.com/yihong0618/gitblog/issues/177)

## 安装方法
### 1. 克隆仓库
```bash
git clone git@github.com:yihong0618/gitblog.git
```

### 2. 生成tokens
个人首页，`Settings` -> `Developer Settings` -> `Personal access tokens` -> `Tokens (classic)` -> `Generate New Tokens` ->  `Generate new yokens (classic)`

或直达链接：
[settings/tokens](https://github.com/settings/tokens)

<img width="1800" height="1200" alt="Image" src="https://github.com/user-attachments/assets/762af91d-901b-4b80-9810-75da3b4b41cc" />

### 3. 仓库 actions
仓库首页，`Settings` -> `Security and quality` -> `Secrets and variables` -> `Actions` -> `New repository secret`

<img width="1800" height="1200" alt="Image" src="https://github.com/user-attachments/assets/48d0ebcb-cd2a-40d5-b870-6f0e58d44a51" />

直接使用 `G_T`，就不用修改文件： `.github\workflows\generate_readme.yml` 中的 `${{ secrets.G_T }}` 字段。

```yaml
- name: Generate new md
  run: |
    python main.py ${{ secrets.G_T }} ${{ github.repository }} --issue_number '${{ github.event.issue.number }}'
```

### 4.  ~~修改`generate_readme.yml`~~
`.github/workflows/generate_readme.yml`
新版不需要。

## 其他问题
原作者后续更新了 `*.yml` 文件，有些参数不需要修改了。
后续更新补充。