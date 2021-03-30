let items = [
    {
        "prod_id": 1,
        "qty": 3,
        "price": 3000
    },
    {
        "prod_id": 2,
        "qty": 2,
        "price": 2000
    },
    {
        "prod_id": 3,
        "qty": 3,
        "price": 3000
    },
    {
        "prod_id": 4,
        "qty": 4,
        "price": 4000
    }]

const total = items.reduce((x,y)=>{
    console.log(x);
    console.log(x.qty)
    console.log(y.qty)
})