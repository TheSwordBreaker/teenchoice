import React from "react";
import PhoneInput from "react-phone-number-input";
import {
  Button,
  Form,
  Grid,
  Header,
  Message,
  Segment,
  Label,
  Dropdown,
} from "semantic-ui-react";
import { connect } from "react-redux";
import { NavLink, Redirect } from "react-router-dom";
import "react-phone-number-input/style.css";
import { authSignup } from "../store/actions/otp";
import firebase from "./firebase";
// "firebase": "^7.21.1",
import Logo from "../components/layout/partials/Logo";
import axios from "axios";

import Swal from "sweetalert2";
import withReactContent from "sweetalert2-react-content";

const MySwal = withReactContent(Swal);

class RegistrationForm extends React.Component {
  state = {
    username: "",
    Phone_Number: "",
    password: "",
    password2: "",
    formError: {},
  };

  handleSubmit = async (e) => {
    const { username, Phone_Number, password, password2 } = this.state;
    let errors = {};

    if (!this.state.username) {
      errors.username = "Username Cannot be blank";
    } else if (this.state.username.length < 3) {
      errors.username = "Username Required At least 3 characters";
    } else if (this.state.username.length > 30) {
      errors.username = "Username Required At Most 30 characters";
    }

    if (!this.state.Phone_Number) {
      errors.Phone_Number = "Phone Number is Required";
    }

    if (!this.state.password) {
      errors.password = "Password is required";
    } else if (this.state.password.length < 8) {
      errors.password = "Password must be more than 8 characters";
    } else if (this.state.password.length > 50) {
      errors.password = "Password must be less than 50 characters";
    }

    if (!this.state.password2) {
      errors.password2 = "Confirm Password is required";
    } else if (this.state.password !== this.state.password2) {
      errors.password2 = "Confirm Password is not same as password";
    }

    this.setState({ ...this.state, formError: errors });
    var recaptcha = await new firebase.auth.RecaptchaVerifier(
      "SubmitPhoneNumber",
      { size: "invisible" }
    );
    // const { username, email, password, password2 } = this.state;
    if (Object.keys(errors).length === 0) {
      console.log(errors);

      this.props.signup(username, Phone_Number, password, password2);
      console.log(localStorage.getItem("token"));
      if (localStorage.getItem("token") != null) {
        document.querySelector("h4").textContent = "Wait....";

        var number = this.state.Phone_Number;

        //   window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier(
        //     "sign-in-button",
        //     {
        //       size: "invisible",
        //       callback: (response) => {
        //         // reCAPTCHA solved, allow signInWithPhoneNumber.
        //         onSignInSubmit();
        //       },
        //     }
        //   );

        firebase
          .auth()
          .signInWithPhoneNumber(number, recaptcha)
          .then(async function(e) {
            const { value: code } = await MySwal.fire({
              title: "Enter your Otp",
              input: "text",
              inputLabel: "Your Otp",
              allowOutsideClick: false,
              showCancelButton: true,
              inputValidator: (value) => {
                if (!value) {
                  return "You need to enter Otp";
                }
              },
            });

            if (code === null) return;

            e.confirm(code)
              .then(function(result) {
                localStorage.setItem("status", "okay");

                document.querySelector("label").textContent +=
                  result.user.phoneNumber + "Number verified";
                window.location.reload();
              })
              .catch(function(error) {
                console.error(error);
              });
          })
          .catch(function(error) {
            console.error(error);
          });
      }
    }
  };

  handleChange = (e) => {
    this.setState({ [e.target.name]: e.target.value });
  };

  render() {
    const {
      username,
      Phone_Number,
      password,
      password2,
      formError,
      isload,
    } = this.state;
    const { error, loading, token } = this.props;
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
      localStorage.setItem("dx", "ass");
      return <Redirect to="/prof" />;
    }

    localStorage.setItem("token", "1223");
    return (
      <div
        style={{
          h2: {
            left: "0",
            marginBottom: "0px",
          },
          h5: {
            marginBottom: "0px",
          },
        }}
      >
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
            {token ? (
              <h5 style={{ Color: "green", marginBottom: "0px" }}>
                Welcome! Enter OTP{" "}
                <span>
                  <h5 style={{ Color: "red" }}>
                    if OTP not received click regenrate button below
                  </h5>
                </span>
              </h5>
            ) : error ? (
              <h5 style={{ marginTop: "0px", marginBottom: "0px" }}>{error}</h5>
            ) : (
              <h5 style={{ marginTop: "0px", marginBottom: "0px" }}>
                After Signing Up Check Your Inbox for Verification
              </h5>
            )}
            <Form size="large" onSubmit={this.handleSubmit}>
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
                <div style={{ margin: "0 0 1em" }}>
                  <PhoneInput
                    // country="US"
                    onChange={(e) => this.setState({ Phone_Number: e })}
                    value={Phone_Number}
                    name="Phone_Number"
                    placeholder="phone Number"
                    international
                    // international={true}
                    // country="IN"
                    defaultCountry="IN"
                    withCountryCallingCode
                  />

                  {/* <Form.Input
                    onChange={this.handleChange}
                    value={Phone_Number}
                    name="Phone_Number"
                    fluid
                    icon="phone"
                    iconPosition="left"
                    placeholder="phone-number"
                    type="number"
                  /> */}
                </div>
                {formError.Phone_Number && (
                  <span className="error"> {formError.Phone_Number} </span>
                )}
                <Form.Input
                  onChange={this.handleChange}
                  fluid
                  value={password}
                  name="password"
                  icon="lock"
                  iconPosition="left"
                  placeholder="Password"
                  type="password"
                />
                {formError.password && (
                  <span className="error"> {formError.password} </span>
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
                <div id="recaptcha"></div>
                <Button
                  style={{
                    backgroundColor: "#6163ff",
                    color: "white",
                    textAlign: "center",
                  }}
                  fluid
                  id="SubmitPhoneNumber"
                  loading={loading}
                >
                  SignUp
                </Button>
              </Segment>
            </Form>
            <Message>
              Already have an account?{" "}
              <NavLink to="/login2" style={{ color: "#6163ff" }}>
                Login
              </NavLink>
            </Message>
            <Message>
              If Otp not Recieved click?{" "}
              <Button onClick={this.otps}>generate OTP</Button>
            </Message>
          </Grid.Column>
        </Grid>
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    error: state.auth.error,
    token: state.auth.token,
    loading: state.auth.loading,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    signup: (username, Phone_Number, password, password2) =>
      dispatch(authSignup(username, Phone_Number, password, password2)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(RegistrationForm);
