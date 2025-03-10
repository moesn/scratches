#!/bin/bash

# 配置信息
#PACKAGES=("dist")
PACKAGES=("dist" "dsmcp-fe" "dsmc-fe" "idm-fe" "sdd-fe")
VERSIONS=("3.5.0" "3.5.5" "3.5.5" "3.5.5" "3.5.5")
REMOTE_USER="idss"
#REMOTE_HOSTS=("192.168.30.41")
REMOTE_HOSTS=("192.168.30.41" "192.168.30.51" "192.168.30.62" "192.168.30.81")
REMOTE_BASE_DIR="/home/idss/dsf-1.3.0/dsmc-fe"
LOCAL_BASE_DIR="/Volumes/Code/IDSS"

REPLACE_FILES=("register-module.json" "script/base-config.js")
REPLACE_BASE_DIR="/Users/moesn/Library/Application Support/JetBrains/IntelliJIdea2024.3/scratches/idss/pack"

# 循环处理每个项目
for i in "${!PACKAGES[@]}"; do
    PKG_NAME=${PACKAGES[$i]}
    VERSION=${VERSIONS[$i]}
    LOCAL_PKG_DIR="$LOCAL_BASE_DIR/$PKG_NAME"
    TAR_FILENAME="$PKG_NAME-$VERSION.tar.gz"

    # 进入项目目录并切换到指定版本
    if [ -d "$LOCAL_PKG_DIR" ]; then
        cd "$LOCAL_PKG_DIR"
        git checkout -force "dev/$VERSION"
    else
        echo "项目目录不存在: $LOCAL_PKG_DIR"
        continue
    fi

    # 执行pnpm构建
    if [ "$PKG_NAME" == "dist" ]; then
        (cd "$LOCAL_PKG_DIR" && pnpm run build)
        # 循环替换文件
        for FILE in "${REPLACE_FILES[@]}"; do
            cp "$REPLACE_BASE_DIR/$FILE" "$LOCAL_PKG_DIR/$PKG_NAME/$FILE"
        done
    else
        (cd "$LOCAL_PKG_DIR" && pnpm run build -m)
    fi

    # 打包
    tar -czvf "$TAR_FILENAME" "$PKG_NAME"

    export LC_CTYPE=en_US.UTF-8
    # 循环处理每个远程主机
    for REMOTE_HOST in "${REMOTE_HOSTS[@]}"; do
        REMOTE_TAR_PATH="$REMOTE_BASE_DIR/$TAR_FILENAME"
        REMOTE_PKG_DIR="$REMOTE_BASE_DIR/$PKG_NAME"

        # 删除远程服务器上的旧文件
        ssh "$REMOTE_USER@$REMOTE_HOST" "rm -rf $REMOTE_PKG_DIR"

        # 上传tar.gz包
        scp "$TAR_FILENAME" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_TAR_PATH"

        # 在远程服务器上解压
        ssh "$REMOTE_USER@$REMOTE_HOST" "tar -xzvf $REMOTE_TAR_PATH -C $REMOTE_BASE_DIR"
    done

    # 移动tar.gz包到桌面
    mv "$TAR_FILENAME" ~/Desktop/
done
