import {Router} from 'express';
import cateCtrl from '../controllers/category.controller'
// import apiCateProd from '../controllers/apiCategoryProduct'
// import indexCtrl from '../controllers/indexController'

const router = Router()

router.get('/', cateCtrl.readCategoryMethod);
router.get('/:categoryId', cateCtrl.findCategoryMethod);
router.post('/', cateCtrl.addCategoryMethod);
router.delete('/:categoryId', cateCtrl.deleteCategoryMethod);
router.put('/:categoryId', cateCtrl.editCategoryMethod);
// router.post('/addCateProd',apiCateProd.createCategoryProduct,cateCtrl.readCategoryMethod);

// router.get('/', indexCtrl.category.findAll);
// router.post('/', indexCtrl.category.createCategory);
// router.put('/:id', indexCtrl.category.updateCategory);
// router.delete('/:id', indexCtrl.category.deleteCategory);

// router.post ('/bulk', indexCtrl.apiCateProd.createCategoryProduct,indexCtrl.category.findAll)
// router.post ('/transaction', indexCtrl.apiCateProd.createCategoryTransaction,indexCtrl.category.findAll)

// router.get('/search/:cateName', indexCtrl.category.filterCategoryByName);
export default router;