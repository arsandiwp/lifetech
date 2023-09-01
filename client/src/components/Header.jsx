import React from "react";
import { Container, Nav, Navbar, Button } from "react-bootstrap";
import Logo from "../assets/img/lifetech.png";
import { Link } from "react-router-dom";

function Header() {
  return (
    <Navbar expand="lg" className="bg-body-secondary">
      <Container>
        <Navbar.Brand href="#home">
          <img
            alt=""
            src={Logo}
            width="100"
            height="40"
            className="d-inline-block align-top"
          />
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="ms-auto gap-3">
            <Link to="/adduser">
              <Button type="submit" variant="success" className="px-5">
                Add User
              </Button>
            </Link>
            <Link to="http://localhost:5000/export-excel">
              <Button
                type="submit"
                variant="success"
                className="px-5"
              >
                Export Excel
              </Button>
            </Link>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default Header;
