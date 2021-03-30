import { Router } from 'express';
import { sequelize, Op } from '../models/index';

const readCategoryMethod = async (req, res) => {
    const category = await req.context.models.category.findAll(
        
    );
    return res.send(category);
}

//filter pencarian data
const findCategoryMethod = async (req, res) => {
    const category = await req.context.models.category.findByPk(
        req.params.categoryId,
    );
    return res.send(category);
};

const addCategoryMethod = async (req, res) => {
    const { cate_name } = req.body.data;
    console.log('wait')
    const category = await req.context.models.category.create({
        cate_name: cate_name
    });
    return res.send(category);
};

const editCategoryMethod = async (req, res) => {
    const { cate_name } = req.body.data;
    const category = await req.context.models.category.update({
        cate_name: cate_name
    }, 
    {returning:true,
        where: { cate_id: req.params.categoryId }
    });
    return res.send(true);
};


//hapus data
const deleteCategoryMethod = async (req, res) => {
    const result = await req.context.models.category.destroy({
        where: { cate_id: req.params.categoryId },
    });

    return res.send(true);
};

// const createCategory = async (req, res) => {
//     const { cate_id, cate_name } = req.body.data;
//     console.log('wait');
//     const regions = await req.context.models.Category.create({
//       cate_id: cate_id,
//       cate_name: cate_name,
//     });
  
//     return res.send(category);
// }

// const updateCategory = async (req, res) => {
//     const { cate_name } = req.body.data;
//     const category = await req.context.models.Category.update(
//         {cate_name: cate_name},// nama attribute yg akan di update
//         {returning: true,where: { cate_id: req.params.id } });


//       return res.send(true);
// }

// const deleteCategory = async (req, res) => {
//     const {id} = req.params;
//     const result = await req.context.models.Category.destroy({
//         where: { cate_id: id },
//       });
    
//       return res.send(true);
// }


export default {
    readCategoryMethod,
    findCategoryMethod,
    addCategoryMethod,
    deleteCategoryMethod,
    editCategoryMethod,
//     createCategory,
//     deleteCategory,
//     updateCategory
}