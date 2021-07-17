class TitleValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        unless value =~ /Won't Believe|Secret|Top \d|Guess/i
            record.errors.add attribute, (options[:message] || "is not clickbait-y enough")
        end
    end
    
end