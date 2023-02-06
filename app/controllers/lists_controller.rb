class ListsController < ApplicationController
  def new
  #viewへ渡すためのインスタンス変数に空のmodelオブジェクトを生成する。
  @list=List.new
  end

  #以下を追加
  def create
  list=List.new(list_params)
  list.save

 list=List.new(list_params)
  #3.データをデータベースに保存するためのsaveメソッド実行
 list.save
 #トップ画面へリダイレクト
  redirect_to list_path(list.id)
  end

def index
@lists=List.all
end

def show
 @list=List.find(params[:id])
end

 private
 #ストロングパラメータ
 def list_params
   params.require(:list).permit(:title,:body)
 end
end
