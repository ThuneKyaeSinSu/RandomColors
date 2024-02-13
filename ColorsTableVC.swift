//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Thelma on 12/02/2024.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []
    
    override func viewDidLoad(){
        super.viewDidLoad()
        createRandomColors()
    }
    
    func createRandomColors(){
        for _ in 0..<50{
            colors.append(UIColor.randomColors())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else{
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailsVC", sender: color )
    }
}
