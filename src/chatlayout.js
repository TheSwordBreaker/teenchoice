import React from "react";
import Sidepanel from "./containers/Sidepanel";
import Profile from "./containers/Profile";
import "./assets/chat.css";
import DashBoardNavbar from "./components/layout/DashBoardNavbar";
import { Icon } from "semantic-ui-react";
import { Link } from "react-router-dom";
import BaseRouter from "./routes";

class Chatlayout extends React.Component {
  render() {
    return (
      <div>
        <DashBoardNavbar />

        <div class="dark-mode">
          <div class="app " id="chatBox">
            <div class="header"></div>
            <div class="wrapper-chat">
              <div class="conversation-area">
                <div class="msg online">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%281%29.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Madison Jones</div>
                    <div class="msg-content">
                      <span class="msg-message">What time was our meet</span>
                      <span class="msg-date">20m</span>
                    </div>
                  </div>
                </div>
                <div class="msg active">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%2812%29.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Miguel Cohen</div>
                    <div class="msg-content">
                      <span class="msg-message">
                        Adaptogen taiyaki austin jean shorts brunch
                      </span>
                      <span class="msg-date">20m</span>
                    </div>
                  </div>
                </div>

                <div class="msg online">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%282%29.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Lea Debere</div>
                    <div class="msg-content">
                      <span class="msg-message">
                        Shoreditch iPhone jianbing
                      </span>
                      <span class="msg-date">45m</span>
                    </div>
                  </div>
                </div>
                <div class="msg online">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%281%29+%281%29.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Jordan Smith</div>
                    <div class="msg-content">
                      <span class="msg-message">
                        Snackwave craft beer raclette, beard kombucha{" "}
                      </span>
                      <span class="msg-date">2h</span>
                    </div>
                  </div>
                </div>
                <div class="msg">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%284%29+%281%29.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Jared Jackson</div>
                    <div class="msg-content">
                      <span class="msg-message">
                        Tattooed brooklyn typewriter gastropub
                      </span>
                      <span class="msg-date">18m</span>
                    </div>
                  </div>
                </div>
                <div class="msg online">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%283%29+%281%29.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Henry Clark</div>
                    <div class="msg-content">
                      <span class="msg-message">
                        Ethical typewriter williamsburg lo-fi street art
                      </span>
                      <span class="msg-date">2h</span>
                    </div>
                  </div>
                </div>
                <div class="msg">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/qs6F3dgm.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Jason Mraz</div>
                    <div class="msg-content">
                      <span class="msg-message">
                        I'm lucky I'm in love with my best friend
                      </span>
                      <span class="msg-date">4h</span>
                    </div>
                  </div>
                </div>
                <div class="msg">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%288%29.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Chiwa Lauren</div>
                    <div class="msg-content">
                      <span class="msg-message">Pabst af 3 wolf moon</span>
                      <span class="msg-date">28m</span>
                    </div>
                  </div>
                </div>
                <div class="msg">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%289%29.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Caroline Orange</div>
                    <div class="msg-content">
                      <span class="msg-message">
                        Bespoke aesthetic lyft woke cornhole
                      </span>
                      <span class="msg-date">35m</span>
                    </div>
                  </div>
                </div>
                <div class="msg">
                  <img
                    class="msg-profile"
                    src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%286%29.png"
                    alt=""
                  />
                  <div class="msg-detail">
                    <div class="msg-username">Lina Ashma</div>
                    <div class="msg-content">
                      <span class="msg-message">
                        Migas food truck crucifix vexi
                      </span>
                      <span class="msg-date">42m</span>
                    </div>
                  </div>
                </div>

                <div class="overlay"></div>
              </div>
              <div class="chat-area">
                <div class="chat-area-header">
                  <div class="chat-area-title">Madison Jones</div>
                  <div class="chat-area-group">
                    <img
                      class="chat-area-profile"
                      src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%283%29+%281%29.png"
                      alt=""
                    />
                    <img
                      class="chat-area-profile"
                      src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%282%29.png"
                      alt=""
                    />
                    <img
                      class="chat-area-profile"
                      src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%2812%29.png"
                      alt=""
                    />
                    <span>+4</span>
                  </div>
                </div>
                <div class="chat-area-main">
                  <div class="chat-msg">
                    <div class="chat-msg-profile">
                      <img
                        class="chat-msg-img"
                        src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%283%29+%281%29.png"
                        alt=""
                      />
                      <div class="chat-msg-date">Message seen 1.22pm</div>
                    </div>
                    <div class="chat-msg-content">
                      <div class="chat-msg-text">
                        Luctus et ultrices posuere cubilia curae.
                      </div>

                      <div class="chat-msg-text">
                        Neque gravida in fermentum et sollicitudin ac orci
                        phasellus egestas. Pretium lectus quam id leo.
                      </div>
                    </div>
                  </div>
                  <div class="chat-msg owner">
                    <div class="chat-msg-profile">
                      <img
                        class="chat-msg-img"
                        src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%281%29.png"
                        alt=""
                      />
                      <div class="chat-msg-date">Message seen 1.22pm</div>
                    </div>
                    <div class="chat-msg-content">
                      <div class="chat-msg-text">
                        Sit amet risus nullam eget felis eget. Dolor sed viverra
                        ipsum😂😂😂
                      </div>
                      <div class="chat-msg-text">
                        Cras mollis nec arcu malesuada tincidunt.
                      </div>
                    </div>
                  </div>
                  <div class="chat-msg">
                    <div class="chat-msg-profile">
                      <img
                        class="chat-msg-img"
                        src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%282%29.png"
                        alt=""
                      />
                      <div class="chat-msg-date">Message seen 2.45pm</div>
                    </div>
                    <div class="chat-msg-content">
                      <div class="chat-msg-text">
                        Aenean tristique maximus tortor non tincidunt.
                        Vestibulum ante ipsum primis in faucibus orci luctus et
                        ultrices posuere cubilia curae😊
                      </div>
                      <div class="chat-msg-text">
                        Ut faucibus pulvinar elementum integer enim neque
                        volutpat.
                      </div>
                    </div>
                  </div>
                  <div class="chat-msg owner">
                    <div class="chat-msg-profile">
                      <img
                        class="chat-msg-img"
                        src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%281%29.png"
                        alt=""
                      />
                      <div class="chat-msg-date">Message seen 2.50pm</div>
                    </div>
                    <div class="chat-msg-content">
                      <div class="chat-msg-text">
                        posuere eget augue sodales, aliquet posuere eros.
                      </div>
                      <div class="chat-msg-text">
                        Cras mollis nec arcu malesuada tincidunt.
                      </div>
                    </div>
                  </div>
                  <div class="chat-msg">
                    <div class="chat-msg-profile">
                      <img
                        class="chat-msg-img"
                        src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%2812%29.png"
                        alt=""
                      />
                      <div class="chat-msg-date">Message seen 3.16pm</div>
                    </div>
                    <div class="chat-msg-content">
                      <div class="chat-msg-text">
                        Egestas tellus rutrum tellus pellentesque
                      </div>
                    </div>
                  </div>
                  <div class="chat-msg">
                    <div class="chat-msg-profile">
                      <img
                        class="chat-msg-img"
                        src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%283%29+%281%29.png"
                        alt=""
                      />
                      <div class="chat-msg-date">Message seen 3.16pm</div>
                    </div>
                    <div class="chat-msg-content">
                      <div class="chat-msg-text">
                        Consectetur adipiscing elit pellentesque habitant morbi
                        tristique senectus et.
                      </div>
                    </div>
                  </div>
                  <div class="chat-msg owner">
                    <div class="chat-msg-profile">
                      <img
                        class="chat-msg-img"
                        src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%281%29.png"
                        alt=""
                      />
                      <div class="chat-msg-date">Message seen 2.50pm</div>
                    </div>
                    <div class="chat-msg-content">
                      <div class="chat-msg-text">
                        Tincidunt arcu non sodales😂
                      </div>
                    </div>
                  </div>
                  <div class="chat-msg">
                    <div class="chat-msg-profile">
                      <img
                        class="chat-msg-img"
                        src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3364143/download+%282%29.png"
                        alt=""
                      />
                      <div class="chat-msg-date">Message seen 3.16pm</div>
                    </div>
                    <div class="chat-msg-content">
                      <div class="chat-msg-text">
                        Consectetur adipiscing elit pellentesque habitant morbi
                        tristique senectus et🥰
                      </div>
                    </div>
                  </div>
                </div>
                <div class="chat-area-footer">
                  <input type="text" placeholder="Type something here..." />
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1.5"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="feather feather-smile"
                  >
                    <circle cx="12" cy="12" r="10" />
                    <path d="M8 14s1.5 2 4 2 4-2 4-2M9 9h.01M15 9h.01" />
                  </svg>
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1.5"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="feather feather-thumbs-up"
                  >
                    <path d="M14 9V5a3 3 0 00-3-3l-4 9v11h11.28a2 2 0 002-1.7l1.38-9a2 2 0 00-2-2.3zM7 22H4a2 2 0 01-2-2v-7a2 2 0 012-2h3" />
                  </svg>
                </div>
              </div>
            </div>
          </div>
          {/* <Link to="/main">
          <Icon name="arrow left" className="fg" style={{}} />
        </Link>
        <div id="frame">
          <Sidepanel />
          <div className="content">
            <h5
              style={{
                position: "relative",
                left: "53px",
                color: "black",
                top: "31px",
              }}
            >
              Let's Chat
            </h5>

            <Profile />
            <BaseRouter />
          </div>
        </div> */}
        </div>
      </div>
    );
  }
}

export default Chatlayout;
