//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation

extension URL {

    func getQueryParamsForKey(key: String) -> String! {
        let components = URLComponents(url: self, resolvingAgainstBaseURL: false)
        if components?.queryItems != nil {
            for item in components!.queryItems! {
                if item.name == key {
                    return item.value
                }
            }
        }
        return nil
    }

}
