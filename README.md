## Microservice CT-SQUARE

This microservice allows you to retrieve information based on an IP address with a simple get request.

### Example of the url of the request:

```sh
 GET http:/localhost:3000/api/v1/ip_informations\?ip\=37.174.71.166
```

### Result obtained:

The result has been applanated by the micro service in order to facilitate its reading.

```json
{
                                     "ip" => "37.174.71.166",
                                   "type" => "IPv4",
                               "hostname" => nil,
                           "carrier.name" => "Free Mobile SAS",
                            "carrier.mcc" => "208",
                            "carrier.mnc" => "15",
                         "company.domain" => nil,
                           "company.name" => "Ncc # 2012024403",
                           "company.type" => "isp",
                         "connection.asn" => 51207,
                      "connection.domain" => "proxad.net",
                "connection.organization" => "Free Mobile SAS",
                       "connection.route" => "37.160.0.0/12",
                        "connection.type" => "isp",
                          "currency.code" => "EUR",
                          "currency.name" => "Euro",
                   "currency.name_native" => "euro",
                        "currency.plural" => "euros",
                 "currency.plural_native" => "euros",
                        "currency.symbol" => "€",
                 "currency.symbol_native" => "€",
        "currency.format.negative.prefix" => "-",
        "currency.format.negative.suffix" => " €",
        "currency.format.positive.prefix" => "",
        "currency.format.positive.suffix" => " €",
                "location.continent.code" => "EU",
                "location.continent.name" => "Europe",
                  "location.country.area" => 547030,
               "location.country.borders" => [
        [0] "AD",
        [1] "BE",
        [2] "CH",
        [3] "DE",
        [4] "ES",
        [5] "IT",
        [6] "LU",
        [7] "MC"
    ],
          "location.country.calling_code" => "33",
               "location.country.capital" => "Paris",
                  "location.country.code" => "FR",
                  "location.country.name" => "France",
            "location.country.population" => 67749632,
    "location.country.population_density" => 123.85,
            "location.country.flag.emoji" => "🇫🇷",
    "location.country.flag.emoji_unicode" => "U+1F1EB U+1F1F7",
         "location.country.flag.emojitwo" => "https://cdn.ipregistry.co/flags/emojitwo/fr.svg",
             "location.country.flag.noto" => "https://cdn.ipregistry.co/flags/noto/fr.png",
          "location.country.flag.twemoji" => "https://cdn.ipregistry.co/flags/twemoji/fr.svg",
        "location.country.flag.wikimedia" => "https://cdn.ipregistry.co/flags/wikimedia/fr.svg",
             "location.country.languages" => [
        [0] {
              "code" => "fr",
              "name" => "French",
            "native" => "français"
        },
        [1] {
              "code" => "br",
              "name" => "Breton",
            "native" => "brezhoneg"
        },
        [2] {
              "code" => "co",
              "name" => "Corsican",
            "native" => "Corsican"
        },
        [3] {
              "code" => "ca",
              "name" => "Catalan",
            "native" => "català"
        },
        [4] {
              "code" => "eu",
              "name" => "Basque",
            "native" => "euskara"
        },
        [5] {
              "code" => "oc",
              "name" => "Occitan",
            "native" => "Occitan"
        }
    ],
                   "location.country.tld" => ".fr",
                   "location.region.code" => nil,
                   "location.region.name" => nil,
                          "location.city" => nil,
                        "location.postal" => nil,
                      "location.latitude" => 48.85816,
                     "location.longitude" => 2.33873,
                 "location.language.code" => "fr",
                 "location.language.name" => "French",
               "location.language.native" => "français",
                         "location.in_eu" => true,
                     "security.is_abuser" => false,
                   "security.is_attacker" => false,
                      "security.is_bogon" => false,
             "security.is_cloud_provider" => false,
                      "security.is_proxy" => false,
                      "security.is_relay" => false,
                        "security.is_tor" => false,
                   "security.is_tor_exit" => false,
                        "security.is_vpn" => false,
                  "security.is_anonymous" => false,
                     "security.is_threat" => false,
                           "time_zone.id" => "Europe/Paris",
                 "time_zone.abbreviation" => "CET",
                 "time_zone.current_time" => "2023-04-04T16:00:26+02:00",
                         "time_zone.name" => "Central European Standard Time",
                       "time_zone.offset" => 7200,
           "time_zone.in_daylight_saving" => true
}
````

### Start using 

```sh
git clone git@github.com:Francois973/ct-square-test-technique.git
```

```sh
bundle install
```

```sh
brew install redis
brew services restart redis
```

```sh
rails server
```

#### Make your first request 🚀

```sh
curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET  http:/localhost:3000/api/v1/ip_informations\?ip\=37.174.71.166
```
