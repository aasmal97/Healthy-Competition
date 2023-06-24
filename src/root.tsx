import { ScrollRestoration } from "react-router-dom";
import { Outlet } from "react-router-dom";
import {Navbar} from "./components/Navbar";
const Root = () => {
  return (
    <>
      <ScrollRestoration />
      <Navbar />
      <div id={"general-app-container"}>
        <Outlet />
      </div>
    </>
  );
};
export default Root;
