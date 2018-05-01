# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




if(ENV['DATABASE_URL'])
    uri = URI.parse(ENV['DATABASE_URL'])
    DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
else
    DB = PG.connect(host: "localhost", port: 5432, dbname: 'record_store')
end


DB.exec(
    <<-SQL
    CREATE TABLE records (id SERIAL, artist VARCHAR(50), album_title VARCHAR(50), image TEXT, release_date VARCHAR(10), description TEXT, price REAL, qty INT);
    SQL
)




    Record.create({
        'artist' => "#{"Water Liars"}",
        'album_title' => "#{"Wyoming"}",
        'image' => "#{"http://images.genius.com/71020c74bf2e5bc65c0164bd38287cb6.1000x1000x1.jpg"}",
        'release_date' => "#{"2013"}",
        'description' => "#{"Donec ullamcorper nulla non metus auctor fringilla. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Etiam porta sem malesuada magna mollis euismod. Vestibulum id ligula porta felis euismod semper. Donec ullamcorper nulla non metus auctor fringilla. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec sed odio dui."}",
        'price' => 17.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"Phox"}",
        'album_title' => "#{"Phox"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2F9988b1ea6c8f566dc6aa3869b2cdb26e.1000x1000x1.jpg"}",
        'release_date' => "#{"2014"}",
        'description' => "#{"Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas faucibus mollis interdum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor."}",
        'price' => 19.99,
        'qty' => 100

    })

    Record.create({
        'artist' => "#{"The Love Language"}",
        'album_title' => "#{"Libraries"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2F47e970fefa9d466e047a3478d151007a.900x900x1.jpg"}",
        'release_date' => "#{"2010"}",
        'description' => "#{"Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus.Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo."}",
        'price' => 17.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"Swear and Shake"}",
        'album_title' => "#{"The Sound of Letting Go"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2Fbfcac10db48710f9d24b97841393f3ef.600x600x1.jpg"}",
        'release_date' => "#{"2017"}",
        'description' => "#{"Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam id dolor id nibh ultricies vehicula ut id elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit."}",
        'price' => 19.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"Porches"}",
        'album_title' => "#{"Pool"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2F52aa21b352aa2404d0435d37f3ecd548.1000x1000x1.jpg"}",
        'release_date' => "#{"2016"}",
        'description' => "#{"Donec sed odio dui. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec ullamcorper nulla non metus auctor fringilla."}",
        'price' => 21.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"Diane Coffee"}",
        'album_title' => "#{"My Friend Fish"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2F434784e7dbd1f8756c991b80c50513fd.640x640x1.jpg"}",
        'release_date' => "#{"2013"}",
        'description' => "#{"Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec sed odio dui."}",
        'price' => 16.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"The Mynabirds"}",
        'album_title' => "#{"Lovers Know"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2F30eb30bc9560b116aacc08562327485f.800x800x1.jpg"}",
        'release_date' => "#{"2016"}",
        'description' => "#{"Etiam porta sem malesuada magna mollis euismod. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam porta sem malesuada magna mollis euismod. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam id dolor id nibh ultricies vehicula ut id elit. Vestibulum id ligula porta felis euismod semper."}",
        'price' => 20.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"Vulfpeck"}",
        'album_title' => "#{"Mr. Finish Line"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2Fb5978bbdca3c5bb98d8294f0ac442dcc.1000x1000x1.png"}",
        'release_date' => "#{"2017"}",
        'description' => "#{"Maecenas faucibus mollis interdum. Sed posuere consectetur est at lobortis. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec sed odio dui. Aenean lacinia bibendum nulla sed consectetur. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor."}",
        'price' => 19.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"Blake Mills"}",
        'album_title' => "#{"Heigh Ho"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2F55013c9707e55f5b4ca4d9e791e072df.500x500x1.jpg"}",
        'release_date' => "#{"2014"}",
        'description' => "#{"Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Sed posuere consectetur est at lobortis. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Vestibulum id ligula porta felis euismod semper. Lorem ipsum dolor sit amet, consectetur adipiscing elit."}",
        'price' => 21.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"The Districts"}",
        'album_title' => "#{"Popular Manipulations"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2Fef8d92a4dce4ef5e87b23bd947774929.1000x1000x1.jpg"}",
        'release_date' => "#{"2017"}",
        'description' => "#{"Donec id elit non mi porta gravida at eget metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue. Sed posuere consectetur est at lobortis. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit."}",
        'price' => 20.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"Violents"}",
        'album_title' => "#{"Awake and Pretty Much Sober"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2F067dca0b8a11a551ae6afccfb282200b.1000x1000x1.jpg"}",
        'release_date' => "#{"2017"}",
        'description' => "#{"Nullam id dolor id nibh ultricies vehicula ut id elit. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Nulla vitae elit libero, a pharetra augue. Etiam porta sem malesuada magna mollis euismod. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum."}",
        'price' => 19.99,
        'qty' => 100

        })

    Record.create({
        'artist' => "#{"Rayland Baxter"}",
        'album_title' => "#{"Imaginary Man"}",
        'image' => "#{"https://t2.genius.com/unsafe/502x0/https%3A%2F%2Fimages.genius.com%2F3a6e439aa785c5b23ad3fb1b4e04b515.1000x1000x1.jpg"}",
        'release_date' => "#{"2015"}",
        'description' => "#{"Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Sed posuere consectetur est at lobortis. Nullam quis risus eget urna mollis ornare vel eu leo. Nulla vitae elit libero, a pharetra augue. Maecenas sed diam eget risus varius blandit sit amet non magna."}",
        'price' => 18.99,
        'qty' => 100

        })

p "records have been seeded"
