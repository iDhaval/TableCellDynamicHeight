
import UIKit

class ViewController: UIViewController {
    
    var dataSource:[(upper:String,lower:String)] = [("Subscription Groups","Subscription groups consist of varying subscription levels and durations. All auto-renewable subscriptions are required to be part of a subscription group. Customers can move between subscription durations within a group, but cannot be subscribed to more than one subscription product within a group."),
                                                    ("Duration","The length of time between auto-renewals. The duration can be 7 days, 1 month, 2 months, 3 months, 6 months, or 1 year."),
                                                    ("Subscription Levels","You can assign every in-app purchase within a subscription group to a subscription level. Subscription levels are given a default rank, but you can reorder them by dragging and dropping each in-app purchase into the appropriate rank. Your subscription levels should be listed in descending order, starting with the one that offers the highest level of service. You can add more than one subscription to each level if the service provided is determined to be equal. Customers can move between subscription levels."),
                                                    ("Upgrade","When a customer switches from a subscription in a lower level to a subscription in a higher level. This change goes into effect immediately."),
                                                    ("Marketing Incentive Duration","The length of an auto-renewable subscription extension if customers choose to opt-in to share contact information. This property is only available to Magazines & Newspapers developers who have implemented Newsstand Kit.\n\nUsers’ contact information is available in the Sales and Trends module of iTunes Connect.\n\nNote: The opt-in incentive is not available for macOS.")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell", forIndexPath: indexPath) as! TableViewCell
        
        cell.loadCell(dataSource[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}

