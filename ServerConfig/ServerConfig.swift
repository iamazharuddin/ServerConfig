//
//  ServerConfig.swift
//  ServerConfig
//
//  Created by Azharuddin 1 on 25/06/23.
//

import Foundation
import Foundation
enum BaseUrl : String{
     case qaDebug = "https:local.com"
     case prodDebug = "https:prod.com"
     case debug = "https:debug.com"
}


class ServerConfig{
     static let shared = ServerConfig()
     var baseUrl : String?
     func setupConfig(){
         #if qa
           self.baseUrl = BaseUrl.qaDebug.rawValue
         #elseif prod
           self.baseUrl = BaseUrl.prodDebug.rawValue
         #elseif DEBUG
          self.baseUrl = BaseUrl.debug.rawValue
         #endif
         print(self.baseUrl ?? "not found")
     }
}
