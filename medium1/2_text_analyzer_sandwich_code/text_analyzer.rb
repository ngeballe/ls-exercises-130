class TextAnalyzer
  def process
    file = File.open("speech.txt", "r")
    yield file.read
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.scan(/\n\n/).size} paragraphs" }
analyzer.process { |file| puts "#{file.scan(/^.*\S+/).size} lines" }
analyzer.process { |file| puts "#{file.scan(/^.*$/).size} lines" }
analyzer.process { |file| puts "#{file.split(/\n/).count} lines" }
analyzer.process { |file| puts "#{file.split(' ').count} words" }
