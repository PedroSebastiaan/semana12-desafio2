class Uf < ApplicationRecord
    def self.load_csv_data
        file = File.open('tmp/uf.csv')
        file_data = file.readlines.map(&:chomp)
        file_data.each_with_index do |row,index|
            next if index.zero?
            cols = row.split(",")
            Uf.create(date:"2020/01/#{cols[0]}", value:cols[1])
            if index < 29
                Uf.create(date:"2020/02/#{cols[0]}", value:cols[2])
            end
        end
    end
end
