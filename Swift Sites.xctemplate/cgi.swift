//
//  ___PACKAGENAME___.swift
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import AppKit

var cgiServerSoftware:UnsafeMutablePointer<Character>?
var cgiServerName:UnsafeMutablePointer<Character>?
var cgiGatewayInterface:UnsafeMutablePointer<Character>?
var cgiServerProtocol:UnsafeMutablePointer<Character>?
var cgiServerPort:UnsafeMutablePointer<Character>?
var cgiRequestMethod:UnsafeMutablePointer<Character>?
var cgiPathInfo:UnsafeMutablePointer<Character>?
var cgiPathTranslated:UnsafeMutablePointer<Character>?
var cgiScriptName:UnsafeMutablePointer<Character>?
var cgiQueryString:String?
var cgiRemoteHost:UnsafeMutablePointer<Character>?
var cgiRemoteAddr:UnsafeMutablePointer<Character>?
var cgiAuthType:UnsafeMutablePointer<Character>?
var cgiRemoteUser:UnsafeMutablePointer<Character>?
var cgiRemoteIdent:UnsafeMutablePointer<Character>?
var cgiContentTypeData = [Character]();
var cgiContentType = String(cgiContentTypeData)
var cgiMultipartBoundary:String?
var cgiCookie:UnsafeMutablePointer<Character>?
var cgiContentLength:Int?
var cgiAccept:UnsafeMutablePointer<Character>?
var cgiUserAgent:UnsafeMutablePointer<Character>?
var cgiReferrer:UnsafeMutablePointer<Character>?

var cgiArgc:Int?
var cgiArgv:UnsafeMutablePointer<UnsafeMutablePointer<Character>>?

var cgiIn = #file
var cgiOut = #file

var cgiRestored:Int = 0

func cgiGetenv(s:UnsafeMutablePointer<UnsafeMutablePointer<Character>>,
               variable:String){}

enum cgiParseResultType {
    case cgiParseSuccess
    case cgiParseMemory
    case cgiParseIO
}

struct cgiFormEntry {
    var attr:UnsafeMutablePointer<Character>
    var value:UnsafeMutablePointer<Character>
    var valueLength:Int
    var fileName:UnsafeMutablePointer<Character>
    var contentType:UnsafeMutablePointer<Character>
    var tfileName:UnsafeMutablePointer<Character>
    var next:UnsafeMutablePointer<cgiFormEntry>
}

var cgiFormEntryFirse:UnsafeMutablePointer<cgiFormEntry>?

func cgiParseGetFormInput() -> cgiParseResultType {
    return cgiParseFormInput(cgiQueryString!, length: cgiContentLength!)
}

func cgiParsePostFormInput() -> cgiParseResultType {
    var input:String
    var result:cgiParseResultType
    
    if (cgiContentLength == nil) {
        return cgiParseResultType.cgiParseSuccess;
    }
    input = String(malloc(cgiContentLength!))
    if (input.characters.count=0) {
        return cgiParseResultType.cgiParseMemory
    }
    if <#condition#> {
    <#code#>
}
}

func cgiParsePostMultipartInput() -> cgiParseResultType {}
func cgiParseFormInput(data:String, length:Int) -> cgiParseResultType {}
func cgiSetupConstants() {}
func cgiFreeResources() {}
func cgiStrEqNc(s1:UnsafeMutablePointer<Character>,s2:UnsafeMutablePointer<Character>) ->Int {}
func cgiStrBeginsNc(s1:UnsafeMutablePointer<Character>,s2:UnsafeMutablePointer<Character>) ->Int {}

func main(argc:Int, argv:[UnsafeMutablePointer<Character>]) -> Int {
    var result:Int?
    var cgiContentLengthString:UnsafeMutablePointer<Character>
    var e:String
        
    cgiArgc = argc
    cgiArgv = UnsafeMutablePointer<UnsafeMutablePointer<Character>>(argv)
    
    cgiSetupConstants()
    cgiGetenv(&cgiServerSoftware!, variable: "SERVER_SOFTWARE")
    cgiGetenv(&cgiServerName!, variable: "SERVER_NAME")
    cgiGetenv(&cgiGatewayInterface!, variable: "GATEWAY_INTERFACE")
    cgiGetenv(&cgiServerProtocol!, variable: "SERVER_PROTOCOL")
    cgiGetenv(&cgiServerPort!, variable: "SERVER_PORT")
    cgiGetenv(&cgiRequestMethod!, variable: "REQUEST_METHOD")
    cgiGetenv(&cgiPathInfo!, variable: "PATH_INFO")
    cgiGetenv(&cgiPathTranslated!, variable: "PATH_TRANSLATED")
    cgiGetenv(&cgiScriptName!, variable: "SCRIPT_NAME")
    cgiGetenv(&cgiQueryString!, variable: "QUERY_STRING")
    cgiGetenv(&cgiRemoteHost!, variable: "REMOTE_HOST")
    cgiGetenv(&cgiRemoteAddr!, variable: "REMOTE_ADDR")
    cgiGetenv(&cgiAuthType!, variable: "AUTH_TYPE")
    cgiGetenv(&cgiRemoteUser!, variable: "REMOTE_USER")
    cgiGetenv(&cgiRemoteIdent!, variable: "REMOTE_IDENT")
    
    e = NSProcessInfo().environment["CONTENT_TYPE"]!
    if e.characters.count > 0 {
        if e.characters.count < cgiContentTypeData.count {
            cgiContentType = e
        } else {
            cgiContentType = e.substringWithRange(e.startIndex...e.startIndex.advancedBy(cgiContentTypeData.count - 1))
            cgiContentType += "\0"
        }
    } else {
        cgiContentType = "\0"
    }
    cgiMultipartBoundary = ""
    if (cgiContentType.rangeOfString(";") != nil) {
        var sat = cgiContentType.rangeOfString(";")
    }
}






































