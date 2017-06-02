namespace :score do
  desc 'Scrape score data from vmf'
  task scrape: :environment do
    require 'nokogiri'
    require 'open-uri'

    puts 'scraping vmf'
    url = 'http://www.ledenbeheer.vmf.be/Publicatie/Klassement?ReeksId=661'
    doc = Nokogiri::HTML(open(url))
    table = doc.css('table.klassement').first
    rows = table.css('tr')
    mapping = {
        2 => "games",
        3 => "wins",
        4 => "losses",
        5 => "draws",
        6 => "points",
        7 => "goalsFor",
        8 => "goalsAgainst",
    }

    Statistic.delete_all
    rows.map do |row|
        row_values = row.css('td').map(&:text)
        row_team = row.css('td.ploegnaam').text(&:text).gsub("\n", ' ').gsub("\r", ' ').squeeze(' ')
        if !row_team.to_s.empty?
            statistic = Statistic.create(name: row_team)
            row_values.each_with_index do |row_value, i|
                if (mapping.has_key?(i))
                    statistic[mapping[i]] = row_value.gsub("\n", ' ').gsub("\r", ' ').squeeze(' ')
                end
            end
            statistic.save
        end
    end
  end
end
