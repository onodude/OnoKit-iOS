//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public class CommonTableView: UITableView {

    public var ctrlRefresh: UIRefreshControl = UIRefreshControl()

    // MARK: - Setters

    @discardableResult
    public func frame(_ frame: CGRect) -> CommonTableView {
        self.frame = frame
        return self
    }

    @discardableResult
    public func superview(_ superview: UIView) -> CommonTableView {
        superview.addSubview(self)
        return self
    }

    @discardableResult
    public func bgColor(_ bgColor: UIColor) -> CommonTableView {
        self.backgroundColor = bgColor
        return self
    }

    @discardableResult
    public func refreshControl(_ tintColor: UIColor, _ event: UIControl.Event = .valueChanged, _ selector: Selector, _ target: Any) -> CommonTableView {
        self.ctrlRefresh.tintColor = tintColor
        self.ctrlRefresh.addTarget(target, action: selector, for: event)
        self.refreshControl = self.ctrlRefresh
        return self
    }

    @discardableResult
    public func refreshControl(_ tintColor: UIColor, _ event: UIControl.Event = .valueChanged, _ method: @escaping () -> Void) -> CommonTableView {
        self.ctrlRefresh.tintColor = tintColor
        self.ctrlRefresh.addAction(event, method)
        self.refreshControl = self.ctrlRefresh
        return self
    }

    @discardableResult
    public func identifiers(_ identifiers: [String]) -> CommonTableView {
        for identifier in identifiers {
            if let projectName = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String {
                let namespace = projectName.replacingOccurrences(of: "-", with: "_")
                if let anyClass: AnyClass = NSClassFromString("\(namespace).\(identifier)") {
                    self.register(anyClass, forCellReuseIdentifier: identifier)
                }
            }
        }
        return self
    }

    // MARK: - Functions

    public func stopRefreshControl() {
        if self.ctrlRefresh.isRefreshing {
            self.ctrlRefresh.endRefreshing()
        }
    }

    public func scrollToTopRow() {
        self.setContentOffset(CGPoint.zero, animated: true)
    }

}
