//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import SnapKit

protocol CommonViewControllerProtocol {

    func loadMainView()
    func buildMainView()
    func bindViewModel()

}

open class CommonViewController: UIViewController, CommonViewControllerProtocol, CAAnimationDelegate {

    // MARK: - Objects

    open var screenName: String = ""

    open var viewNavBar: CommonView!
    open var imgNavBarBg: CommonImageView!
    open var imgNavBarTitle: CommonImageView!
    open var lblNavBarTitle: CommonLabel!
    open var btnBack: CommonButton!
    open var btnSearch: CommonButton!
    open var btnSettings: CommonButton!
    open var btnClose: CommonButton!

    open var viewMain: UIView!

    // MARK: - Load

    open override func viewDidLoad() {
        super.viewDidLoad()
    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let viewName = String(describing: type(of: self))
        CommonLogManager.log(string: String(format: "%@", viewName) )
    }

    open func loadMainView() { }

    // MARK: - Build

    open func bindViewModel() { }

    open func buildMainView() {

        self.view.window?.layer.backgroundColor = UIColor.clear.cgColor

        viewMain = CommonView(backgroundColor: CommonColorManager.colorWhite(), superview: self.view)

        viewMain.snp.makeConstraints { (view) in
            view.left.right.top.bottom.equalTo(self.view)
        }

    }

    open func buildNavigationBar() {

        viewNavBar = CommonView(backgroundColor: .clear, superview: viewMain)

        viewNavBar.snp.makeConstraints { (view) in
            view.left.equalToSuperview()
            view.right.equalToSuperview()
            view.top.equalToSuperview()
            view.height.equalTo(kNavBarHeight + kStatusBarHeight)
        }

        imgNavBarBg = CommonImageView(backgroundColor: .clear, superview: viewNavBar)

        imgNavBarBg.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

    }

    // MARK: - Configuration

    open func addNavigationBarBackButton() {

        btnBack = CommonButton(imageName: "btn_back", superview: viewNavBar, action: #selector(self.btnBackPressed), target: self)

        btnBack.snp.makeConstraints { (view) in
            view.bottom.equalToSuperview().inset(15)
            view.left.equalToSuperview().inset(15)
            view.width.equalTo(35)
            view.height.equalTo(35)
        }

    }

    open func addNavigationBarTitle(title: String) {

        lblNavBarTitle = CommonLabel(text: title, titleColor: CommonColorManager.colorBlack(), font: CommonFontManager.fontBold(18), bgColor: .clear, alignment: .center, superview: viewNavBar)

        lblNavBarTitle.snp.makeConstraints { (view) in
            view.centerX.equalToSuperview()
            view.bottom.equalToSuperview()
            view.width.equalTo(200)
            view.height.equalTo(35)
        }

    }

    // MARK: - Keyboard

    open func addKeyboardNotifications() {

         NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
         NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

    }

    // MARK: - Actions

    @objc open func btnBackPressed() {

        CommonNavigationManager.dismiss(from: self)

    }

    @objc open func keyboardWillShow(notification: NSNotification) {

    }

    @objc open func keyboardWillHide(notification: NSNotification) {

    }

    // MARK: - Other

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        let viewName = String(describing: type(of: self))
        CommonLogManager.log(string: String(format: "didReceiveMemoryWarning: %@", viewName) )

    }

    open override var prefersStatusBarHidden: Bool {
        return false
    }

    open override var preferredStatusBarStyle: UIStatusBarStyle {
        if #available(iOS 13.0, *) {
            return .darkContent
        } else {
            return .default
        }
    }

}
