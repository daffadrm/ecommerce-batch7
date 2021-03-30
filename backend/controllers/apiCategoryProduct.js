const createCategoryProduct = async (req,res,next) => {
    const {cate_id, cate_name, product} = req.body;
    let cateId=null;

    if (cate_id === null || cate_id === undefined){
        cateId = await req.context.models.category.create({
            cate_name : cate_name
        });
    } //if

    if(cateId.cate_id !== null){
        product.map(async (el) => {
            await req.context.models.product.create(
                {
                    prod_id: el.prod_id,
                    prod_title: el.prod_title,
                    prod_description: el.prod_description,
                    prod_stock: el.prod_stock,
                    prod_price: el.prod_price,
                    prod_manufacture: el.prod_manufacture,
                    prod_image: el.prod_image,
                    prod_cate_id: cateId.cate_id
                  }
            );
        }); //map
    } //if2

    next();
} //fungsi create
const categoryTransaction = async (req, res, next) => {
    const t = await sequelize.transaction();
    const { cate_id, cate_name, product } = req.body;
    let category = null; 
    try {

        //1. check apakah region_id null atau undefineed, jika null,
        // then create region nya
        if (cate_id === null || cate_id === undefined) {
            // jika null, maka insert dulu data regions

            regions = await req.context.models.Category.create({
                cate_id: cate_id,
                cate_name: cate_name,
            },{ transaction: t }).catch((error) => {
                return res.send(JSON.stringify({
                    name: error.name,
                    message: error.message
                }));
            });
        }
    
     // get region_id di object regions (result pada saat insert)
     const cate_id = category.cate_id;

     if (cate_id !== null || cate_id !== undefined) {
         // gunakan map agar bisa diperlakukan secara asyn dan paralel exec
         product.map(async (el) => {
             await req.context.models.Product.create({
                 prod_id: el.prod_id,
                 prod_name: el.prod_name,
                 cate_id: cate_id
             },{ transaction: t }).catch((error) => {
                 console.log(error.message);
             });;
         });
     }

     await t.commit();
     next();

} catch (error) {
   await t.rollback();
}

}

export default{
    createCategoryProduct
}