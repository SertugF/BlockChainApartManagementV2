// import { Navbar, Welcome, Footer, Services, Transactions } from "./components";
import { Navbar, Welcome} from "./components";

const App = () => {
  return (
    <div className="min-h-screen">
      {/* Specific width screen */}
      <div className="gradient-bg-welcome">
        <Navbar />
        <Welcome />
        {/* <Signin/> */}
      </div>
      {/* <Services />
      <Transactions / şimdilik hepsi iptal>
      <Footer /> */}
    </div>
  );
};

export default App;
