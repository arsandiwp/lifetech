const express = require("express");
const router = express.Router();

const {
  addUser,
  findAllUsers,
  getUser,
  updateUser,
  deleteUser,
} = require("../controllers/user");

router.post("/user", addUser);
router.get("/users", findAllUsers);
router.get("/user/:id", getUser);
router.patch("/user/:id", updateUser);
router.delete("/user/:id", deleteUser);

module.exports = router;