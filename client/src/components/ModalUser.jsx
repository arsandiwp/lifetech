import React from "react";
import { Modal, Card, ListGroup } from "react-bootstrap";
import { useQuery } from "react-query";
import { API } from "../config/api";
import Profile from "../assets/img/profile.jpg";

function ModalUser({ show, showUser, id }) {
  const handleClose = () => showUser(false);

  let { data: user } = useQuery(["getUser", id], async () => {
    const response = await API.get(`/user/${id}`);
    return response.data.data;
  });

  return (
    <Modal show={show} onHide={handleClose} size="md">
      <Modal.Body>
        <Card>
          <Card.Img src={Profile} variant="top" />
          <Card.Body>
            <Card.Title>Biodata</Card.Title>
            <Card.Text>
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </Card.Text>
          </Card.Body>
          <ListGroup className="list-group-flush">
            <ListGroup.Item>{user?.name}</ListGroup.Item>
            <ListGroup.Item>{user?.email}</ListGroup.Item>
            <ListGroup.Item>{user?.gender}</ListGroup.Item>
          </ListGroup>
        </Card>
      </Modal.Body>
    </Modal>
  );
}

export default ModalUser;
