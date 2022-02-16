import Vapor
import CryptoKit


func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.post("webhook") { req -> String in
        let signature:String = req.headers["typeform-signature"][0]
        let isValid:Bool = verifySig(receivedSig: signature, payload: req.body)
        if(isValid){
            return "Hello, world!"
        }else{
            throw Abort(.unauthorized, reason: "Invalid Signature, someone is faking it")
        }
    }
}


func verifySig(receivedSig: String, payload: Request.Body) -> Bool{
    let secretString = "abc123" //REPLACE by your own
    let key = SymmetricKey(data: secretString.data(using: .utf8)!)
    let regenSig = HMAC<SHA256>.authenticationCode(for: Data(payload.string!.utf8), using: key)
    let sigData = Data(regenSig)
    let sigBase64 = sigData.base64EncodedString()
    let final = "sha256=\(sigBase64)"
    if(final == receivedSig){
        return true
    }
    return false
}

struct TFPayload: Content {
    var event_id: String?
}
