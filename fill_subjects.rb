require 'json'

subjects_json = JSON.parse(File.read('subject.json'))

subjects_json.each do |subject|
  @subject = Subject.new
  @subject.name = subject['name']
  @subject.abbrev = subject['abbreviation']
  @subject.subj_id = subject['id']
  @subject.save!
end
