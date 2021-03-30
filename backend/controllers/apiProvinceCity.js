const createProvinceCity = async (req, res, next)=>{
    const{prov_id, prov_name, city} = req.body;
    let provId = null;

    if(prov_id === null || prov_id === undefined){
        provId = await req.context.models.province.create({
            prov_name: prov_name
        });
    }


    if(provId.prov_id !== null){
        city.map(async (el) => {
            await req.context.models.city.create({
                city_id: el.city_id,
                city_name: el.city_name,
                city_prov_id: el.city_prov_id
            });
        });
    }
    next();
}

export default{
    createProvinceCity
}