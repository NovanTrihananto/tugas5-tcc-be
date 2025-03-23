import { Sequelize } from "sequelize";
// Nyambungin db ke BE
const db = new Sequelize("notes", "root", "", {
 host: "34.60.102.191",
 dialect: "mysql",
});
export default db;