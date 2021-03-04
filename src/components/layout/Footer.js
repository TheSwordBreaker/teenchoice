import React from "react";
import PropTypes from "prop-types";
import classNames from "classnames";
import Logo from "./partials/Logo";
import FooterNav from "./partials/FooterNav";
import FooterSocial from "./partials/FooterSocial";
import { Link } from "react-router-dom";
import Image from "../elements/Image";

const propTypes = {
  topOuterDivider: PropTypes.bool,
  topDivider: PropTypes.bool,
};

const defaultProps = {
  topOuterDivider: false,
  topDivider: false,
};

const Footer = ({ className, topOuterDivider, topDivider, ...props }) => {
  const classes = classNames(
    "site-footer center-content-mobile",
    topOuterDivider && "has-top-divider",
    className
  );

  return (
    <footer {...props} className={classes}>
      <div className="container">
        {window.innerWidth < 580 ? (
          <div
            style={{ position: "relative", left: "20px" }}
            className={classNames(
              "site-footer-inner",
              topDivider && "has-top-divider"
            )}
          >
            {" "}
            <div className="footer-top space-between text-xxs">
              <h1 className="m-0">
                <Link to="/main">
                  <Image
                    src={require("../../assets/images/re.png")}
                    alt="Open"
                    width={32}
                    height={32}
                  />
                </Link>
                <b>
                  <h2 style={{}}>
                    <Link to="/">3choices</Link>
                  </h2>
                </b>
              </h1>

              <FooterSocial />
            </div>
            <div className="footer-bottom space-between text-xxs invert-order-desktop">
              <FooterNav />
            </div>
          </div>
        ) : (
          <div
            className={classNames(
              "site-footer-inner",
              topDivider && "has-top-divider"
            )}
          >
            <div className="footer-top space-between text-xxs">
              <h1 className="m-0 footer-logo-made">
                <Link to="/main">
                  <Image
                    src={require("../../assets/images/re.png")}
                    alt="Open"
                    width={32}
                    height={32}
                  />
                </Link>
                <b>
                  <h2 style={{}}>
                    <Link to="/">3choices</Link>
                  </h2>
                </b>
              </h1>

              <FooterSocial />
            </div>
            <div className="footer-bottom space-between text-xxs invert-order-desktop ">
              <FooterNav className="footer-nav-made" />
              <div>Copyright @ 2020 By OnTheGo Food. All Rights reserved</div>
            </div>
          </div>
        )}
      </div>
    </footer>
  );
};

Footer.propTypes = propTypes;
Footer.defaultProps = defaultProps;

export default Footer;
