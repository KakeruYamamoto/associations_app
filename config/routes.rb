Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy]
  resources :blogs do
    collection do #idを必要としない固有のルーティングを生成。
      #member doを使うとidを必要とする固有のルーティングを生成。
      #resources :blog とすると、どのパスにもidを必要としないルーティングを生成できる。
      post :confirm #HTTPメソにconfirmアクションを設定
    end
  end
end
