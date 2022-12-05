class PasswordManager
    def initialize
        @new_hash = {}
    end
    
    def add(service, password)
        if (password.length >= 8) && (password =~ /[\W]/)
        @new_hash[service] = password
        end
    end

    def password_for(service)
        return @new_hash.fetch(service)
    end

    def services
        return @new_hash.keys
    end
end
