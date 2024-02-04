const router = require('express').Router();
const publisherRoutes = require('./publisherRoutes');
const creatorsRoutes = require('./creatorsRoutes');
const charactersRoutes = require('./charactersRoutes');
const writersRoutes = require('./writersRoutes');
const artistsRoutes = require('./artistsRoutes');
const color_artistsRoutes = require('./color_artistsRoutes');
const cover_artistsRoutes = require('./cover_artistsRoutes');
const pencilersRoutes = require('/pencilersRoutes');
const inkerRoutes = require('./inkerRoutes');
const lettererRoutes = require('./lettererRoutes');
const designRoutes = require('./designRoutes');
const editorRoutes = require('./editorRoutes');
const editor_in_chiefRoutes = require('./editor_in_chiefRoutes');
const generationRoutes = require('./generationRoutes');
const comic_bookRoutes = require('./comic_bookRoutes');

//

router.use('/publishers', publisherRoutes);
router.use('/creators', creatorsRoutes);
router.use('/characters', charactersRoutes);
router.use('/writers', writersRoutes);
router.use('/artists', artistsRoutes);
router.use('/color_artists', color_artistsRoutes);
router.use('/cover_artists', cover_artistsRoutes);
router.use('/pencilers', pencilersRoutes);
router.use('/inkers', inkerRoutes );
router.use('/letterers', lettererRoutes);
router.use('/designs', designRoutes);
router.use('/editors', editorRoutes);
router.use('/editor_in_chiefs', editor_in_chiefRoutes);
router.use('/generations', generationRoutes);
router.use('/comic_books', comic_bookRoutes);

module.exports = router;