//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import SnapKit

protocol BaseViewControllerProtocol {

    func loadMainView()
    func buildMainView()
    func bindViewModel()

}

open class BaseViewController: UIViewController, BaseViewControllerProtocol, CAAnimationDelegate {

    // MARK: - Objects

    var screenName: String = ""

    var viewNavBar: CommonView!
    var imgNavBarBg: CommonImageView!
    var imgNavBarTitle: CommonImageView!
    var lblNavBarTitle: CommonLabel!
    var btnBack: CommonButton!
    var btnSearch: CommonButton!
    var btnSettings: CommonButton!
    var btnClose: CommonButton!

    var viewMain: UIView!

    // MARK: - Load

    open override func viewDidLoad() {
        super.viewDidLoad()
    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let viewName = String(describing: type(of: self))
        LogManager.log(string: String(format: "%@", viewName) )
    }

    open func loadMainView() { }

    // MARK: - Build

    open func bindViewModel() { }

    open func buildMainView() {

        self.view.window?.layer.backgroundColor = UIColor.clear.cgColor

        viewMain = CommonView(backgroundColor: ColorManager.colorWhite(), superview: self.view)

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

        lblNavBarTitle = CommonLabel(text: title, titleColor: ColorManager.colorBlack(), font: FontManager.fontSemiBold(18), bgColor: .clear, alignment: .center, superview: viewNavBar)

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

        NavigationManager.dismiss(from: self)

    }

    @objc open func keyboardWillShow(notification: NSNotification) {

    }

    @objc open func keyboardWillHide(notification: NSNotification) {

    }

    // MARK: - Other

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        let viewName = String(describing: type(of: self))
        LogManager.log(string: String(format: "didReceiveMemoryWarning: %@", viewName) )

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
