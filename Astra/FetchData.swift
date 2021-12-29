//
//  FetchData.swift
//  Astra
//
//  Created by Noe Duran on 02/5/21.
//
import Foundation



//class FetchData {
//
//    func getLaunches(completion:@escaping ([Launch]) -> ()) {
//        guard let url = URL(string: "https://ll.thespacedevs.com/2.1.0/launch/upcoming/?format=json&hide_recent_previous=false&include_suborbital=true&is_crewed=false&limit=10&related=false") else { return }
//        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let launches = try! JSONDecoder().decode([Launch].self, from: data!)
//            print(launches)
//
//            DispatchQueue.main.async {
//                completion(launches)
//            }
//        }
//        .resume()
//    }
//}


class FetchData{
    let url = "https://ll.thespacedevs.com/2.1.0/launch/upcoming/?format=json&hide_recent_previous=false&include_suborbital=true&is_crewed=false&limit=10&related=false"

    func fetchData(completionHandler:@escaping ([Launch]) -> Void){

        var retrievedLaunches = [Launch]()

        let task =  URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {data,response,error in
//            guard let data = data, error == nil else{
//                print("Something went wrong")
//                return
//            }
            let jsonData = self.readLocalFile(forName: "sample")

            //Converts data into the class
            var result: dataResults?

            do{
                result = try JSONDecoder().decode(dataResults.self, from: jsonData!)
            }
            catch{
                print("Failed to convert \(error.localizedDescription)")
            }

            guard let json = result else{
                return
            }


            for i in 0 ..< json.results.count{
                retrievedLaunches.append(json.results[i])
            }

            //Once task is complete, returns and continues with the code
            completionHandler(retrievedLaunches)

        })
        //makes actual request
        task.resume()

    }

    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }

        return nil
    }

}

struct dataResults: Codable{
    let results: [Launch]
}
