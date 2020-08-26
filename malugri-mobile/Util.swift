//
//  Util.swift
//  malugri-mobile
//
//  Created by admin on 21/08/2020.
//  Copyright © 2020 FreeAppSW. All rights reserved.
//

import Foundation
import UIKit;

class MalugriUtil {
    static func resolveAudioFormat(_ formatCode: UInt) -> String {
        switch (formatCode) {
        case 1: return "BRSTM";
        case 2: return "BCSTM";
        case 3: return "BFSTM";
        case 4: return "BWAV";
        case 5: return "ORSTM";
        default: return "Unknown format";
        }
    }
    static func resolveAudioCodec(_ codecCode: UInt) -> String {
        switch (codecCode){
        case 0: return "8bit PCM";
        case 1: return "16bit PCM";
        case 2: return "DSP-ADPCM";
        default: return "Unknown codec";
        }
    }
    static func popupAlert(parent: UIViewController, title: String, message: String){
        let asToPresent: UIAlertController = UIAlertController.init(title: title, message: message, preferredStyle: UIAlertController.Style.alert);
        asToPresent.addAction(UIAlertAction.init(title: "Dismiss", style: UIAlertAction.Style.cancel, handler: nil));
        parent.present(asToPresent, animated: true, completion: nil);
    }
    static let brstmReadErrorCode: [UInt8: String] = [
        0: "No error",
        255: "Invalid file",
        250: "Invalid file",
        249: "Too many channels in file",
        248: "Too many tracks in file",
        244: "Unknown track description type",
        240: "Invalid file",
        230: "Invalid file",
        220: "Audio codec not supported",
        210: "File not supported"
    ]
}
