# ベースイメージとしてPythonイメージを使用
FROM python:3.9

# 環境変数を設定
ENV PYTHONUNBUFFERED 1

# アプリケーションのワーキングディレクトリを作成
RUN mkdir /app
WORKDIR /app

# Pythonの依存関係をインストール
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# アプリケーションのソースコードをコピー
COPY RCC_Workshop_Docker /app/

# ポートを公開
EXPOSE 8000