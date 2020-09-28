#<まずはじめに考慮すべきこと>
#コードは簡潔にわかりやすく
#閏年の計算が必要
#ツェラー公式を用いるか否か

#日付を扱うことができるクラスを読み込む
require 'date'

  def calendar(select_date) #操作した日の日付
    # 入力された月の初日を取得する
    first_day = Date.new(select_date.year,select_date.month,1)
    # 入力された月の第一日曜日を取得
    first_sunday = first_day - first_day.strftime('%w').to_i

    # 曜日の出力
    week = %w(Su Mo Tu We Th Fr Sa)
    puts week.join("|  ")

    #繰り返し構文で回したい↓
    while first_sunday.month <= first_day.month
    
      if first_sunday.month != first_day.month
        print "    "
      #土曜日のタイミングで改行をさせる↓↓
    elsif first_sunday.strftime('%u') == "6"
        print "   " + first_sunday.strftime('%e') + "\n"
      #他の日は↓↓
      else
        print "   " + first_sunday.strftime('%e')
      end

      first_sunday += 1
    end

  end
