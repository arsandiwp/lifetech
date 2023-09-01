import React, { useEffect, useState } from "react";
import { Modal, Form, Button } from "react-bootstrap";
import { API } from "../config/api";
import { useMutation, useQueryClient } from "react-query";

function ModalEditUser({ show, showEdit, id }) {
  const queryClient = useQueryClient();
  const handleClose = () => showEdit(false);
  const [form, setForm] = useState({});

  async function getUpdateUser() {
    const user = await API.get(`/user/${id}`);

    setForm({
      ...form,
      name: user?.data?.data?.name,
      email: user?.data?.data?.email,
      gender: user?.data?.data?.gender,
    });
  }

  useEffect(() => {
    getUpdateUser();
  }, [show]);

  const handleChange = (e) => {
    setForm({
      ...form,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = useMutation(async (e) => {
    try {
      e.preventDefault();

      const config = {
        headers: {
          "Content-type": "application/json",
        },
      };

      const formData = new FormData();
      formData.append("name", form.name);
      formData.append("email", form.email);
      formData.append("gender", form.gender);

      const response = await API.patch(`/user/${id}`, formData, config);
      console.log("update masuk", response);

      queryClient.invalidateQueries();
    } catch (error) {
      console.log(error);
    }
  });

  return (
    <Modal show={show} onHide={handleClose}>
      <Modal.Body>
        <Form onSubmit={(e) => handleSubmit.mutate(e)}>
          <Form.Group className="mb-3" controlId="formGroupName">
            <Form.Label>Name</Form.Label>
            <Form.Control
              type="text"
              name="name"
              onChange={handleChange}
              value={form?.name || ""}
              placeholder="Username"
            />
          </Form.Group>
          <Form.Group className="mb-3" controlId="formGroupEmail">
            <Form.Label>Email</Form.Label>
            <Form.Control
              type="email"
              name="email"
              onChange={handleChange}
              value={form?.email || ""}
              placeholder="Email"
            />
          </Form.Group>
          <Form.Group className="mb-5" controlId="formGroupGender">
            <Form.Label>Gender</Form.Label>
            <Form.Select
              aria-label="Gender"
              name="gender"
              onChange={handleChange}
              value={form?.gender || ""}
            >
              <option hidden>Select Gender</option>
              <option value="Male">Male</option>
              <option value="Female">Female</option>
            </Form.Select>
          </Form.Group>
          <Button className="w-100" variant="primary" type="submit">
            Save
          </Button>
        </Form>
      </Modal.Body>
    </Modal>
  );
}

export default ModalEditUser;
