const router = require('express').Router();
const sequelize = require('../../config/connection');

console.log('Executing routes/api/generationRoutes.js');

const { Generation } = require('../../models');

console.log('Generation model imported successfully');

router.get('/', async (req, res) => {
    try {
        console.log('Before findAll');
        const [results] = await sequelize.query('SELECT * FROM generation');
        res.status(200).json(results);
    } catch (error) {
        console.log('Clicked')
        console.log(error);
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error '});
    }
});

module.exports = router;