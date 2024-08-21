require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

def write_csv()

    puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

    memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

    if memo_type == 1

        puts "CSVファイルを新規作成します。拡張子を除いたファイル名を入力してください。"
        
        filename = gets.chomp!

        puts "メモしたい内容を入力してください。"
        puts "入力後 'Ctrl + D' を押してください。"

        CSV.open(filename + '.csv','w') do |newlines|
            newlines << readlines
        end

    elsif memo_type == 2

        puts "既存のCSVファイルを編集します。拡張子を除いたファイル名を入力してください。"

        filename = gets.chomp!

        puts "追記したい内容を入力してください。"
        puts "入力後 'Ctrl + D' を押してください。"

        CSV.open(filename + '.csv','a') do |addlines|
            addlines << readlines
        end

    else

        puts "1か2を入力してください"

        write_csv

    end

end

write_csv