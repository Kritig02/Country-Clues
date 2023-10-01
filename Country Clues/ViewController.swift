//
//  ViewController.swift
//  Country Clues
//
//  Created by Kriti on 2023-10-01.
//

import UIKit

class ViewController: UITableViewController {
    var countryCount = 0
    var countryHints: [(String, String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    countryHints = [
            ("Germany", "Known for sausages, beer, and the Berlin Wall."),
            ("United States", "Home to the Statue of Liberty and jazz music."),
            ("Argentina", "Known for tango, steaks, and the Andes Mountains."),
            ("Canada", "The second-largest country in the world."),
            ("Finland", "Known for its lakes, forests, and cold winters."),
            ("Italy", "The country of pasta, pizza, and art."),
            ("Philippines", "An archipelago known for beautiful beaches."),
            ("Belgium", "Famous for chocolate, waffles, and beer."),
            ("Pakistan", "Located in South Asia, known for its diverse culture."),
            ("Bhutan", "Nestled in the Himalayas, known for monasteries."),
            ("Iceland", "An island nation with stunning landscapes."),
            ("Kenya", "Rich in wildlife and famous for safaris."),
            ("South Korea", "Known for K-pop, kimchi, and technological innovation."),
            ("Japan", "Land of the rising sun with a rich cultural heritage."),
            ("Mexico", "Famous for tacos, tequila, and ancient ruins."),
            ("Malaysia", "A Southeast Asian nation with diverse culture."),
            ("India", "Home to the Taj Mahal and Bollywood."),
            ("Switzerland", "Known for Swiss watches and chocolate."),
            ("Ireland", "Home to leprechauns and St. Patrick's Day."),
            ("Sweden", "Home to Vikings and the capital is Stockholm."),
            ("Turkey", "Famous for its Ottoman Empire history."),
            ("Greece", "European Union member with Athens as its capital."),
            ("Lebanon", "Located in the Middle East and known for its cedars."),
            ("Egypt", "Located in North Africa and known for the Great Pyramid.")
        ]
        
        title = "Country Clues"
        navigationController?.navigationBar.prefersLargeTitles = true
        countryCount = countryHints.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? CustomTableViewCell else {
            fatalError("Error in loading CustomTableViewCell")
        }
        cell.countryImage.image = UIImage(named: countryHints[indexPath.row].0)
        cell.countryHint.text = countryHints[indexPath.row].1
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func didReceiveMemoryWarning() {
        fatalError("Memory warning recived")
    }
}

class CustomTableViewCell : UITableViewCell {
    @IBOutlet var countryImage: UIImageView!
    @IBOutlet var countryHint: UILabel!
    
}

