export const flattenObj = (obj: any, exceptionList: any[] = [], parent?: any, res: any = {}) => {
    for (var key in obj) {
        var propName = parent ? parent + '.' + key : key;
        if (typeof obj[key] == 'object' && !exceptionList.includes(key)) {
            flattenObj(obj[key], exceptionList, propName, res);
        } else {
            res[propName] = obj[key];
        }
    }
    return res;
};
