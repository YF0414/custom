module TitleHelper
    def get_title_page(controller_param)
        case controller_param
        when "store/sessions"
            "店舗様管理画面"
        when "store/top"
            "管理画面トップ"
        when "store/shop"
            "店舗設定"
        when "store/posts"
            "ニュース一覧"
        when "store/staffs"
            "女性一覧"
        when "store/schedules"
            "出勤登録のページ"
        when "home"
            "オイルマフィア｜日本一見やすいメンズエステ検索サイト"
        when "link"
            "リンクについて｜メンズエステ検索オイルマフィア"
        when "terms"
            "利用規約｜メンズエステ検索オイルマフィア"
        when "policy"
            "プライバシポリシー｜メンズエステ検索オイルマフィア"
        when "areas"
            prefecture = Prefecture.find(params[:id])
            "#{prefecture.name}のメンズエステでおすすめの人気店をご紹介！"
        when "stores"
            store = Store.find(params[:id])
            "#{store.name}｜#{store.area.name}｜メンズエステ検索オイルマフィア"
        else
            "OIL mafia"
        end
    end
end
