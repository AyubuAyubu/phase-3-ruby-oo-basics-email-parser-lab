# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email
    def initialize(email)
        @email= email
    end
    def parse
        # split(%r{,\s*}) = expected: ["ayubu@outlook.com", "mohamed@yahoo.com"]
        # got: ["ayubu@outlook.com mohamed@yahoo.com"]
        # split(',') = expected: ["ayubu@outlook.com","mohamed@yahoo.com"]
        # got: ["ayubu@outlook.com","mohamed@yahoo.com"]
        # split("\\s+") = expected: ["ayubu@outlook.com","mohamed@yahoo.com"]
        # got: ["ayubu@outlook.com","mohamed@yahoo.com"]

        @email.split(/,?\s/).uniq
    end
end

#email_addresses = "ayubu@outlook.com", "mohamed@yahoo.com"
#our_parser = EmailAddressParser.new(email_addresses)

#our_parser.parse