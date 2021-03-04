import React from "react";
import {
  Button,
  Form,
  Grid,
  Header,
  Message,
  Segment,
} from "semantic-ui-react";
import { connect } from "react-redux";
import { NavLink, Redirect } from "react-router-dom";
import { authSignup } from "../store/actions/auth";
import Logo from "../components/layout/partials/Logo";
import axios from "axios";

class RegistrationForm extends React.Component {
  state = {
    username: "",
    email: "",
    password1: "",
    password2: "",
    formError: {},
  };

  handleSubmit = (e) => {
    e.preventDefault();
    this.Validite();
  };
  Validite = () => {
    let errors = {};

    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/i;

    if (!this.state.username) {
      errors.username = "Username Cannot be blank";
    } else if (this.state.username.length < 3) {
      errors.username = "Username Required At least 3 characters";
    } else if (this.state.username.length > 30) {
      errors.username = "Username Required At Most 30 characters";
    }

    if (!this.state.email) {
      errors.email = "Email Cannot be blank";
    } else if (!regex.test(this.state.email)) {
      errors.email = "Invalid email format";
    }

    if (!this.state.password1) {
      errors.password1 = "Password is required";
    } else if (this.state.password1.length < 8) {
      errors.password1 = "Password must be more than 8 characters";
    } else if (this.state.password1.length > 50) {
      errors.password1 = "Password must be less than 50 characters";
    }

    if (!this.state.password2) {
      errors.password2 = "Confirm Password is required";
    } else if (this.state.password1 !== this.state.password2) {
      errors.password2 = "Confirm Password is not same as password";
    }

    this.setState({ ...this.state, formError: errors });

    const { username, email, password1, password2 } = this.state;
    if (Object.keys(errors).length === 0) {
      console.log(errors);
      this.props.signup(username, email, password1, password2);
    }
  };
  handleChange = (e) => {
    this.setState({ [e.target.name]: e.target.value });
  };

  render() {
    const { username, email, password1, password2, formError } = this.state;
    const { token, error, loading, sd } = this.props;
    if (token && localStorage.getItem("status") != null) {
      let form_data = new FormData();
      form_data.append("username", localStorage.getItem("username"));
      form_data.append("count", 1);

      let url = "https://3choices.in/profile/count/";
      axios
        .post(url, form_data, {
          headers: {
            "content-type": "multipart/form-data",
          },
        })
        .then((res) => {});
      return <Redirect to="/prof" />;
    }

    return (
      <>
        <Logo className="brds" />
        <Grid
          textAlign="center"
          style={{ height: "100vh" }}
          verticalAlign="middle"
        >
          <Grid.Column style={{ maxWidth: 450 }}>
            <Header
              as="h2"
              style={{
                color: "#6163ff",
                position: "relative",
                left: "12px",
                marginBottom: "0px",
              }}
              textAlign="center"
            >
              Signup to your account
            </Header>
            {localStorage.getItem("statd") == "201" ? (
              <h3 style={{ marginTop: "0px", marginBottom: "0px" }}>
                Verification email sent..!
              </h3>
            ) : error ? (
              <h3 style={{ marginTop: "0px", marginBottom: "0px" }}>
                {this.props.error}
              </h3>
            ) : null}

            <React.Fragment>
              <Form
                target="_blank"
                size="large"
                onSubmit={this.handleSubmit}
                action="/login"
              >
                <Segment stacked>
                  <Form.Input
                    onChange={this.handleChange}
                    value={username}
                    name="username"
                    fluid
                    icon="user"
                    iconPosition="left"
                    placeholder="Username"
                  />
                  {formError.username && (
                    <span className="error"> {formError.username} </span>
                  )}

                  <Form.Input
                    onChange={this.handleChange}
                    value={email}
                    name="email"
                    fluid
                    icon="mail"
                    iconPosition="left"
                    placeholder="E-mail address"
                  />

                  {formError.email && (
                    <span className="error"> {formError.email} </span>
                  )}
                  <Form.Input
                    onChange={this.handleChange}
                    fluid
                    value={password1}
                    name="password1"
                    icon="lock"
                    iconPosition="left"
                    placeholder="Password"
                    type="password"
                  />
                  {formError.password1 && (
                    <span className="error"> {formError.password1} </span>
                  )}
                  <Form.Input
                    onChange={this.handleChange}
                    fluid
                    value={password2}
                    name="password2"
                    icon="lock"
                    iconPosition="left"
                    placeholder="Confirm password"
                    type="password"
                  />
                  {formError.password2 && (
                    <div style={{ display: "block", marginBottom: "10px" }}>
                      <span className="error"> {formError.password2} </span>
                    </div>
                  )}
                  <Button
                    style={{ backgroundColor: "#6163ff", color: "white" }}
                    size="large"
                    loading={loading}
                  >
                    Signup
                  </Button>
                </Segment>
              </Form>
              <Message>
                Already have an account?{" "}
                <a href="/login2">
                  <p style={{ color: "#6163ff" }}>Login</p>
                </a>
              </Message>
            </React.Fragment>
          </Grid.Column>
        </Grid>
      </>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    loading: state.auth.loading,
    error: state.auth.error,
    token: state.auth.token,
    sd: state.auth.sd,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    signup: (username, email, password1, password2) =>
      dispatch(authSignup(username, email, password1, password2)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(RegistrationForm);
