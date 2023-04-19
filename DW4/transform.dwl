%dw 2.0
output application/json
---
((payload reduce ((key, val={}) -> val ++ key)) filterObject $ != "") distinctBy $