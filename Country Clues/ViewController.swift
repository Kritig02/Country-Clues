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
            ("Argentina", "Known for tango, steaks, and the Andes Mountains."),
            ("Belgium", "Famous for chocolate, waffles, and beer."),
            ("Bhutan", "Nestled in the Himalayas, known for monasteries."),
            ("Canada", "The second-largest country in the world."),
            ("Egypt", "Located in North Africa and known for the Great Pyramid."),
            ("Finland", "Known for its lakes, forests, and cold winters."),
            ("Germany", "Known for sausages, beer, and the Berlin Wall."),
            ("Greece", "European Union member with Athens as its capital."),
            ("Iceland", "An island nation with stunning landscapes."),
            ("India", "Home to the Taj Mahal and Bollywood."),
            ("Ireland", "Home to leprechauns and St. Patrick's Day."),
            ("Italy", "The country of pasta, pizza, and art."),
            ("Japan", "Land of the rising sun with a rich cultural heritage."),
            ("Kenya", "Rich in wildlife and famous for safaris."),
            ("Lebanon", "Located in the Middle East and known for its cedars."),
            ("Malaysia", "A Southeast Asian nation with diverse culture."),
            ("Mexico", "Famous for tacos, tequila, and ancient ruins."),
            ("Pakistan", "Located in South Asia, known for its diverse culture."),
            ("Philippines", "An archipelago known for beautiful beaches."),
            ("South Korea", "Known for K-pop, kimchi, and technological innovation."),
            ("Sweden", "Home to Vikings and the capital is Stockholm."),
            ("Switzerland", "Known for Swiss watches and chocolate."),
            ("Turkey", "Famous for its Ottoman Empire history."),
            ("United States", "Home to the Statue of Liberty and jazz music.")
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       guard let ac = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController else {
            fatalError("DetailViewController dosen't exists!")
        }
        ac.countrySelected = indexPath.row
        let vc = UINavigationController(rootViewController: ac)
        present(vc, animated: true)
    }
}

class CustomTableViewCell : UITableViewCell {
    @IBOutlet var countryImage: UIImageView!
    @IBOutlet var countryHint: UILabel!    
}

