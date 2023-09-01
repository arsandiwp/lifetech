const express = require("express");
const router = require("./src/routes");

const xlsx = require("xlsx");
const connection = require("./src/database/exportConnection")

const app = express();
const port = 5000;
const cors = require("cors");

app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use("/api/v1", router);

// Export Excel
app.get("/export-excel", (req, res) => {
  const query = "SELECT * FROM users";

  connection.query(query, (err, results) => {
    if (err) {
      console.error(err);
      return res.status(500).send("Internal Server Error");
    }

    const data = results.map((user) => ({
      id: user.id,
      name: user.name,
      email: user.email,
      gender: user.gender,
    }));

    const workbook = xlsx.utils.book_new();
    const worksheet = xlsx.utils.json_to_sheet(data);

    const columns = [{ width: 5 }, { width: 20 }, { width: 35 }, { width: 15 }];
    worksheet["!cols"] = columns;
    xlsx.utils.book_append_sheet(workbook, worksheet, "Users");

    const excelBuffer = xlsx.write(workbook, {
      bookType: "xlsx",
      type: "buffer",
    });

    const blob = new Blob([excelBuffer], {
      type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
    });

    const fileName = "users.xlsx";
    res.setHeader("Content-Disposition", `attachment; filename=${fileName}`);
    res.write(excelBuffer);
    res.end();
  });
});

app.listen(port, () => {
  console.log(`Server Running on port ${port}`);
});
