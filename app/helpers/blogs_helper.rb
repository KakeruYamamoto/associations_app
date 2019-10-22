module BlogsHelper
  def choose_new_or_edit #helperファイルに定義されたものをヘルパーメソッド
    if action_name == 'new' || action_name == 'confirm'|| action_name == 'create' #|| action_name == 'create'を追加
      confirm_blogs_path  #アクション名がnewまたは...のとき確認ダイアログ
    elsif action_name == 'edit'
      blog_path
    end
  end
end
#ヘルパーメソッドを使用することで、通常の処理に例外的な処理を組み込むことができる。
