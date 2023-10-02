//
//  DetailViewController.swift
//  Country Clues
//
//  Created by Kriti on 2023-10-01.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var flagImage: UIImageView!
    @IBOutlet var funFacts: UILabel!
    var countrySelected: Int = 0
    var facts = [(String, String)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        facts = [
            ("Argentina", "Argentina is the birthplace of the tango dance, known for its passion and sensuality. The country is famous for its high-quality beef and is one of the world's largest beef exporters. Argentina's Iguazu Falls is one of the largest waterfall systems globally, surrounded by lush rainforests. Soccer, or 'fútbol,' is a national obsession, and Argentina has produced legendary players like Diego Maradona and Lionel Messi."),
            ("Belgium", "Belgium is famous for its chocolates, with over 2,000 chocolate shops in the country. It's the birthplace of the comic character Tintin and home to a dedicated comic strip museum. Belgium has a unique tradition of 'beer culture' with over 1,500 varieties of beer. The Atomium, a futuristic building in Brussels, is an iconic architectural marvel."),
            ("Bhutan", "Bhutan is known for its Gross National Happiness Index, prioritizing the well-being and happiness of its citizens. The country is famous for its stunning monasteries, including the Tiger's Nest Monastery perched on a cliff. Bhutan is the only country in the world where tobacco sales are illegal. It has a strong focus on environmental conservation and is carbon-neutral."),
            ("Canada", "Canada has more lakes than any other country globally, including the vast Great Lakes. The Canadian Arctic is home to polar bears, and Canada has a town named 'Polar Bear Capital of the World.' The country has two national sports: ice hockey in the winter and lacrosse in the summer. Canada is known for its multiculturalism, with over 200 ethnic origins reported in its census."),
            ("Egypt", "The Great Pyramid of Giza is one of the Seven Wonders of the Ancient World and a marvel of ancient engineering. Egypt is home to the Nile River, the longest river in the world, which has sustained civilization for thousands of years. The ancient Egyptians invented paper, ink, and the 365-day calendar. The famous Valley of the Kings in Luxor contains the tombs of pharaohs like Tutankhamun."),
            ("Finland", "Finland has the highest number of saunas globally, outnumbering its population. The country celebrates 'National Sleepyhead Day,' where the last person in the family to wake up is thrown into water. The concept of 'sisu' represents Finnish determination and resilience in the face of adversity. Finland's education system is renowned for its excellence and minimal homework."),
            ("Germany", "Germany is home to the world's largest beer festival, Oktoberfest, which attracts millions of visitors annually. The country is known for its extensive highway system, the 'Autobahn,' famous for having stretches with no speed limits. Germany has over 1,500 types of sausages, making it a paradise for sausage lovers. Berlin, the capital of Germany, is known for its vibrant arts and music scene."),
            ("Greece", "Greece is known for its ancient history, including the birthplace of democracy in Athens. Greek cuisine features olive oil, feta cheese, and dishes like moussaka and souvlaki. The country has numerous picturesque islands, including Santorini and Mykonos. The Olympic Games originated in ancient Greece."),
            ("Iceland", "Iceland is known for its dramatic landscapes, including geysers, waterfalls, and glaciers. The country has a high literacy rate, and books are traditionally exchanged as gifts on Christmas Eve. Icelanders believe in elves and hidden people and have stories of encounters with them. The Blue Lagoon is a famous geothermal spa and a popular tourist attraction."),
            ("India", "India is the birthplace of major religions, including Hinduism, Buddhism, Jainism, and Sikhism. The Taj Mahal in Agra is a symbol of love and one of the most iconic monuments globally. India is known for its colorful festivals, including Diwali, Holi, and Eid. The country has a diverse culinary tradition with regional specialties like biryani, dosa, and samosa."),
            ("Ireland", "Ireland is known for its lush green landscapes and is often called the 'Emerald Isle.' It's famous for its pubs, traditional music, and hearty cuisine, including dishes like Irish stew and soda bread. Ireland has a rich literary heritage, with authors like James Joyce and W.B. Yeats. The country celebrates St. Patrick's Day with parades and festivities."),
            ("Italy", "Italy is home to the world's largest number of UNESCO World Heritage Sites. The country introduced the world to pasta and is known for its diverse regional cuisines. The leaning tower of Pisa is a famous architectural marvel. Italy has the most art museums in the world, making it a haven for art lovers."),
            ("Japan", "Japan is a country of contrasts, blending ancient traditions like tea ceremonies with futuristic technology. Cherry blossom season, or 'sakura,' is a national event, with picnics and festivals to celebrate the blooming flowers. Japanese cuisine, including sushi and ramen, is celebrated globally for its precision and flavors. The country is home to the world's oldest company, Nishiyama Onsen Keiunkan, founded in 705 AD."),
            ("Kenya", "Kenya is home to the 'Big Five' wildlife species: lion, elephant, buffalo, leopard, and rhinoceros. The Great Migration, where millions of wildebeests and zebras cross the Serengeti, is a natural spectacle. The Maasai people of Kenya are known for their vibrant clothing and distinct culture. Mount Kenya, the country's highest peak, is named after the nation itself."),
            ("Lebanon", "Lebanon is home to the oldest continuously inhabited city in the world, Byblos, with a history dating back over 7,000 years."),
            ("Malaysia", "Malaysia is known for its diverse culture, with influences from Malay, Chinese, Indian, and indigenous cultures. The Petronas Twin Towers in Kuala Lumpur were once the tallest twin towers globally. Malaysia is famous for its rainforests and wildlife, including orangutans. The country has a blend of modern cities and natural beauty, such as the Cameron Highlands."),
            ("Mexico", "Mexico introduced chocolate, vanilla, and chilies to the world. Day of the Dead (Dia de los Muertos) is a unique Mexican holiday to honor deceased loved ones. The country has over 30,000 ancient Mayan and Aztec archaeological sites. Mexican cuisine, including tacos and guacamole, is cherished worldwide."),
            ("Pakistan", "Pakistan is home to some of the world's highest peaks, including K2, the second-highest mountain. The country has a rich history, with the ancient Indus Valley Civilization dating back over 5,000 years. Pakistan is known for its diverse cuisine, featuring dishes like biryani and kebabs. The Karakoram Highway, connecting Pakistan and China, is one of the highest paved roads globally."),
            ("Philippines", "The Philippines is an archipelago of over 7,000 islands, offering diverse landscapes and cultures. It has one of the world's longest Christmas seasons, starting as early as September. The Puerto Princesa Underground River is a UNESCO World Heritage Site and one of the New Seven Wonders of Nature. Filipinos are known for their hospitality and 'bayanihan' spirit, a community helping one another."),
            ("South Korea", "South Korea is a leader in technology and is the birthplace of global tech giants like Samsung and LG. The Korean Wave, or 'Hallyu,' has made Korean pop culture, including K-pop and K-dramas, popular worldwide. Traditional Korean cuisine, like kimchi and bibimbap, is known for its healthy and flavorful ingredients. The country has a rich history, including the ancient Silla and Goguryeo kingdoms."),
            ("Sweden", "Sweden is known for its innovation and is the birthplace of companies like IKEA and Spotify. The country has a strong tradition of coffee breaks called 'fika.' Sweden's archipelago consists of thousands of islands, offering beautiful coastal scenery. Swedish cuisine includes dishes like meatballs and herring."),
            ("Switzerland", "Switzerland is renowned for its precision watchmaking and is home to famous watch brands like Rolex and Patek Philippe. The country is known for its stunning Alpine landscapes, making it a haven for winter sports enthusiasts. Swiss cheese and chocolate are famous worldwide. Switzerland is home to multiple languages, including German, French, Italian, and Romansh."),
            ("Turkey", "Turkey straddles two continents, Europe and Asia, with Istanbul as a city on both sides. The country is famous for its cuisine, including kebabs, baklava, and Turkish delight. Turkey has a rich history, with landmarks like Hagia Sophia and the ancient city of Troy. The traditional Turkish bath, or 'hamam,' is a cultural experience."),
            ("United States", "The United States is home to the world's largest ball of twine, located in Cawker City, Kansas, and it continues to grow as people add to it.")
        ]
        title = facts[countrySelected].0
        flagImage.image = UIImage(named: "\(facts[countrySelected].0)")
        funFacts.text = facts[countrySelected].1
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(closeTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    }
    @objc func closeTapped(){
        dismiss(animated: true)
    }
    
    @objc func shareTapped(){
        let ac = UIActivityViewController(activityItems: [flagImage.image!, facts[countrySelected].0], applicationActivities: [])
        ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }
}
