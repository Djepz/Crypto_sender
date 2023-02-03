
import { NavBar, Welcome, Footer, Transactions, Services } from './components';

const App =() => {
  

  return ( <div className='min-h-screen'>
    <div className='gradient-bg-welcome'>
      <NavBar/>
      <Welcome/>
    </div>
    <div>
      <Services/>
      <Transactions/>
      <Footer/>
    </div>

  </div>
   
  );
};

export default App;
