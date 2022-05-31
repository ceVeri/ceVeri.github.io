module Jekyll
    module TurkceTarih
        MONTHS = {"01" => "Ocak", "02" => "Şubat", "03" => "Mart",
                "04" => "Nisan", "05" => "Mayıs", "06" => "Haziran",
                "07" => "temmuz", "08" => "ağustos", "09" => "eylül",
                "10" => "Ekim", "11" => "Kasım", "12" => "Aralık"}

        # http://man7.org/linux/man-pages/man3/strftime.3.html
        def turkceTarih(date)
            day = time(date).strftime("%e") # leading zero is replaced by a space
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            day+' '+MONTHS[month]+' '+year
        end

        def html5date(date)
            day = time(date).strftime("%d")
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            year+'-'+month+'-'+day
        end
    end
end

Liquid::Template.register_filter(Jekyll::TurkceTarih)
