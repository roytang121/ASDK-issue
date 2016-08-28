import UIKit
import AsyncDisplayKit

class ViewController: ASViewController {
  
  
  var tableNode: ASTableNode!
  
  init() {
    self.tableNode = ASTableNode()
    
    super.init(node: self.tableNode)
    
    tableNode.dataSource = self
    tableNode.delegate = self
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = UIColor.whiteColor()
    
    self.view.addSubnode(self.tableNode)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

extension ViewController: ASTableDataSource, ASTableDelegate {
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100000
  }
  
  func tableView(tableView: ASTableView, nodeBlockForRowAtIndexPath indexPath: NSIndexPath) -> ASCellNodeBlock {
    return {
      let cell = ASCellNode()
//      cell.preferredFrameSize = CGSizeMake(tableView.bounds.width, 100)
      return cell
    }
  }
}