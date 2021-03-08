import React from "react";
// import "./prof.scss";
import axios from "axios";
import { Icon, TextArea } from "semantic-ui-react";
import {
  Button,
  Checkbox,
  Form,
  Grid,
  Message,
  Segment,
  Label,
  Input,
  Header,
} from "semantic-ui-react";
import DashBoardNavbar from "./components/layout/DashBoardNavbar";
import Logo from "./components/layout/partials/Logo";
class UserProfile extends React.Component {
  state = {
    parentuser: "",
    bio: "",
    datad: [],
  };

  handleChange = (e) => {
    this.setState({
      [e.target.id]: e.target.value,
    });
  };

  componentDidMount() {
    axios("https://3choices.in/profile/profile/")
      .then((res) => {
        this.setState({
          datad: res.data.filter(
            ({ parent_user }) =>
              parent_user === localStorage.getItem("username")
          ),
        });
      })
      .catch((err) => {
        this.setState({ error: err });
      });
  }

  handleSubmit = (e) => {
    e.preventDefault();

    let form_data = new FormData();
    form_data.append("parent_user", localStorage.getItem("username"));
    form_data.append("bio", this.state.bio);

    let url = "https://3choices.in/profile/profile/";
    axios
      .put(url + localStorage.getItem("df") + "/", form_data, {
        headers: {
          "content-type": "multipart/form-data",
        },
      })
      .then((res) => {
        window.location.assign(`/main/products/${localStorage.getItem("df")}`);
      });
  };

  render() {
    const { datad } = this.state;
    datad.map((c) => {
      localStorage.setItem("df", c.id);
    });

    return (
      <>
        <Logo />
        <br></br>
        <br></br>
        <br></br>
        <br></br>

        <Grid
          textAlign="center"
          style={{ height: "auto" }}
          verticalAlign="middle"
        >
          <Grid.Column style={{ maxWidth: 450 }}>
            <Header as="h2" color="violet" textAlign="center">
              <h1>Edit Your Details</h1>
            </Header>
            <React.Fragment>
              <Segment
                stacked
                style={{
                  backgroundColor: "#151719",
                }}
              >
                <Form onSubmit={this.handleSubmit}>
                  <Label color="violet" for="bio">
                    Bio
                  </Label>
                  <br />

                  <Form.Field
                    style={{ marginTop: "8px" }}
                    id="bio"
                    control={TextArea}
                    onChange={this.handleChange}
                    placeholder="Bio"
                    value={this.state.bio}
                  />

                  <Button color="violet" type="submit">
                    Submit
                  </Button>
                </Form>
              </Segment>
            </React.Fragment>
          </Grid.Column>
        </Grid>
      </>
    );
  }
}

export default UserProfile;
