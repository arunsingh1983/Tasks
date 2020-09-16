//Function to fetch value
function fetchValue(object, key) {
    const actualKeys = key.split('/');
    let actualObj = object;
    for (let k of actualKeys) {
        for (let [objkey, val] of Object.entries(actualObj)) {
            if(!actualKeys.includes(objkey)) {
                continue;
            }
            actualObj = val;
        }
    }
    return actualObj;
}

let obj = {"x":{"y":{"z":"a"}}};
console.log(fetchValue(obj, 'x/y/z'));

// let obj = {"a":{"b":{"c":"d"}}};
// console.log(fetchValue(obj, 'a/b/c'));