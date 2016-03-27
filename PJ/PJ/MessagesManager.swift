//
//  MessagesManager.swift
//  Lokey
//
//  Created by William Gu on 1/26/16.
//  Copyright © 2016 Gu Studios. All rights reserved.
//

//import UIKit
////SocketIoclientswift
//
//protocol MessagesManagerDelegate {
//    
//}
//
//
//class MessagesManager: NSObject {
//
//    static let sharedInstance = MessagesManager();
//    var delegate: MessagesManagerDelegate?
//    
//    
////    let socket = SocketIOClient(socketURL: "http://192.168.0.6:3000");
//    
//    override init() {
//        super.init();
//        self.addHandlers();
//    }
//    
//    func addHandlers() {
//        socket.on("connect") {data, ack in
//            print("socket connected")
//            self.joinThread("Test'", userID: "Test", fullName: "Will Gu", phoneNumber: 16032756869);
//        }
//        socket.on("message") {data, ack in
//            print("received message");
//        }
//        socket.on("userJoined") {data, ack in
//            print("user joined");
//        }
//        
//    }
//    
//    func connect() {
//        self.socket.connect();
//    }
//    
//    func sendMessage(text:String, userID:String, fullName:String, threadID:String) {
//        let message = [
//            "text": text,
//            "fullName": fullName,
//            "user_id": userID,
//            "toMessageThread_id": threadID
//        ];
//        socket.emit("message", message);
//        
//    }
//    func joinThread(threadID:String, userID:String, fullName:String, phoneNumber:Double) {
//        let data = [
//            "threadID" : threadID,
//            "userID": userID,
//            "fullName": fullName,
//            "phoneNumber" : phoneNumber
//        ];
//        socket.emitWithAck("joinThread", data)(timeoutAfter: 0, callback: {data in
//            print(data);
//        });
//    }
//    
//    
//}
