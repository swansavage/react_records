class Record
    # ==================================================
    #                      SET UP
    # ==================================================
    attr_reader :id, :artist, :album_title, :image, :release_date, :description, :price, :qty

    # connect to postgres
    if(ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
    else
        DB = PG.connect(host: "localhost", port: 5432, dbname: 'record_store')
    end

    def initialize(opts = {})
        @id = opts["id"].to_i
        @artist = opts["artist"]
        @album_title = opts["album_title"]
        @image = opts["image"]
        @release_date = opts["release_date"]
        @description = opts["description"]
        @price = opts["price"].to_f
        @qty = opts["qty"].to_i
    end

    # ==================================================
    #                      ROUTES
    # ==================================================

    #get all (index)
    def self.all
        results = DB.exec(
            <<-SQL
                SELECT * FROM records;
            SQL
        )
        return results.map { |result| Record.new result }
    end

    #get one (show)
    def self.find id
        results = DB.exec(
            <<-SQL
                SELECT * FROM records WHERE id=#{id};
            SQL
        )
        return Record.new results.first
    end

    #post (create)
    def self.create opts
        results = DB.exec(
            <<-SQL
                INSERT INTO records (artist, album_title, image, release_date, description, price, qty)
                VALUES (
                    '#{opts["artist"]}',
                    '#{opts["album_title"]}',
                    '#{opts["image"]}',
                    '#{opts["release_date"]}', '#{opts["description"]}',
                    '#{opts["price"]}',
                    '#{opts["qty"]}'
                )
                RETURNING id, artist, album_title, image, release_date, description, price, qty;
            SQL
        )
        return Record.new results.first
    end

    #delete
    def self.delete id
        results = DB.exec(
            <<-SQL
                DELETE FROM records WHERE id=#{id};
            SQL
        )
        return { deleted: true }
    end

    #update
    def self.update id, opts
        results = DB.exec(
            <<-SQL
                UPDATE records
                SET artist='#{opts["artist"]}', album_title='#{opts["album_title"]}', image='#{opts["image"]}', release_date='#{opts["release_date"]}', description='#{opts["description"]}', price='#{opts["price"]}',
                qty='#{opts["qty"]}'
                WHERE id=#{id}
                    RETURNING id, artist, album_title, image, release_date, description, price, qty;
            SQL
        )
    end
end
