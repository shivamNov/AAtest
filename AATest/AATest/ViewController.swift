//
//  ViewController.swift
//  AATest
//
//  Created by Shivam Agrawal on 4/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let result = readTextFile(fileName: "AmericanAirlinesGroup")
        print(result)
    }

    
    
    func readTextFile(fileName: String) -> [String: Int] {
        let path = Bundle.main.path(forResource: fileName, ofType: "txt")
        var string = try! String(contentsOfFile: path!, encoding: String.Encoding.utf8)
        
        string = string.replacingOccurrences(of: "\n", with: " ") // remove all the new lines
        var stringArray = string.components(separatedBy: " ") // array of individual characters
    
        var wordCounts = [String: Int]()

        for word in stringArray {
            wordCounts[word, default: 0] += 1
        }
        
        stringArray = Array(wordCounts.keys)
        
        // get the count of each word
        // remove duplicates
        // sort as per the count
        
        return wordCounts
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell_Identifier", for: indexPath) as? UITableViewCell else {
            fatalError("cell doesn't exist")
        }
        
        return cell
    }
    
    
    
}



