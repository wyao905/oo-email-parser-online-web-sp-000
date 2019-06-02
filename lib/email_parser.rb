# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  def initialize(emails)
    @emails = []
    temp = []
    emails.split(/[\s,]+/).each do |email|
      if !@emails.include?(email)
        @emails << email
      end
    end
  end
  
  def parse
    @emails
  end
end