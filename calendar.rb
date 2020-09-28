#<まずはじめに考慮すべきこと>
#コードは簡潔にわかりやすく
#閏年の計算が必要　=>Date.newを用いることで必要なし
#ツェラー公式を用いるか否か　=>Date.newを用いることで必要なし
#その月の求め方=> ex)puts calendar(Date.new(2020,9))

#日付を扱うことができるクラスを読み込む
require 'date'

   #"select_date"は操作した日の年月(ex.2020,9)
  def calendar(select_date)
    # 入力された月の初日の曜日数値を取得する
    first_day = Date.new(select_date.year,select_date.month,1)
    # 入力された月の第一日曜日を取得
    first_sunday = first_day - first_day.strftime('%w').to_i

    # 曜日の出力
     puts " Su|Mo|Tu|We|Th|Fr|Sa"

    #"select_date"で入力された月の日付を繰り返しで表示
    while first_sunday.month <= first_day.month

      if first_sunday.month != first_day.month
        print "   "
      #土曜日が過ぎたタイミングで改行をさせる
      elsif first_sunday.strftime('%u') == "6"
        print " " + first_sunday.strftime('%e') + "\n"
      #他の日
      else
        print " " + first_sunday.strftime('%e')
      end

      #月末日まで繰り返す
      first_sunday += 1
    end

  end
