//
//  User.swift
//  MyTime
//
//  Created by Mikhail on 2020-11-18.
//

import Foundation


struct UserPriv{
    private var id: UUID = UUID()
    public var name:String = ""
    public var email:String = ""
    private var password:String = ""
    public var address : String = ""
    // TimeScahadual Used in a diffrent View to make selection for it's Type
    
    // id:UUID, hoursAvailability: [Int],dateAvailability: [Date],datdListBooked:[Date]
    public var _timeSchadual: TimeScahadual = TimeScahadual()
    public var phoneNumber: String = ""
    public var rememberMe: Bool = true

    init(){}
    
    init(name:String,email:String,password:String,phoneNumber:String,timeSchadual:TimeScahadual){
        self.name = name
        self.email = email
        self.password = password
        self.phoneNumber = phoneNumber
        self._timeSchadual = timeSchadual
            
    }
    //BookTimeFrameView
    init(name:String,email:String,phoneNumber:String,timeSchadual:TimeScahadual){
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        self._timeSchadual = timeSchadual
            
    }
    //SignUpView
    init(name:String,email:String,password:String,phoneNumber:String, address: String){
        self.name = name
        self.email = email
        self.password = password
        self.phoneNumber = phoneNumber
        self.address = address
    }
}
    

