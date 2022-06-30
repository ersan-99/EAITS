//
//  TLS_Connection2.swift
//  Bachelor_TLS
//
//  Created by test on 24.04.22.
//



import UIKit




    
    


func TLS_Connection2(server: String) -> String{
    
    
    
    let session = URLSession(configuration: URLSessionConfiguration.ephemeral,
                                     delegate: nil,
                                     delegateQueue: nil)


    // used string:server
    let url = URL(string: "https://example.org:4433")!

    
    let task = URLSession.shared.dataTask(with: url) { data, response, error in //someErrorHandling
        switch error {
         case .some(let error as NSError) where error.code ==
                                NSURLErrorNotConnectedToInternet:
            print("showOfflineView()")
         case .some(let error as NSError) where error.code ==
                               NSURLErrorSecureConnectionFailed:
            //showSecureConnectionFailedView()
            print("Wrong_Cert")
            

         case .some:
            print("showGenericErrorView()")

         case .none:
            print("renderContent(from: data)")
         }
       }

        // Data-Task muss via resume explizit gestartet werden
        task.resume()

    

    
    //let myConfig = SSLService.Configuration(withCACertificateDirectory: nil, usingCertificateFile: "/Users/kadri/Desktop/Ersan/CAroot.crt", withKeyFile: "/Users/kadri/Desktop/Ersan/CAroot.key")
    
     //Create the socket...
     //var socket = try? Socket.create()
    //guard let socket = socket else {
    //  fatalError("Could not create socket.")
    //}
    //socket.delegate = try? SSLService(usingConfiguration: SSLService.Configuration.init())
    //try? socket.connect(to: "192.168.178.133", port: 44330)
    

    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        
    return "h"
    
    
}
    
    
    
    
    
    
    
 
    
    
    

