import React, { useState, useEffect } from "react";
import classNames from "classnames";
import { SectionProps } from "../../utils/SectionProps";
import ButtonGroup from "../elements/ButtonGroup";
import Button from "../elements/Button";
import Image from "../elements/Image";
import Modal from "../elements/Modal";
import { Link } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";
import { Carousel } from "react-bootstrap";
import Logo from "../layout/partials/Logo";
import axios from "axios";

const propTypes = {
  ...SectionProps.types,
};

const defaultProps = {
  ...SectionProps.defaults,
};

const Hero = ({
  className,
  topOuterDivider,
  bottomOuterDivider,
  topDivider,
  bottomDivider,
  hasBgColor,
  invertColor,
  ...props
}) => {
  const [videoModalActive, setVideomodalactive] = useState(false);
  const [profileData, setProfileData] = useState([]);

  useEffect(() => {
    axios.get("https://3choices.in/profile/profile/").then(({ data }) => {
      let randomData = Array.from({ length: data.length }, () =>
        Math.floor(Math.random() * data.length)
      ).slice(0, 100);
      setProfileData(data.filter((x, i) => randomData.includes(i)));
    });
  }, []);

  const openModal = (e) => {
    e.preventDefault();
    setVideomodalactive(true);
  };

  const closeModal = (e) => {
    e.preventDefault();
    setVideomodalactive(false);
  };

  const outerClasses = classNames(
    "hero section center-content",
    topOuterDivider && "has-top-divider",
    bottomOuterDivider && "has-bottom-divider",
    hasBgColor && "has-bg-color",
    invertColor && "invert-color",
    className
  );

  const innerClasses = classNames(
    "hero-inner section-inner",
    topDivider && "has-top-divider",
    bottomDivider && "has-bottom-divider"
  );

  const addDefaultSrc = (ev) => {
    ev.target.src =
      "http://s3.amazonaws.com/37assets/svn/765-default-avatar.png";
  };

  return (
    <>
      <section {...props} className={outerClasses}>
        <div className="container-sm">
          <div className={innerClasses}>
            <div
              className="hero-content"
              style={{
                top: "25px",
                position: "relative",
              }}
            >
              <Link to="/main">
                {window.innerWidth < 580 ? (
                  <Image
                    src={require("../../assets/images/re.png")}
                    alt="Open"
                    width={32}
                    height={98}
                    style={{
                      position: "relative",
                      left: "-109px",
                      top: "-102px",
                      width: "62px",
                    }}
                  />
                ) : (
                  <Image
                    src={require("../../assets/images/re.png")}
                    alt="Open"
                    width={32}
                    height={98}
                    style={{
                      position: "relative",
                      left: "-147px",
                      top: "-102px",
                      width: "62px",
                    }}
                  />
                )}
              </Link>
              <b>
                <h2
                  style={{
                    margin: "2px",
                    position: "relative",
                    top: "-155px",
                    left: "3px",
                  }}
                >
                  <Link to="/">3choices</Link>
                </h2>
              </b>
              <br></br>
              <h1
                className="mt--50 mb-16 reveal-from-bottom"
                data-reveal-delay="200"
                style={{ marginTop: "-50px !important" }}
              >
                Not Sure!! What You Looking For? <br></br>
                <span className="text-color-primary">
                  Don't Worry ,We Got You
                </span>
              </h1>
              <br></br>
              <ButtonGroup>
                <Link to="/login2">
                  <Button
                    tag="a"
                    color="primary"
                    wideMobile
                    style={{ X: "4px" }}
                  >
                    Log In
                  </Button>
                </Link>

                <Link to="/log">
                  <Button tag="a" color="dark" wideMobile>
                    Register
                  </Button>
                </Link>
              </ButtonGroup>
              {/* {JSON.parse(profileData)} */}
              <div className="container-xs">
                <p
                  className="m-0 mb-32 reveal-from-bottom"
                  data-reveal-delay="400"
                ></p>
                <div
                  className="reveal-from-bottom"
                  data-reveal-delay="600"
                  style={{ margin: "26px" }}
                ></div>
              </div>
            </div>

            {/* <div className="hero-figure reveal-from-bottom illustration-element-01" data-reveal-value="20px" data-reveal-delay="800">
            <Carousel style={{
              position: "relative",
              top: "133px",
              opacity: 0,
              
            }}>
              <Carousel.Item style={{
             top: "67px !important"
            }}>
                <Image
                  className="has-shadow"
                  src="https://source.unsplash.com/996x600/?love,couple"
                  alt="Hero"
                  width={996}
                  height={700} />


              </Carousel.Item>
              <Carousel.Item>
                <Image
                  className="has-shadow"
                  src="https://source.unsplash.com/996x600/?love,date"
                  alt="Hero"
                  width={996}
                  height={700} />



              </Carousel.Item>
              <Carousel.Item>
                <Image
                  className="has-shadow"
                  src="https://source.unsplash.com/996x600/?love,place"
                  alt="Hero"
                  width={996}
                  height={700} />



              </Carousel.Item>
            </Carousel>

          </div> */}
            <Modal
              id="video-modal"
              show={videoModalActive}
              handleClose={closeModal}
              video="https://player.vimeo.com/video/174002812"
              videoTag="iframe"
            />
          </div>
        </div>
      </section>
      <section>
        {/* {typeof profileData} */}
        {/* {JSON.stringify(Object.values(profileData)[0])} */}
        {Object.values(profileData).length > 0 && (
          <div id="columns-kunal">
            {Object.values(profileData).map((x) => (
              <figure>
                <img
                  src={x.image1}
                  onError={addDefaultSrc}
                  alt={x.parent_user}
                />
                <figcaption>{x.parent_user}</figcaption>
              </figure>
            ))}
          </div>
        )}

        <div id="columns-kunal">
          <figure>
            <img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90JTIwYm95c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />
            <figcaption>Cinderella wearing</figcaption>
          </figure>

          <figure>
            <img src="https://images.unsplash.com/photo-1597586124394-fbd6ef244026?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGdpcmxzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />
            <figcaption>Rapunzel, clothe</figcaption>
          </figure>

          <figure>
            <img src="https://images.unsplash.com/photo-1558072844-b2e8b546d415?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHRpbmRlciUyMHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />{" "}
            <figcaption>Belle, based</figcaption>
          </figure>

          <figure>
            <img src="https://images.unsplash.com/photo-1545996124-0501ebae84d0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGh1bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />{" "}
            <figcaption>Mulan, based</figcaption>
          </figure>

          <figure>
            <img src="https://images.unsplash.com/photo-1516029637308-3adce832dbec?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjJ8fGdpcmxzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />
            <figcaption>Sleeping Beauty</figcaption>
          </figure>

          <figure>
            <img src="https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />
            <figcaption>Pocahontas based</figcaption>
          </figure>

          <figure>
            <img src="https://images.unsplash.com/photo-1564064695621-5cb08cd581eb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dGluZGVyJTIwcHJvZmlsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />{" "}
            <figcaption>Snow White, based</figcaption>
          </figure>

          <figure>
            <img src="https://images.unsplash.com/photo-1503104834685-7205e8607eb9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />
            <figcaption>Ariel wearing </figcaption>
          </figure>

          <figure>
            <img src="https://images.unsplash.com/photo-1554230505-919a13968970?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2lybHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />
            <figcaption>Tiana wearing the</figcaption>
          </figure>
        </div>
      </section>
    </>
  );
};

Hero.propTypes = propTypes;
Hero.defaultProps = defaultProps;

export default Hero;
