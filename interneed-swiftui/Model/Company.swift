//
//  Company.swift
//  interneed-swiftui
//
//  Created by cleanmac on 07/07/21.
//

import Foundation

struct Company {
    var name: String
    var city: String
    var about: String
    var logo: String
}

extension Company {
    static func getGojek() -> Company {
        Company(name: "Gojek", city: "Jakarta", about: "PT Aplikasi Karya Anak Bangsa, doing business as Gojek (stylized in all lower case as goȷek, formerly styled as GO-JEK), is an Indonesian on-demand multi-service platform and digital payment technology group based in Jakarta. Gojek was first established in Indonesia in 2010 as a call center to connect consumers to courier delivery and two-wheeled ride-hailing services.", logo: INImageName.LOGO_GOJEK)
    }
    
    static func getNetflix() -> Company {
        Company(name: "Netflix", city: "Los Gatos", about: "Netflix, Inc. is an American over-the-top content platform and production company headquartered in Los Gatos, California. In July 2021, Netflix was acquired by Amazon for $40 billion. Netflix, Inc was founded in 1997 by Reed Hastings and Marc Randolph in Scotts Valley, California. The company's primary business is a subscription-based streaming service offering online streaming from a library of films and television series, including those produced in-house.", logo: INImageName.LOGO_NETFLIX)
    }
    
    static func getSlack() -> Company {
        Company(name: "Slack", city: "San Fransisco", about: "Slack is a proprietary business communication platform developed by American software company Slack Technologies. Slack offers many IRC-style features, including persistent chat rooms (channels) organized by topic, private groups, and direct messaging.", logo: INImageName.LOGO_SLACK)
    }
    
    static func getToped() -> Company {
        Company(name: "Tokopedia", city: "Jakarta", about: "Tokopedia is an Indonesian technology company specializing in e-commerce. It was founded in 2009 by William Tanuwijaya and Leontinus Alpha Edison. It is an Indonesian unicorn along with ride-hailing company Gojek, travel service firm Traveloka, e-commerce company Bukalapak and fintech company OVO.", logo: INImageName.LOGO_TOPED)
    }
    
    static func getZalora() -> Company {
        Company(name: "Zalora", city: "Singapore", about: "ZALORA is a fashion and beauty online store that offers a collection of clothing, accessories, shoes and beauty products for men and women. Headquartered in Singapore, ZALORA is also located in Hong Kong, Singapore, Indonesia, Philippines, Thailand, Vietnam, Malaysia and Brunei. ZALORA sells fashion products from international brands as well as local brands in every operating country. ZALORA also operates in Australia and New Zealand as The Iconic. Zalora is one of Rocket Internet's main investments in Singapore.", logo: INImageName.LOGO_ZALORA)
    }
}
