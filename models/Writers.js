const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Writers extends Model {}

Writers.init(
    {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        writer_first_name: {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        writer_last_name: {
            type: DataTypes.STRING(50),
            allowNull: false
        }
    },
    {
        sequelize,
        timestamps: false,
        freezeTableName: true,
        underscored: true,
        modelName: 'writers'
    }
);

module.exports = Writers;