const createUserItems = async (req,res,next) =>{
    const {user_id,user_name,user_email,user_password,carts} = req.body;
    let userId=req.body.user_id;

    if (user_id === null || user_id === undefined){

        userId = await req.context.models.users.create({
           user_name:user_name,
           user_email:user_email,
           user_password:user_password,
       }).catch((error)=>{
           return res.send(JSON.stringify({
               name : error.name,
               message : error.message
           }))
       });
       // insert into cart (cart_total,cart...)values(cart_total);
   }
   if (userId.user_id !== null){
    carts.map(async (el)=>{
        await req.context.models.cart.create({
            cart_total:null,
            cart_created_on:Date.now(),
            cart_is_closed:el.cart_is_closed,
            cart_user_id:el.cart_user_id
        });
    });
}
next();
}

export default{
    createUserItems
}