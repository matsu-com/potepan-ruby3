def slot
  coin = 100
  point = 0
  coins_select = [10, 20, 50, "やめる"]
  coins_select_result = 0

  next_game = true

  while next_game
    puts "コインの残り枚数:#{coin}"
    puts "現在のポイント:#{point}"
    puts "コインを何枚いれますか？"
    coins_select[3] = "やめる"
    puts "0(10コイン), 1(20コイン), 2(50コイン), 3(やめる)"
    coins_select[3] = 0
    puts "---------------"

    coins_select_result = gets.to_i
    coin -= coins_select[coins_select_result]

    if coins_select_result > 4
      puts "0〜3を選んでください"
    elsif
      coins_select_result == 3
      puts "次の挑戦をお待ちしています！"
      break
    end

    if coin >= 0
      puts "スタート！"
      next_game = true
    else
      puts "コインの枚数が足りません。。。"
      next_game = false
      slot = false
      break
    end

    puts "Enterを3回押してください"

    num1 = rand(0..9)
    num2 = rand(0..9)
    num3 = rand(0..9)
    num4 = rand(0..9)
    num5 = rand(0..9)
    num6 = rand(0..9)
    num7 = rand(0..9)
    num8 = rand(0..9)
    num9 = rand(0..9)

    enter = gets
    puts "---------------"
    puts "|#{num1}|||"
    puts "|#{num2}|||"
    puts "|#{num3}|||"

    enter = gets
    puts "---------------"
    puts "|#{num1}|#{num4}||"
    puts "|#{num2}|#{num5}||"
    puts "|#{num3}|#{num6}||"

    enter = gets
    puts "---------------"
    puts "|#{num1}|#{num4}|#{num7}|"
    puts "|#{num2}|#{num5}|#{num8}|"
    puts "|#{num3}|#{num6}|#{num9}|"

    if num1 == num4 && num4 == num7||
       num2 == num5 && num5 == num8||
       num3 == num6 && num6 == num9||
       num1 == num5 && num5 == num9||
       num7 == num5 && num5== num3
      puts "おめでとう！揃いました！"
      puts "#{coins_select[coins_select_result] * 10}ポイント獲得です！"
      puts "#{coins_select[coins_select_result] * 2}コイン獲得です！"
      point += coins_select[coins_select_result] * 10
      coin += coins_select[coins_select_result] * 10
    end
  end
end

slot