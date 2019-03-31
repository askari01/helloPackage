import Kitura
import Foundation

public class fireForDetector : RouterMiddleWare {
    public func handle(request: RouterRequest, response: RouterResponse, next: @escaping () -> Void) throws {
        if let ua = request.headers["User-Agent"], ua.contains ("Firefox") {
            request.userInto["usingFirefox"] = true
        } else {
            request.userInto["usingFirefox"] = false
        }
        next ()
    }
    public init() {
        
    }
}