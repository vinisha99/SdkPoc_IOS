//
//  GeneralInformationView.swift
//  SdkPoc (iOS)
//
//  Created by Vinisha Nagarajan on 6/23/22.
//

import Foundation
import SwiftUI
import AWSDK


struct GeneralInformationView: View{
    var generalInformation: GeneralInformation = GeneralInformation()
    var body: some View{
        
        VStack{
        Text("Device info: \(generalInformation.getInfoString())").padding()
        Button("Inside general Info") {
                    print("I am clicked")
                }
        }
        
//        NavigationView{
//        VStack{
//
//
//        List{
//            NavigationLink(destination: ApplicationInformationView(), label: {Text("Application Information").bold().padding()})
//            NavigationLink(destination: DeviceInformationView(), label: {Text("Device Information").bold().padding()})
//            }
//        }
//
//    }
    }

}

class GeneralInformation{
    var info: String
    
    init(){
        info = "Hello"
        printing()
    }
    func printing(){
            DeviceInformationController.sharedController.fetchApplicationAssignmentStatus { appStatusInfo, deviceInfo, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                if let deviceInformation = deviceInfo {
                    let sharedDevice: String = String(describing: deviceInformation.sharedDeviceStatus.rawValue)
                    if(sharedDevice == "0") {
                        print("device info: \(String(describing: deviceInfo?.sharedDeviceStatus))")
                        self.info = "Checking"
                    }
                }
                if let appStatusInformation = appStatusInfo {
                    let appIsEnrolled: String = String(describing: appStatusInformation.enrollmentStatus)
                    print("App is Enrolled: \(appIsEnrolled)")
                }
            }
            UserInformationController.sharedInstance.retrieveUserInfo { userInfo, error in
                print("User info: \(String(describing: userInfo?.firstName))")
            }
        }

    func getInfoString() -> String{
        return info
    }

}

//class ApplicationInformation{
//    func setApplicationInformation(){
//
//    }
//}
//
//struct ApplicationInformationView:View{
//    var body: some View{
//
//    }
//
//
//}
