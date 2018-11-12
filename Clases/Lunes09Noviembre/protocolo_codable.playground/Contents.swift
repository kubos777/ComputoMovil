import UIKit
import Foundation

/*Usando el protocolo Codable*/

let jsonFromWeb = """
{
"firstName": "Jorge",
"lastName": "Chávez",
"jobTitle": "Estudiante",
"phoneNumber": "55-4141-5228",

}
""".data(using: .utf8)!

struct Employee:Decodable, Encodable {
    var firstName:String
    var lastName:String
    var jobTitle:String
    var phoneNumber: String
}

let jsonDecoder = JSONDecoder()


if let result  = try?
    jsonDecoder.decode(Employee.self, from: jsonFromWeb ) {
    print(result )
    var resultMod = result
    resultMod.firstName = "Marco Polo"
    print(resultMod)
    let myEncode = try JSONEncoder().encode(resultMod)
    print(myEncode)
    
}
else{
    print("No furula la data prro!")
}


