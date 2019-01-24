//
//  ExpensesViewController.swift
//  Expenses
//
//  Created by Robert Graman on 1/24/19.
//  Copyright © 2019 Robert Graman. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var Expences = [Expense]()
    
    
    
    var dateFormater = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormater.dateFormat = "MMMM d, yyyy HH:mm"
        if let date = dateFormater.date(from: "June 1, 2018 18:30"){
        Expences.append(Expense(title:"Dinner" , amount:32.50 , date: date))
        }
        if let date = dateFormater.date(from: "May 30, 2018 12:17"){
            Expences.append(Expense(title:"Office Supplies" , amount:59.34 , date: date))
        }
        if let date = dateFormater.date(from: "May 30, 2018 11:43"){
            Expences.append(Expense(title:"Uber" , amount:16.23 , date: date))
        }
        if let date = dateFormater.date(from: "May 29, 2018 8:45"){
            Expences.append(Expense(title:"Coffee" , amount:3.95 , date: date))
        }
        

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Expences.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenceCell", for:indexPath)
        if let cell = cell as? ExpenceTableViewCell{
            let expence = Expences[indexPath.row]
            cell.name.text=expence.title
            cell.amount.text=String(expence.amount)
            cell.date.text=dateFormater.string(from: expence.date)
        }
        
        return cell
    }
}
