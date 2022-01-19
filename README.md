# conda_docker
This repository is for building `Anaconda3` and `Miniconda3` in a working Docker container.
このリポジトリは, `Anaconda3`, `Miniconda3`を動作Dockerコンテナで構築するためのものです.

# インストール方法

Nvidia Driverをインストールしておくこと. CUDA versionが11.0以上であること.
`nvidia-docker2`をホストPCにインストールしておくこと.

## x86アーキテクチャ(Intel CPU)へのインストール
1. イメージをDockerfileからビルド.
    この場合Anaconda3のイメージをビルドするけど, Miniconda3がいいならそっち.
    ```bash
    cd ./Anaconda3/x86 && bash RUN-DOCKER-BUILD.sh
    ```
2. イメージをコンテナ化
    ビルドしたイメージをコンテナ化. これは最初だけ行う. `RUN-DOCKER-CONTAINER.sh`にて, `--restart always`オプションをつけているので, コンテナ内の環境がコミットされるまで保持され続ける. 
    ```bash
    cd ./Anaconda3/x86 && bash RUN-DOCKER-CONTAINER.sh
    ``



## Nvidia GPUを搭載したホストPCへのインストール
1. イメージをDockerfileからビルド.
    この場合Anaconda3のイメージをビルドするけど, Miniconda3がいいならそっち.
    ```bash
    cd ./Anaconda3/cuda11-cudnn8 && bash RUN-DOCKER-BUILD.sh
    ```
2. イメージをコンテナ化
    ビルドしたイメージをコンテナ化.
    ```bash
    cd ./Anaconda3/cuda11-cudnn8 && bash RUN-DOCKER-CONTAINER.sh
    ```

## Jupyter labを起動
1. コンテナ内にて, `run-jupyter-lab.sh`を実行する.
    ```bash
    cd ~/WORKSPACE && bash ./run-jupyter-lab.sh
    ```
2. 起動するとホストPCの任意のブラウザより[localhost:8888](http://localhost:8888/lab)