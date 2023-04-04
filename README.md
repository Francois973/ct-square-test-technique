## Microservice CT-SQUARE

This microservice allows you to retrieve information based on an IP address with a simple get request.

### Example of the url of the request:

```sh
 GET http:/localhost:3000/api/v1/ip_informations\?ip\=37.174.71.166
```

### Result obtained:

The result has been applanated by the micro service in order to facilitate its reading.

```sh
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
If you want to skip caching you can add param "force"
