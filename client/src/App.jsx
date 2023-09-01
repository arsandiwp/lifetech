import { Route, Routes } from "react-router-dom";
import AddUser from "./components/AddUser";
import DataUser from "./components/DataUser";
import Header from "./components/Header";

function App() {
  return (
    <>
      <Header />
      <Routes>
        <Route path="/" element={<DataUser />} />
        <Route path="/adduser" element={<AddUser />} />
      </Routes>
    </>
  );
}

export default App;
