import React, { useEffect, useState } from "react";
import Edit from "../assets/img/edit.png";
import Search from "../assets/img/search.png";
import Trash from "../assets/img/trash.png";
import {
  Container,
  Form,
  Button,
  Row,
  Col,
  Pagination,
  Table,
} from "react-bootstrap";
import { useMutation, useQuery } from "react-query";
import { API } from "../config/api";
import ModalDelete from "./ModalDelete";
import ModalUser from "./ModalUser";
import ModalEditUser from "./ModalEditUser";

function DataUser() {
  const { data: users, refetch } = useQuery("userCache", async () => {
    const response = await API.get("/users");
    return response.data.data;
  });

  const [showEdit, setShowEdit] = useState(false);
  const [showUser, setShowUser] = useState(false);
  const [idUser, setIdUser] = useState(null);

  const [idDelete, setIdDelete] = useState(null);
  const [confirmDelete, setConfirmDelete] = useState(false);
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  const [searchQuery, setSearchQuery] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const itemsPerPage = 10;

  const filteredUsers = users?.filter((user) =>
    user.name.toLowerCase().includes(searchQuery.toLowerCase())
  );

  const indexOfLastItem = currentPage * itemsPerPage;
  const indexOfFirstItem = indexOfLastItem - itemsPerPage;
  const currentUsers = filteredUsers?.slice(indexOfFirstItem, indexOfLastItem);

  const handleSearch = (e) => {
    e.preventDefault();
    setCurrentPage(1);
  };

  const handlePageChange = (pageNumber) => {
    setCurrentPage(pageNumber);
  };

  const handleDelete = (id) => {
    setIdDelete(id);
    handleShow();
  };

  const deleteById = useMutation(async (id) => {
    try {
      await API.delete(`/user/${id}`);
      refetch();
    } catch (error) {
      console.log(error);
    }
  });

  useEffect(() => {
    if (confirmDelete) {
      handleClose();
      deleteById.mutate(idDelete);
      setConfirmDelete(false);
    }
  }, [confirmDelete]);

  return (
    <Container>
      <Form className="mt-5" onSubmit={handleSearch}>
        <Row>
          <Col>
            <Form.Group className="mb-3" controlId="formGroupSearch">
              <Form.Control
                type="text"
                placeholder="Find something here..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
              />
            </Form.Group>
          </Col>
        </Row>
      </Form>
      <Table striped bordered hover>
        <thead>
          <tr className="text-center">
            <th>No</th>
            <th>Name</th>
            <th>Email</th>
            <th>Gender</th>
            <th colSpan={3}>Action</th>
          </tr>
        </thead>
        <tbody>
          {currentUsers?.map((data, index) => (
            <tr key={index}>
              <td>{index + 1}</td>
              <td>{data.name}</td>
              <td>{data.email}</td>
              <td>{data.gender}</td>
              <td>
                <img
                  src={Search}
                  alt="search"
                  style={{ cursor: "pointer" }}
                  onClick={() => {
                    setShowUser(true);
                    setIdUser(data.id);
                  }}
                />
              </td>
              <td>
                <img
                  src={Edit}
                  alt="edit"
                  style={{ cursor: "pointer" }}
                  onClick={() => {
                    setShowEdit(true);
                    setIdUser(data.id);
                  }}
                />
              </td>
              <td>
                <img
                  src={Trash}
                  alt="trash"
                  style={{ cursor: "pointer" }}
                  onClick={() => handleDelete(data.id)}
                />
              </td>
            </tr>
          ))}
        </tbody>
      </Table>

      <div className="d-flex justify-content-center mt-4">
        <Pagination>
          {Array.from({
            length: Math.ceil(filteredUsers?.length / itemsPerPage),
          }).map((_, index) => (
            <Pagination.Item
              key={index}
              active={index + 1 === currentPage}
              onClick={() => handlePageChange(index + 1)}
            >
              {index + 1}
            </Pagination.Item>
          ))}
        </Pagination>
      </div>

      <Pagination
        activePage={currentPage}
        itemsPerPage={itemsPerPage}
        totalItems={filteredUsers?.length}
        onPageChange={handlePageChange}
        onSelect={handlePageChange}
      />

      <ModalDelete
        setConfirmDelete={setConfirmDelete}
        show={show}
        handleClose={handleClose}
      />

      <ModalEditUser id={idUser} show={showEdit} showEdit={setShowEdit} />

      <ModalUser id={idUser} show={showUser} showUser={setShowUser} />
    </Container>
  );
}

export default DataUser;
