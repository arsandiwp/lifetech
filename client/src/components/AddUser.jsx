import { React, useState } from "react";
import { Container, Form, Button } from "react-bootstrap";
import { API } from "../config/api";
import { useMutation } from "react-query";
import { useNavigate } from "react-router-dom";

function AddUser() {
  let navigate = useNavigate()
  const [form, setForm] = useState({
    name: "",
    email: "",
    gender: "",
  });

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
      formData.set("name", form.name);
      formData.set("email", form.email);
      formData.set("gender", form.gender);

      const response = await API.post("/user", formData, config);
      console.log("Add User Success: ", response);

      setForm({
        name: "",
        email: "",
        gender: "",
      });

      navigate("/")
    } catch (error) {
      console.log("Error Add User", error);
    }
  });

  return (
    <Container>
      <h1 className="text-center my-3">ADD USER</h1>
      <Form onSubmit={(e) => handleSubmit.mutate(e)}>
        <Form.Group className="mb-3" controlId="formGroupName">
          <Form.Label>Name</Form.Label>
          <Form.Control
            type="text"
            name="name"
            onChange={handleChange}
            value={form.name}
            placeholder="Username"
          />
        </Form.Group>
        <Form.Group className="mb-3" controlId="formGroupEmail">
          <Form.Label>Email</Form.Label>
          <Form.Control
            type="email"
            name="email"
            onChange={handleChange}
            value={form.email}
            placeholder="Email"
          />
        </Form.Group>
        <Form.Group className="mb-5" controlId="formGroupGender">
          <Form.Label>Gender</Form.Label>
          <Form.Select
            aria-label="Gender"
            name="gender"
            onChange={handleChange}
            value={form.gender}
          >
            <option hidden>Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
          </Form.Select>
        </Form.Group>
        <Button className="w-100" variant="primary" type="submit">
          Add User
        </Button>
      </Form>
    </Container>
  );
}

export default AddUser;
