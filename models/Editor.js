const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Editor extends Model {}

Editor.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        editor_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        editor_last_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        }
    },
    {
        sequelize,
        timestamps: false,
        freezeTableName: true,
        underscored: true, 
        modelName: 'editor'
    }
);


module.exports = Editor;