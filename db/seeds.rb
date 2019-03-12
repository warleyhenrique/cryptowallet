# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


spinner = TTY::Spinner.new("[:spinner] Populando Mining_types")
    spinner.auto_spin
    mining_types=
    [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"}
    ]
    
    mining_types.each do |mining_type|
        MiningType.find_or_create_by mining_type
    end
spinner.success("(Ok)")


 
spinner = TTY::Spinner.new("[:spinner] Populando Coins")
spinner.auto_spin
coins=[
        {
            description: "Bitcoin",
            acronym: "btc",
            url_image: "https://cdn.icon-icons.com/icons2/478/PNG/512/Bitcoin_46999.png",
            mining_type: MiningType.all.sample
            
        },
    
        {
            description: "Stellar",
            acronym: "XLM",
            url_image: "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/stellar_xlm-512.png",
            mining_type: MiningType.first   
        },
    
        {
            description: "Ethereum",
            acronym: "ETC",
            url_image: "https://cryptorunner.com/wp-content/uploads/2017/10/ethereum-symbol.png",
            mining_type: MiningType.last
        },
    
        {
            description: "Litcoin",
            acronym: "LTC",
            url_image: "https://steemitimages.com/DQmbvvvGTA6i39gn8Haw8GoMa52vksNRHCAEvP5kbA5ZZtG/litecoin.png",
            mining_type: MiningType.last
        },
    
        {
            description: "Cardano",
            acronym: "ADA",
            url_image: "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/cardano_ada-512.png",
            mining_type: MiningType.first
        },
    
        {
            description: "Ripple",
            acronym: "XRP",
            url_image: "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/ripple_xrp_coin-512.png",
            mining_type: MiningType.last
        },
    
        {
            description: "Dash",
            acronym: "DSH",
            url_image: "https://www2.dash.org/assets/img/graphics/icons/dash_coin_icons/Dash-D-white_on_blue_circle.png",
            mining_type: MiningType.first
        }
    ]
    
    coins.each do |coin|
        Coin.find_or_create_by coin
    end
    spinner.success("(Ok)")
    
    
    

