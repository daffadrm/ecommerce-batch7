import {Router} from 'express';
import provinceCtrl from '../controllers/province.controller';
import apiProvCity from '../controllers/apiProvinceCity';

const router = Router();

router.get('/', provinceCtrl.readProvinceMethod);
router.get('/:provId',provinceCtrl.findProvinceMethod);
router.post('/',provinceCtrl.addProvinceMethod);
router.put('/:provId',provinceCtrl.editProvinceMethod);
router.delete('/:provId',provinceCtrl.deleteProvinceMethod);
router.post('/addProvCity', apiProvCity.createProvinceCity, provinceCtrl.readProvinceMethod)

export default router;

