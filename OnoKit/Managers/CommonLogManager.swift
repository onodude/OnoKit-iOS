//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

// swiftlint:disable identifier_name

import Foundation

public func Log<T>(_ object: T?, filename: String = #file, line: Int = #line, funcname: String = #function) {
    #if DEBUG
        guard let object = object else { return }
        print("***** \(Date()) \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
    #endif

}

open class CommonLogManager: NSObject {

    static let common = CommonLogManager()

    public func log(_ string: String) {

        if isXcode() {

            print(string)

        } else {

            logProd(string)

        }

    }

    open func logProd(_ string: String) {

        //  Crashlytics.crashlytics().log(string)

    }

    func isXcode() -> Bool {

        var info = kinfo_proc()
        var mib: [Int32] = [CTL_KERN, KERN_PROC, KERN_PROC_PID, getpid()]
        var size = MemoryLayout<kinfo_proc>.stride
        let junk = sysctl(&mib, UInt32(mib.count), &info, &size, nil, 0)
        assert(junk == 0, "sysctl failed")
        return (info.kp_proc.p_flag & P_TRACED) != 0
    }

}
