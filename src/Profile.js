import React, { Component } from "react";
import Header from "./Header";
import axios from "axios";
import "./App.css";
import TinderCard from "react-tinder-card";
// import {
//   Container,
//   Label,
//   Button,
//   Accordion,
//   Icon,
//   Segment,
//   Dimmer,
//   Loader,
//   Image,
// } from "semantic-ui-react";

import { Link } from "react-router-dom";
import "./App.css";
import { connect } from "react-redux";
import Avatar from "@material-ui/core/Avatar";
import CheckCircleOutlinedIcon from "@material-ui/icons/CheckCircleOutlined";
import CancelOutlinedIcon from "@material-ui/icons/CancelOutlined";
import { withRouter } from "react-router-dom";
import * as messageActions from "./store/actions/message";
import DashBoardNavbar from "./components/layout/DashBoardNavbar";
import Age from "./age";
import { Badge } from "antd";
import { NavLink, Redirect } from "react-router-dom";
import Footer from "./components/layout/Footer";
class Profile extends Component {
  state = {
    error: null,
    data: [],
    lastDirection: [],
    displayPeople: [],
    rawDataOnFriendRequest: [],
    data3: [],
    data4: [],
    data5: [],
    data6: [],
    data9: [],
    data7: [],
    data8: [],
    datax: [],
    datac: [],
    userAge: [],
    chats: [],
    allFriendRequest: [],
    allUsersFriendRequest: [],
    dx: [],
    b: [],
    ids: "",
    pre: "",
    frd: [],
    dal: [],
    da: [],
    count: 0,
    datar: [],
    allRejected: [],
    allRejectedByUser: [],
    notd: [],
    rawDataOnDateRequest: [],
    allUserDateRequest: [],
    allDateRequest: [],
    counts: [],
    loading: false,
    friend: 0,
    date: 0,
    reject: 0,
    load: false,
    show: true,
    sho: true,
    temp: {},
    g: [],
  };

  componentDidMount() {
    localStorage.setItem("DisplayCount", 0);
    this.setState({
      loading: true,
      count: JSON.parse(parseInt(localStorage.getItem("DisplayCount"))),
    });

    const APIKEY = "c2514daffcbd261b8f9940d30fc01d0a";
    axios(
      `https://api.openweathermap.org/data/2.5/weather?q=${localStorage.getItem(
        "location"
      )}&APPID=${APIKEY}`
    ).then((res) => {
      localStorage.setItem("lat1", res.data.coord.lat);
      localStorage.setItem("long1", res.data.coord.lon);
    });

    axios("https://3choices.in/cha/contact/").then((res) => {
      this.setState({
        pre: res.data.filter(
          ({ user }) => user === JSON.parse(localStorage.getItem("UserId"))
        ),
      });
    });

    axios("https://3choices.in/profile/profile/").then((res) => {
      localStorage.setItem(
        "dx",
        JSON.stringify(
          res.data.filter(
            ({ parent_user }) =>
              parent_user === localStorage.getItem("username")
          )
        )
      );
    });
    // GIve All user names
    axios("https://3choices.in/cha/user/").then((res) => {
      this.setState({
        temp: res.data,
        // username - user itself
        User_withRole: res.data.filter(
          ({ username }) => username === localStorage.getItem("username")
        ),

        // friend request
        data4: res.data.filter(
          ({ username }) => username === localStorage.getItem("friend")
        ),

        // date request
        datax: res.data.filter(
          ({ username }) => username === localStorage.getItem("reques")
        ),
        loading: false,
      });
      // data3 - username
      this.state.data3.map((f) => {
        this.setState({ ids: f.id });
        localStorage.setItem("sd", f.id);
      });
    });

    // data - potional caditatied
    axios("https://3choices.in/cha/contact/")
      .then((res) => {
        this.setState({
          //
          data5: res.data.filter(
            ({ user }) => user === JSON.parse(localStorage.getItem("ids2"))
          ),

          // sd  - userid
          // data6 -user
          data6: res.data.filter(
            ({ user }) => user === JSON.parse(localStorage.getItem("UserId"))
          ),

          datac: res.data.filter(
            ({ user }) => user === JSON.parse(localStorage.getItem("idsre"))
          ),
          pre: this.state.data6.length,
          loading: false,
        });
      })
      .catch((err) => {
        this.setState({ error: err, loading: false });
      });

    axios("https://3choices.in/profile/age/")
      .then((res) => {
        this.setState({
          userAge: res.data.filter(
            ({ username }) => username === localStorage.getItem("username")
          ),
          loading: false,
        });
      })
      .catch((err) => {
        this.setState({ error: err, loading: false });
      });
    axios("https://3choices.in/profile/count/")
      .then((res) => {
        this.setState({
          counts: res.data.filter(
            ({ username }) => username === localStorage.getItem("username")
          ),
          loading: false,
        });
      })
      .catch((err) => {
        this.setState({ error: err, loading: false });
      });

    axios("https://3choices.in/profile/friendrequests/")
      .then((res) => {
        this.setState({
          rawDataOnFriendRequest: res.data,
          loading: false,
          allFriendRequest: res.data.filter(
            ({ from_user }) => from_user === localStorage.getItem("username")
          ),
        });
        this.state.allFriendRequest.map((d) => {
          this.state.allUsersFriendRequest.push(d.to_user);
        });
      })
      .catch((err) => {
        this.setState({ error: err, loading: false });
      });

    axios("https://3choices.in/profile/daterequests/")
      .then((res) => {
        this.setState({
          rawDataOnDateRequest: res.data,
          allDateRequest: res.data.filter(
            ({ from_user }) => from_user === localStorage.getItem("username")
          ),
          loading: false,
        });
        this.state.allDateRequest.map((d) => {
          this.state.allUserDateRequest.push(d.to_user);
        });
      })
      .catch((err) => {
        this.setState({ error: err, loading: false });
      });

    axios("https://3choices.in/profile/rejected/")
      .then((res) => {
        this.setState({
          datar: res.data,
          allRejected: res.data.filter(
            ({ from_user }) => from_user === localStorage.getItem("username")
          ),
          loading: false,
        });
        this.state.allRejected.map((d) => {
          this.state.allRejectedByUser.push(d.to_user);
        });
      })
      .catch((err) => {
        this.setState({ error: err, loading: false });
      });

    axios("https://3choices.in/profile/note/").then((res) => {
      this.setState({
        notd: res.data.filter(
          ({ to_user }) => to_user === localStorage.getItem("username")
        ),
        loading: false,
      });
    });

    axios("https://3choices.in/cha/")
      .then((res) => {
        this.setState({
          data9: res.data.filter(
            ({ participants }) =>
              participants[1] === localStorage.getItem("username")
          ),

          data8: res.data.filter(
            ({ participants }) =>
              participants[0] === localStorage.getItem("username")
          ),
          loading: false,
        });

        this.state.data9.map((f) => {
          this.state.frd.push(f.participants[0]);
        });
        this.state.data8.map((f) => {
          this.state.frd.push(f.participants[1]);
        });
      })
      .catch((err) => {
        this.setState({ error: err, loading: false });
      });

    axios
      .get(
        `https://3choices.in/cha/?username=${localStorage.getItem("username")}`
      )
      .then((res) => {
        this.setState({
          chats: res.data,
          loading: false,
        });
      });

    axios("https://3choices.in/profile/profile/")
      .then((res) => {
        console.log(res.data);
        this.setState({
          // dx = data3 = username
          allProfiles: res.data,
          dx: res.data.filter(
            ({ parent_user }) =>
              parent_user === localStorage.getItem("username")
          ),
          data: res.data.filter(
            ({ Age, parent_user, sex }) =>
              parent_user != localStorage.getItem("username") &&
              parent_user != localStorage.getItem("genderKunal") &&
              !this.state.allUsersFriendRequest.includes(parent_user) &&
              !this.state.allUserDateRequest.includes(parent_user) &&
              !this.state.frd.includes(parent_user) &&
              !this.state.allRejectedByUser.includes(parent_user) &&
              sex === localStorage.getItem("intrest")
          ),
          loading: false,
        });
        console.log(this.state);
        if (JSON.parse(parseInt(localStorage.getItem("DisplayCount"))) == 1) {
          this.setState({ displayPeople: this.state.data.slice(0, 2) });
        } else if (this.state.count == 2) {
          this.setState({ displayPeople: this.state.data.slice(0, 1) });
        } else {
          this.setState({ displayPeople: this.state.data.slice(0, 3) });
        }
        console.log(this.state.displayPeople);
      })
      .catch((err) => {
        this.setState({ error: err, loading: false });
      });
  }

  componentDidUpdate() {
    console.log("Count ", this.state.displayPeople.length);
    if (this.state.displayPeople.length == 0) {
      console.log("It need to work");
    }
  }

  askMore = function() {
    this.setState({
      data: this.state.allProfiles.filter(
        ({ Age, parent_user, sex }) =>
          // Age <= localStorage.getItem("ages")
          parent_user != localStorage.getItem("username") &&
          parent_user != localStorage.getItem("genderKunal") &&
          !this.state.allUsersFriendRequest.includes(parent_user) &&
          !this.state.allUserDateRequest.includes(parent_user) &&
          !this.state.frd.includes(parent_user) &&
          !this.state.allRejectedByUser.includes(parent_user) &&
          sex === localStorage.getItem("intrest")
      ),
      loading: false,
    });
    console.log(this.state);
    if (JSON.parse(parseInt(localStorage.getItem("DisplayCount"))) == 1) {
      this.setState({ displayPeople: this.state.data.slice(0, 2) });
    } else if (this.state.count == 2) {
      this.setState({ displayPeople: this.state.data.slice(0, 1) });
    } else {
      this.setState({ displayPeople: this.state.data.slice(0, 3) });
    }
  };

  sendrequest = (name) => {
    if (this.state.lastDirection == "right") {
      if (localStorage.getItem("friend") != "1") {
        if (localStorage.getItem("pre") === 0) {
          let form_dat = new FormData();
          form_dat.append("user", this.state.ids);

          let url2 = "https://3choices.in/cha/contact/";
          axios.post(url2, form_dat);
        }

        let form_data = new FormData();
        form_data.append("from_user", localStorage.getItem("username"));
        form_data.append("to_user", name);

        let url = "https://3choices.in/profile/friendrequests/";
        axios.post(url, form_data).then((res) => {
          localStorage.setItem("friend", 1);

          this.setState({
            pre: 1,
            loading: true,
            allUsersFriendRequest: [...this.state.allUsersFriendRequest, name],
            allFriendRequest: [
              ...this.state.allFriendRequest,
              {
                from_user: localStorage.getItem("username"),
                to_user: name,
              },
            ],
          });
          console.log("I am the length " + this.state.displayPeople.length);
          if (this.state.displayPeople.length === 0) {
            localStorage.removeItem("reject");
            localStorage.removeItem("friend");
            localStorage.removeItem("date");
            localStorage.setItem("DisplayCount", 0);
            console.log("hii");
            console.log("hii");
          }
          if (parseInt(localStorage.getItem("DisplayCount")) == 0)
            return this.askMore();
          // window.location.reload();
        });
      }
    } else if (this.state.lastDirection == "up") {
      // if (localStorage.getItem("date") != "1") {
      if (localStorage.getItem("pre") === 0) {
        let form_dat = new FormData();
        form_dat.append("user", this.state.ids);

        let url2 = "https://3choices.in/cha/contact/";
        axios.post(url2, form_dat);
      }

      let form_data = new FormData();
      form_data.append("from_user", localStorage.getItem("username"));
      form_data.append("to_user", name);

      let url = "https://3choices.in/profile/daterequests/";

      axios.post(url, form_data).then((res) => {
        // localStorage.setItem("date", 1);
        this.setState({
          pre: 1,
          loading: true,
          allUserDateRequest: [...this.state.allUserDateRequest, name],
          allDateRequest: [
            ...this.state.allDateRequest,
            {
              from_user: localStorage.getItem("username"),
              to_user: name,
            },
          ],
        });
        console.log("I am the length " + this.state.displayPeople.length);
        if (this.state.displayPeople.length === 0) {
          localStorage.removeItem("reject");
          localStorage.removeItem("friend");
          localStorage.removeItem("date");
          localStorage.setItem("DisplayCount", 0);
          console.log("hii");
        }
        if (parseInt(localStorage.getItem("DisplayCount")) == 0)
          return this.askMore();
        // window.location.reload();
      });
      // }
    }
  };

  swiped = (direction, nameToDelete) => {
    this.setState({
      count: JSON.parse(parseInt(localStorage.getItem("DisplayCount"))) + 1,
      displayPeople: this.state.displayPeople.filter(
        (x) => x.parent_user !== nameToDelete
      ),
      lastDirection: direction,
    });

    localStorage.setItem("DisplayCount", this.state.count);
    console.log(parseInt(localStorage.getItem("DisplayCount")));
    localStorage.setItem("reques", nameToDelete);
    this.sendrequest(nameToDelete);
    console.log(direction, nameToDelete);
    let form_d = new FormData();

    if (this.state.lastDirection == "left") {
      // if (localStorage.getItem("reject") != "1") {
      console.log("in the left");
      form_d.append("from_user", localStorage.getItem("username"));
      form_d.append("to_user", nameToDelete);
      console.log(direction, nameToDelete);
      let urlc = "https://3choices.in/profile/rejected/";
      axios.post(urlc, form_d).then((res) => {
        localStorage.setItem("reject", 1);
        this.setState({
          loading: true,
          allRejected: [
            ...this.state.allRejected,
            {
              from_user: localStorage.getItem("username"),
              to_user: nameToDelete,
            },
          ],
          allRejectedByUser: [...this.state.allRejectedByUser, nameToDelete],
        });
        console.log("I am the length " + this.state.displayPeople.length);
        if (this.state.displayPeople.length === 0) {
          localStorage.removeItem("reject");
          localStorage.removeItem("friend");
          localStorage.removeItem("date");
          console.log("AM ' I  Zero, I need more");
          localStorage.setItem("DisplayCount", 0);
          console.log("hii");
        }

        if (parseInt(localStorage.getItem("DisplayCount")) == 0) {
          console.log("AM ' I  Zero, I need more");
          this.askMore();
        }

        // window.location.reload();
      });
      // }
    }
  };

  outOfFrame = (name) => {};

  AcceptFriendRequest = (id, fre) => {
    localStorage.setItem("idf", id);
    // this.setState({ load: true });
    // this.setState({ loading: true });\
    console.log(this.state.pre);
    if (this.state.pre == 0) {
      console.log(" I am Accpert Rqust");
      let idf = JSON.parse(localStorage.getItem("idf"));
      let form_dat = new FormData();
      form_dat.append("user", localStorage.getItem("UserId"));

      let url = "https://3choices.in/cha/contact/";
      axios.post(url, form_dat);
      localStorage.setItem("stat", "oka");
      const cobined = [fre, localStorage.getItem("username")];

      axios.defaults.xsrfHeaderName = "X-CSRFTOKEN";
      axios.defaults.xsrfCookieName = "csrftoken";
      axios.defaults.headers = {
        "Content-Type": "application/json",
      };

      let form_daa = new FormData();
      form_daa.append("from_user", localStorage.getItem("username"));
      form_daa.append("to_user", fre);

      let ul = "https://3choices.in/profile/note/";
      axios.post(ul, form_daa);

      axios
        .post("https://3choices.in/cha/create/", {
          messages: [],
          participants: [fre, localStorage.getItem("username")],
        })
        .then((res) => {
          this.setState({ loading: false });
          let form_dass = new FormData();

          form_dass.append("user", fre);

          let uxcs = "https://3choices.in/profile/friend/";
          axios.post(uxcs, form_dass);

          let rl = "https://3choices.in/profile/friendrequests/";
          axios.delete(rl + id + "/");

          window.location.assign(`/chat`);
          this.props.getUserChats(
            localStorage.getItem("username"),
            localStorage.getItem("token")
          );
          localStorage.removeItem("stat");
          localStorage.setItem("friendz", "yes");
          this.setState({ load: false });
        })
        .catch((err) => {
          console.error(err);
          this.setState({ load: false, error: err });
        });
    } else {
      let idf = JSON.parse(localStorage.getItem("idf"));

      const comin = [
        localStorage.getItem("ids3"),
        localStorage.getItem("ids4"),
      ];
      let fr_dat = new FormData();
      fr_dat.append("user", localStorage.getItem("UserId"));
      fr_dat.append("friends", comin);

      let uld = "https://3choices.in/cha/contact/";
      axios.post(uld, fr_dat);
      const cobined = [fre, localStorage.getItem("username")];

      axios.defaults.xsrfHeaderName = "X-CSRFTOKEN";
      axios.defaults.xsrfCookieName = "csrftoken";
      axios.defaults.headers = {
        "Content-Type": "application/json",
      };
      let form_daa = new FormData();
      form_daa.append("from_user", localStorage.getItem("username"));
      form_daa.append("to_user", fre);

      let ul = "https://3choices.in/profile/note/";
      axios.post(ul, form_daa);

      axios
        .post("https://3choices.in/cha/create/", {
          messages: [],
          participants: [fre, localStorage.getItem("username")],
        })
        .then((res) => {
          this.setState({ loading: false });
          let form_dass = new FormData();

          form_dass.append("user", fre);

          let uxcs = "https://3choices.in/profile/friend/";
          axios.post(uxcs, form_dass);

          let rl = "https://3choices.in/profile/friendrequests/";
          axios.delete(rl + id + "/");

          window.location.assign(`/chat`);
          this.props.getUserChats(
            localStorage.getItem("username"),
            localStorage.getItem("token")
          );
          localStorage.removeItem("stat");
          localStorage.setItem("friendz", "yes");
          this.setState({ load: false });
        })
        .catch((err) => {
          console.error(err);
          this.setState({ load: false, error: err });
        });
    }
  };

  AcceptDate = (id, fre) => {
    localStorage.setItem("idf", id);
    this.setState({ load: true, loading: true });

    if (this.state.pre == 0) {
      let idf = JSON.parse(localStorage.getItem("idf"));
      let form_dat = new FormData();
      form_dat.append("user", localStorage.getItem("UserId"));

      let url = "https://3choices.in/cha/contact/";
      axios.post(url, form_dat);
      localStorage.setItem("stat", "oka");
      const cobined = [fre, localStorage.getItem("username")];

      axios.defaults.xsrfHeaderName = "X-CSRFTOKEN";
      axios.defaults.xsrfCookieName = "csrftoken";
      axios.defaults.headers = {
        "Content-Type": "application/json",
      };

      let form_daa = new FormData();
      form_daa.append("from_user", localStorage.getItem("username"));
      form_daa.append("to_user", fre);

      let ul = "https://3choices.in/profile/note/";
      axios.post(ul, form_daa);

      axios
        .post("https://3choices.in/cha/create/", {
          messages: [],
          participants: [fre, localStorage.getItem("username")],
        })
        .then((res) => {
          this.setState({ loading: false });
          let form_das = new FormData();

          form_das.append("user", fre);

          let uxc = "https://3choices.in/profile/date/";
          axios.post(uxc, form_das);

          let rlg = "https://3choices.in/profile/daterequests/";
          axios.delete(rlg + id + "/");

          window.location.assign(`/date`);
          this.props.getUserChats(
            localStorage.getItem("username"),
            localStorage.getItem("token")
          );
          localStorage.removeItem("stat");
          localStorage.setItem("friendz", "yes");
          this.setState({ load: false });
        })
        .catch((err) => {
          console.error(err);
          this.setState({ load: false, error: err });
        });
    } else {
      let idf = JSON.parse(localStorage.getItem("idf"));

      const comin = [
        localStorage.getItem("ids3"),
        localStorage.getItem("ids4"),
      ];
      let fr_dat = new FormData();
      fr_dat.append("user", localStorage.getItem("UserId"));
      fr_dat.append("friends", comin);

      let uld = "https://3choices.in/cha/contact/";
      axios.post(uld, fr_dat);
      const cobined = [fre, localStorage.getItem("username")];

      axios.defaults.xsrfHeaderName = "X-CSRFTOKEN";
      axios.defaults.xsrfCookieName = "csrftoken";
      axios.defaults.headers = {
        "Content-Type": "application/json",
      };
      let form_daa = new FormData();
      form_daa.append("from_user", localStorage.getItem("username"));
      form_daa.append("to_user", fre);

      let ul = "https://3choices.in/profile/note/";
      axios.post(ul, form_daa);

      let form_dakoda = new FormData();
      form_dakoda.append("messages", []);
      form_dakoda.append("participants", [
        fre,
        localStorage.getItem("username"),
      ]);
      axios
        .post("https://3choices.in/cha/create", form_dakoda)
        .then((res) => {
          this.setState({ loading: false });
          let form_das = new FormData();

          form_das.append("user", fre);

          let uxc = "https://3choices.in/profile/date/";
          axios.post(uxc, form_das);

          let rlg = "https://3choices.in/profile/daterequests/";
          axios.delete(rlg + id + "/");

          window.location.assign(`/date`);
          this.props.getUserChats(
            localStorage.getItem("username"),
            localStorage.getItem("token")
          );
          localStorage.removeItem("stat");
          localStorage.setItem("friendz", "yes");
          this.setState({ load: false });
        })
        .catch((err) => {
          console.error(err);
          this.setState({ load: false, error: err });
        });
    }
  };

  remx = (id) => {
    let rl = "https://3choices.in/profile/note/";
    axios.delete(rl + id + "/");

    window.location.reload();
  };

  confirm = (id) => {
    const combin = [localStorage.getItem("ids3"), localStorage.getItem("ids4")];
    let for_dat = new FormData();
    for_dat.append("user", localStorage.getItem("ids"));
    for_dat.append("friends", combin);

    let urld = "https://3choices.in/cha/contact/";
    axios.post(urld, for_dat);
    const combined = [
      localStorage.getItem("friend"),
      localStorage.getItem("username"),
    ];

    axios.defaults.xsrfHeaderName = "X-CSRFTOKEN";
    axios.defaults.xsrfCookieName = "csrftoken";
    axios.defaults.headers = {
      "Content-Type": "application/json",
    };

    axios
      .post("https://3choices.in/cha/create/", {
        messages: [],
        participants: [
          localStorage.getItem("friend"),
          localStorage.getItem("username"),
        ],
      })
      .then((res) => {
        window.location.assign(`/chat`);
        this.props.getUserChats(
          localStorage.getItem("username"),
          localStorage.getItem("token")
        );
        localStorage.removeItem("stat");
        localStorage.setItem("friendz", "yes");
      })
      .catch((err) => {
        console.error(err);
        this.setState({
          error: err,
        });
      });
  };

  dsa = () => {
    this.setState({ opacity: 0 });
  };

  handleClick = (e, titleProps) => {
    const { index } = titleProps;
    const { activeIndex } = this.state;
    const newIndex = activeIndex === index ? -1 : index;

    this.setState({ activeIndex: newIndex });
  };

  changedshow = () => this.setState({ show: !this.state.show });

  ShowHideDiv = (btnPassport) => {
    if (btnPassport.value == "Yes") {
      var opacity = 0;
      btnPassport.value = "No";
    } else {
      var opacity = 1;
      btnPassport.value = "Yes";
    }
  };

  render() {
    // const { activeIndex } = this.state;
    const {
      counts,
      rawDataOnDateRequest,
      dx,
      pre,
      data,
      rawDataOnFriendRequest,
      data4,
      data6,
      chats,
      data5,
      datax,
      displayPeople,
      userAge,
    } = this.state;
    var friendRequestData = [];
    var DateRequestData = [];
    var opacity = 1;

    dx.map((fg) => {
      localStorage.setItem("location", fg.location);
      localStorage.setItem("intrest", fg.intrest);
    });

    localStorage.setItem("lent", dx.length);

    counts.map((ds) => {
      localStorage.setItem("UserId", ds.id);
      localStorage.setItem("cd", ds.count);
    });

    chats.map((c) => {
      if (c.participants[0] === localStorage.getItem("username")) {
        localStorage.setItem("persons", JSON.stringify(c.participants[1]));
      } else {
        localStorage.setItem("person", JSON.stringify(c.participants[0]));
      }
    });

    friendRequestData = rawDataOnFriendRequest.filter(
      ({ to_user }) => to_user == localStorage.getItem("username")
    );
    DateRequestData = rawDataOnDateRequest.filter(
      ({ to_user }) => to_user == localStorage.getItem("username")
    );

    data4.map((fg) => {
      localStorage.setItem("ids2", fg.id);
    });

    datax.map((fg) => {
      localStorage.setItem("idsre", fg.id);
    });

    data5.map((fgc) => {
      localStorage.setItem("ids3", fgc.id);
    });

    data6.map((fgc) => {
      localStorage.setItem("ids4", fgc.id);
    });

    userAge.map((fgc) => {
      localStorage.setItem("ages", fgc.Age);
    });

    // friendRequestData.map((character) => {
    //   localStorage.setItem("friend", character.from_user);
    // });

    console.log(localStorage.getItem("dx"));
    localStorage.setItem("pre", pre.length);

    let g = [];

    var q = window.innerWidth > 580 ? "17px" : "84px";

    var TotalRequestCountToUser =
      friendRequestData.length + DateRequestData.length;

    var Allrequest = [...DateRequestData, ...friendRequestData];

    const addDefaultSrc = (ev) => {
      ev.target.src = "https://unsplash.com/photos/U-Z4P2H3KFE";
    };

    if (localStorage.getItem("dx") === "") {
      return <Redirect to="/prof" />;
    }

    return (
      <div>
        <DashBoardNavbar
          DateRequestData={DateRequestData || []}
          friendRequestData={friendRequestData || []}
          changedshow={this.changedshow}
        />

        {/* <Accordion style={{ position: "relative", top: `${q}` }}>
          <Accordion.Title
            active={activeIndex === 0}
            index={0}
            onClick={this.handleClick}
          >
            <h5
              color="violet"
              onClick={() => {
                this.setState({ show: !this.state.show });
              }}
            >
              <Badge count={TotalRequestCountToUser} />
              Requests
            </h5>
          </Accordion.Title>
          <Accordion.Content active={activeIndex === 0}>
            <h5 color="white">
              {loading && (
                <Segment>
                  <Dimmer active inverted>
                    <Loader inverted>Loading</Loader>
                  </Dimmer>

                  <Image src="/images/wireframe/short-paragraph.png" />
                </Segment>
              )}

              {friendRequestData.map((character) => (
                <p key={character.id}>
                  <b>
                    {" "}
                    You've Friend Request from {character.from_user}
                    <br></br>{" "}
                    <Button
                      onClick={() =>
                        this.AcceptFriendRequest(character.id, character.from_user)
                      }
                    >
                      Add Friend
                    </Button>
                  </b>
                </p>
              ))}
              <br />
              <br />
              {DateRequestData.map((character) => (
                <p key={character.id}>
                  <b>
                    {" "}
                    You've Date Request from {character.from_user}
                    <br></br>{" "}
                    <Button
                      onClick={() =>
                        this.AcceptDate (character.id, character.from_user)
                      }
                    >
                      Date
                    </Button>
                  </b>
                </p>
              ))}
            </h5>
            <br></br>
            <p color="white"></p>
          </Accordion.Content>
        </Accordion>
        <br></br>
        <Accordion>
          <Accordion.Title
            active={activeIndex === 0}
            index={0}
            onClick={this.handleClick}
          >
            <h5
              color="violet"
              onClick={() => {
                this.setState({ show: !this.state.show });
              }}
            >
              <Badge count={notd.length} />
              Notification
            </h5>
          </Accordion.Title>
          <Accordion.Content active={activeIndex === 0}>
            <h5 color="white">
              {notd.map((character) => (
                <h6 key={character.id}>
                  <b>
                    {character.from_user} accepted Your request :)<br></br>{" "}
                    <Button onClick={() => this.remx(character.id)}>
                      Clear
                    </Button>
                  </b>
                </h6>
              ))}
            </h5>
            <br></br>
            <p color="white"></p>
          </Accordion.Content>
        </Accordion> */}

        <br></br>
        <br></br>

        <center style={{ display: "block", height: "100px" }}>
          {(this.state.lastDirection === "right") &
          (localStorage.getItem("friend") === null) ? (
            <h4 className="infoText" style={{ color: "purple" }}>
              You swiped for friend
            </h4>
          ) : (this.state.lastDirection === "up") &
            (localStorage.getItem("date") === null) ? (
            <h4 className="infoText" style={{ color: "purple" }}>
              You swiped for Date :)
            </h4>
          ) : (this.state.lastDirection === "left") &
            (localStorage.getItem("reject") === null) ? (
            <h4 className="infoText" style={{ color: "purple" }}>
              You rejected this user
            </h4>
          ) : localStorage.getItem("cd") === "1" ? (
            <h4 style={{ color: "purple" }}>
              Swipe right for Friend ,Up for date & left for reject..!
            </h4>
          ) : (
            <h4 style={{ color: "purple" }}>
              Swipe right for Friend ,Up for date & left for reject..!
            </h4>
          )}
        </center>

        {this.state.show ? (
          <div
            style={{ marginTop: "60px", height: "auto", minHeight: "150vh" }}
          >
            <Header />

            <link
              href="https://fonts.googleapis.com/css?family=Damion&display=swap"
              rel="stylesheet"
            />
            <link
              href="https://fonts.googleapis.com/css?family=Alatsi&display=swap"
              rel="stylesheet"
            />
            {/* {loading && (
              <Segment>
                <Dimmer active inverted>
                  <Loader inverted>Loading</Loader>
                </Dimmer>

                <Image src="/images/wireframe/short-paragraph.png" />
              </Segment>
            )} */}
            {/* {JSON.stringify(g)} */}
            <div
              className="all-cards"
              style={{ position: "relative !important" }}
            >
              {displayPeople.map((character) => (
                <TinderCard
                  className="swipe"
                  key={character.id}
                  onSwipe={(dir) => this.swiped(dir, character.parent_user)}
                  onCardLeftScreen={() =>
                    this.outOfFrame(character.parent_user)
                  }
                >
                  <div
                    style={{
                      backgroundImage:
                        "url(" +
                        character.image1 +
                        "),url(http://s3.amazonaws.com/37assets/svn/765-default-avatar.png)",
                    }}
                    className="tinder-card"
                  >
                    <h3
                      onClick={() =>
                        this.props.history.push(
                          `/main/products/${character.id}`
                        )
                      }
                    >
                      {character.parent_user}
                    </h3>
                  </div>
                </TinderCard>
              ))}
            </div>
          </div>
        ) : (
          <>
            <div className="request-section">
              <div>
                <h1>Request</h1>
              </div>
              <hr className="request-hr" />
              <ul>
                {DateRequestData.map((x, i) => (
                  <div key={i} className="request-li">
                    <Avatar
                      alt="Remy Sharp"
                      src="/static/images/avatar/1.jpg"
                      onError={addDefaultSrc}
                    />
                    <div className="profile">
                      {x.from_user}
                      <div className="profile-muted"> Date Request </div>
                    </div>
                    <div className="profile-buttons">
                      <button
                        className="accept"
                        onClick={() => this.AcceptDate(x.id, x.from_user)}
                      >
                        <CheckCircleOutlinedIcon />
                      </button>
                      <button className="reject">
                        <CancelOutlinedIcon />
                      </button>
                    </div>
                  </div>
                ))}

                {friendRequestData.map((x, i) => (
                  <div key={i} className="request-li">
                    <Avatar
                      alt="Remy Sharp"
                      src="/static/images/avatar/1.jpg"
                      onError={addDefaultSrc}
                    />
                    <div className="profile">
                      {x.from_user}
                      <div className="profile-muted"> Friend Request </div>
                    </div>
                    <div className="profile-buttons">
                      <button
                        className="accept"
                        onClick={() =>
                          this.AcceptFriendRequest(x.id, x.from_user)
                        }
                      >
                        <CheckCircleOutlinedIcon />
                      </button>
                      <button className="reject">
                        <CancelOutlinedIcon />
                      </button>
                    </div>
                  </div>
                ))}

                {Allrequest.length === 0 && (
                  <div className="request-li">No Request</div>
                )}
              </ul>
            </div>
          </>
        )}
        <div style={{}}>
          <Footer />
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    token: state.auth.token,
    username: state.auth.username,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    getUserChats: (username, token) =>
      dispatch(messageActions.getUserChats(username, token)),
  };
};

export default withRouter(
  connect(mapStateToProps, mapDispatchToProps)(Profile)
);
