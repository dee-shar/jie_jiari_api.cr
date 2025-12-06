# jie_jiari_api.cr
Web-API for [jiejiariapi.com](https://www.jiejiariapi.com/en) which provides a comprehensive listing of public holidays in China for the year. It includes the date, name of the holiday, and whether it is an off day or not

## Example
```cr
require "./jie_jiari_api"

jie_jiari_api = JieJiariApi.new
is_holiday = jie_jiari_api.check_is_holiday()
puts is_holiday
```
