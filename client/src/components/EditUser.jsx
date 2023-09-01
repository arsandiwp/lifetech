import React from "react";
import { Container, Form, Button } from "react-bootstrap";

function EditUser() {
  return (
    <Container>
      <h1 className="text-center my-3">EDIT USER</h1>
      <Form>
        <Form.Group className="mb-3" controlId="formGroupName">
          <Form.Label>Name</Form.Label>
          <Form.Control type="text" placeholder="Username" />
        </Form.Group>
        <Form.Group className="mb-3" controlId="formGroupEmail">
          <Form.Label>Email</Form.Label>
          <Form.Control type="email" placeholder="Email" />
        </Form.Group>
        <Form.Group className="mb-5" controlId="formGroupGender">
          <Form.Label>Gender</Form.Label>
          <Form.Select aria-label="Gender">
            <option hidden>Select Gender</option>
            <option value="1">Male</option>
            <option value="2">Female</option>
          </Form.Select>
        </Form.Group>
        <Button className="w-100" variant="primary" type="submit">
          Save
        </Button>
      </Form>
    </Container>
  );
}

export default EditUser;
