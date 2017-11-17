require 'csv'
require 'date'
namespace :meeting_from_csv do
  task :create_meetings => :environment do
    csv_text = File.read('meetings.csv')
    csv = CSV.parse(csv_text, :col_sep => ",")
    csv.each do |row|
        @meeting = Meeting.new(name:row[0], start_time:[row[2], row[3]].join(' ').to_datetime, location:row[1])
        @meeting.save
        #execute rake meeting_from_csv:create_meetings to import csv
    end
  end
end 
