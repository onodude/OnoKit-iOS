//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation

public func Log<T>(_ object: T?, filename: String = #file, line: Int = #line, funcname: String = #function) {
    #if DEBUG
        guard let object = object else { return }
        print("***** \(Date()) \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
    #endif

}

open class CommonLogManager {

    public static let sharedInstance = CommonLogManager()

    public static func log(string: String) {

        if isXcode() {

            print(string)

        }

    }

    public static func isXcode() -> Bool {

        var info = kinfo_proc()
        var mib: [Int32] = [CTL_KERN, KERN_PROC, KERN_PROC_PID, getpid()]
        var size = MemoryLayout<kinfo_proc>.stride
        let junk = sysctl(&mib, UInt32(mib.count), &info, &size, nil, 0)
        assert(junk == 0, "sysctl failed")
        return (info.kp_proc.p_flag & P_TRACED) != 0
    }

}
