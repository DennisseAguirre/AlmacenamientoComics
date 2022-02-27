var DataTypes = require("sequelize").DataTypes;
var _comics = require("./comics");


function initModels(sequelize) {
  var comics = _comics(sequelize, DataTypes);
  
  return {
    comics,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
