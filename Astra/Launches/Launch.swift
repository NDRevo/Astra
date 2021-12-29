//
//  Launch.swift
//  Astra
//
//  Created by Noe Duran on 2/3/21.
//

struct Launch: Codable{
    let id: String?
    let name: String?
    let net: String?
    let window_end: String?
    let window_start: String?
    let inhold: Bool?
    let launch_service_provider: lspName
    let rocket: rocketName
    let mission: missionInfo?
    let pad: padInfo
    let webcast_live: Bool?
    let image: String?
    
}

struct lspName: Codable {
    let name: String?
}

struct rocketName: Codable {
    let configuration: rocketConfig?
}
struct rocketConfig: Codable {
    let name: String?
}

struct missionInfo: Codable {
    let name: String?
    let description: String?
    let type: String?
    let orbit: orbitType?
}

struct orbitType: Codable {
    let name: String?
    let abbrev: String?
}

struct padInfo:Codable {
    let name: String?
    let map_url: String?
    let latitude: String?
    let longitude: String?
    let location: padLocation?

}
struct padLocation:Codable {
    let name: String?
    let country_code: String?
}


