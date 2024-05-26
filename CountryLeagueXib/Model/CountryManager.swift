//
//  CountryManager.swift
//  CountryLeagueXib
//
//  Created by Zahra Alizada on 18.04.24.
//

import Foundation

//struct CountryManager {
//    func getItems()  {
//        let countries = [
//            Country(name: "Azerbaijan", image: "aze-flag", leagues:
//                        [League(name: "Aze La Liga 1", image: "az-lig1", clubs:
//                                    [Club(name: "Karabagh1", image: "karabagh"),
//                                     Club(name: "Karabagh2", image: "karabagh"),
//                                     Club(name: "Karabagh3", image: "karabagh")]),
//                        League(name: "Aze La Liga 2", image: "az-lig2", clubs:
//                                [Club(name: "Neftchi1", image: "neftchi"),
//                                 Club(name: "Neftchi2", image: "neftchi"),
//                                 Club(name: "Neftchi3", image: "neftchi")]),
//                        League(name: "Aze La Liga 3", image: "az-lig3", clubs:
//                                [Club(name: "Xezer-Lenkeran1", image: "xezer-lenkeran"),
//                                 Club(name: "Xezer-Lenkeran2", image: "xezer-lenkeran"),
//                                 Club(name: "Xezer-Lenkeran3", image: "xezer-lenkeran")])
//                        ]),
//            Country(name:"Turkish", image: "tr-flag", leagues: [League(name: "Tr La Liga 1", image: "tr-lig1", clubs:
//                                                                        [Club(name: "Fenerbahche1", image: "fenerbahche"),
//                                                                         Club(name: "Fenerbahche2", image: "fenerbahche"),
//                                                                         Club(name: "Fenerbahche3", image: "fenerbahche")]),
//                                                                     League(name: "Tr La Liga 2", image: "tr-lig2", clubs:
//                                                                                [Club(name: "Galatasaray1", image: "galatasaray"),
//                                                                                 Club(name: "Galatasaray2", image: "galatasaray"),
//                                                                                 Club(name: "Galatasaray3", image: "galatasaray")]),
//                                                                     League(name: "Tr La Liga 3", image: "tr-lig3", clubs:
//                                                                                [Club(name: "Beshiktash1", image: "besittash"),
//                                                                                 Club(name: "Beshiktash2", image: "besittash"),
//                                                                                 Club(name: "Beshiktash3", image: "besittash")]),
//                                                                     ]),
//            Country(name: "Germany", image: "de-flag", leagues: [League(name: "De La Liga 1", image: "de-lig1", clubs:
//                                                                            [Club(name: "Augsburg1", image: "augs"),
//                                                                             Club(name: "Augsburg2", image: "augs"),
//                                                                             Club(name: "Augsburg3", image: "augs")]),
//                                                                     League(name: "De La Liga 2", image: "de-lig2", clubs:
//                                                                                [Club(name: "Wolfsburg1", image: "wolfs"),
//                                                                                 Club(name: "Wolfsburg2", image: "wolfs"),
//                                                                                 Club(name: "Wolfsburg3", image: "wolfs")]),
//                                                                     League(name: "De La Liga 3", image: "de-lig3", clubs:
//                                                                                [Club(name: "Bochum1", image: "boch"),
//                                                                                 Club(name: "Bochum2", image: "boch"),
//                                                                                 Club(name: "Bochum3", image: "boch")])
//                                                                    ])
//        ]
//    }
//}

class CountryManager {
    func getItems() -> [Country]  {
        [
            .init(name: "Azerbaijan", image: "aze-flag", leagues: [
                                                        League(name: "Azerbaijan Premier League ", image: "az-l1", clubs: [
                                                                                            Club(name: "Neftchi", image: "az-c1"),
                                                                                            Club(name: "Khazar-Lankaran", image: "az-c2"),
                                                                                            Club(name: "Karabagh", image: "az-c3")
                                                                                        ]),
                                                        League(name: "Azerbaijan First Division", image: "az-l2", clubs: [
                                                                                            Club(name: "Khazar-Lankaran", image: "az-c2"),
                                                                                            Club(name: "Neftchi", image: "az-c1"),
                                                                                            Club(name: "Karabagh", image: "az-c3")
                                                                                        ]),
                                                        League(name: "Azerbaijan Cup", image: "az-l3", clubs: [
                                                                                            Club(name: "Neftchi", image: "az-c1"),
                                                                                            Club(name: "Karabagh", image: "az-c3"),
                                                                                            Club(name: "Khazar-Lankaran", image: "az-c2"),
                                                                                        ]) ]),
            .init(name: "Turkish", image: "tr-flag", leagues: [
                                                        League(name: "Super Lig", image: "tr-l1", clubs: [
                                                                                            Club(name: "Fenerbahche", image: "tr-c1"),
                                                                                            Club(name: "Galatasaray", image: "tr-c2"),
                                                                                            Club(name: "Besiktash", image: "tr-c3"),
                                                                                        ]),
                                                        League(name: "TFF 1. Lig", image: "tr-l2", clubs: [
                                                                                            Club(name: "Besiktash", image: "tr-c3"),
                                                                                            Club(name: "Galatasaray", image: "tr-c2"),
                                                                                            Club(name: "Fenerbahche", image: "tr-c1"),
                                                                                        ]),
                                                        League(name: "TFF 2. Lig", image: "tr-l3", clubs: [
                                                                                            Club(name: "Galatasaray", image: "tr-c2"),
                                                                                            Club(name: "Besiktash", image: "tr-c3"),
                                                                                            Club(name: "Fenerbahche", image: "tr-c1"),
                                                                                        ]) ]),
            .init(name: "Germany", image: "de-flag", leagues: [
                                                        League(name: "Bundesliga", image: "de-l1", clubs: [
                                                                                            Club(name: "FC Bayern München ", image: "de-c1"),
                                                                                            Club(name: "Borussia Dortmund ", image: "de-c2"),
                                                                                            Club(name: "RB Leipzig", image: "de-c3"),
                                                                                        ]),
                                                        League(name: "2 Bundesliga", image: "de-l2", clubs: [
                                                                                            Club(name: "Borussia Dortmund ", image: "de-c2"),
                                                                                            Club(name: "FC Bayern München ", image: "de-c1"),
                                                                                            Club(name: "RB Leipzig", image: "de-c3"),
                                                                                        ]),
                                                        League(name: "3. Liga", image: "de-l3", clubs: [
                                                                                            Club(name: "RB Leipzig", image: "de-c3"),
                                                                                            Club(name: "Borussia Dortmund ", image: "de-c2"),
                                                                                            Club(name: "FC Bayern München ", image: "de-c1"),
                                                                                        ]) ]),
        ]
    }
}

