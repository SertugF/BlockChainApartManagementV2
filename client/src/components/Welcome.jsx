//import aifill icon, se Etherium
import { AiFillPlayCircle } from "react-icons/ai";
//import { SiEtherium } from "react-icons/si";
import { BsInfoCircle } from "react-icons/bs";

// import loader
import { Loader } from "./";

const Welcome = () => {
  return (
    <div className="flex w-full justify-center items-center">
      <div className="flex md:flex-row flex-col items-start justify-between md:p-20 py-12 px-4">
        <div className="flex flex-1 justify-start flex-col md:mr-10">
          <h1 className="text-3xl sm:text-5xl text-white text-gradient py-4">
            Send Crypto <br /> accross the globe
          </h1>
          <p className="text-left text-white mt-5 font-light md:w-9/12 w-11/12 text-base">
            Explore the crypto world. Buy and sell cryptocurrencies easily.
          </p>
        </div>
      </div>
    </div>
  );
};

export default Welcome;

// check tailwindcss,https://tailwindcss.com/docs/justify-content#center

// left at button
