export class ApiFeature {
    constructor(mongooseQuery, queryData) {
        this.mongooseQuery = mongooseQuery
        this.queryData = queryData
    }
    pagination() {
    let {page , size} = this.queryData
        page = parseInt(page)  
        size = parseInt(size) 
        if (page <= 0) page = 1
        if (size <= 0) size = 2
        const skip = (page - 1) * size
        this.mongooseQuery.limit(size).skip(skip)
        return this
    }

    sort(){
        this.mongooseQuery.sort(this.queryData.sort?.replaceAll(',' , " "))
        return this
    }

    select(){
        this.mongooseQuery.select(this.queryData.select?.replaceAll(',' , " "))
        return this
    }

    filter() {
        let { page, size, sort, select, ...filter } = this.queryData;
        // Convert filter values for specific keys to be case-insensitive
        Object.keys(filter).forEach(key => {
            if (key === 'name' && typeof filter[key] === 'string') {
                filter[key] = { $regex: filter[key], $options: 'i' };  // Directly use the string with $regex and $options for case-insensitivity
            }
        });
        // Replace get, gte, lt, lte with $get, $gte, $lt, $lte in filter keys
        filter = JSON.parse(JSON.stringify(filter).replace(/get|gte|lt|lte/g, match => `$${match}`));
        this.mongooseQuery.find(filter);
        return this;
    }
}
