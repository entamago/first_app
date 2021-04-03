class PostsController < ApplicationController
  def index  #indexアクションを定義した
    @posts = Post.all #全レコードを＠postsに代入
  end

  def new #newアクションを定義。データの取り出しが必要ないので処理の記述なし
  end

  def create #フォームからのデータであるparams[:content]をテーブルのcontentカラムに保存
    Post.create(content:params[:content])
  end
end
