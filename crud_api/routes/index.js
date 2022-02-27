var express = require('express');
var router = express.Router();

const sequelize = require('../models/index.js').sequelize;
var initModels = require("../models/init-models");
var models = initModels(sequelize);

/* GET clientes. */
router.get('/comics', (req, res, next) => {
   models.comics.findAll({
   
   })
      .then(comics => {
         res.send(comics)
      })
      .catch(error => res.status(400).send(error))
});

router.get('/comics/:id', (req, res) => {
  models.comics.findAll({
    where: { 
      id: req.params.id 
      }, 
    
  }).then(
    comics => {
      res.send(comics)
    }
  ).catch(error => res.status(400).send(error))
});



/* POST comics */
router.post('/comics', (req, res, next) => {
   models.comics.create(
      req.body
   )
      .then(comics => {
         res.redirect("http://localhost:3000")
      })
      .catch(error => res.status(400).send(error))
});

/* PUT comics */
router.put('/comics/:id', (req, res, next) => {
   models.comics.update(
      req.body, {
      where: {
         id: req.params.id
      }
   }
   )
      .then(comics => {
         res.redirect("http://localhost:3000")
      })
});

/* DELETE comics */
router.delete('/comics/:id', (req, res, next) => {
   models.comics.destroy(
      {
         where: {
            id: req.params.id
         }
      }
   )
   .then(comics => {
      res.send({msg : "Se eliminó con éxito"})
   })
});


module.exports = router;
