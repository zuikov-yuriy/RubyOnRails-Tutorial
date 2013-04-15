# encoding: utf-8
class ConvertLanguage

    attr_reader :en, :ru

    def initialize(text)
      @trans = { :a => "а", :b => "б", :v => "в", :g => "г", :d => "д" }
      @sym= { :- => "-"  }
      @text = text
      @en = ""
      @ru = ""
      convert
    end

    def convert
      @text.chars.to_a.each do |x|
        if [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten.join("").include?(x)
          @trans.each { |key, value|   @ru <<  value if  key.to_s == x }
        end
        if [('а'..'я'),('А'..'Я')].map{|i| i.to_a}.flatten.join("").include?(x)
          @trans.each { |key, value|   @en << key.to_s if  value == x }
        end
        if ["-"," "].include?(x)
          @sym.each { |key, value|   @en << key.to_s; @ru << key.to_s if  value == x }
        end
      end
    end


end
