//
//  NetworkProvider.swift
//  https
//
//  Created by Javier Rodríguez Valentín on 01/10/2021.
//

import Foundation

//despues de crear el archivo de tipo swift con el nombre NetworkProvider tenemos que importar Alamofire
import Alamofire

//creamos una clase para poder manejar esto
//con final hacemos que la clase no se pueda heredar
final class NetworkingProvider{
    
    static let shared = NetworkingProvider()
    
    func getProof(){
        
        print("Hola")
        
        let url = "http://176.26.0.131/backend/index.php?id=1"
        let parameters = ["id":"1"]
        
        AF.request(url, method: .get).validate(statusCode: 200...299).responseDecodable(of: User.self) { (respuesta) in
            
            print("Respuesta: \(respuesta.value?.nombre)")
            
        }
        
        print("gasjd")
        
    }
}
