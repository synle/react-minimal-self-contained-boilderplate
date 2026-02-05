import React, { useContext } from 'react';
import ReactDOM from 'react-dom';

// create a context
const ProfileContext = React.createContext();

// use it in a component
const MyProfileComponent = () => {
  const profile = useContext(ProfileContext);
  return (
    <>
      Hello {profile.name} ({profile.location})
    </>
  );
};

// hook up the context with .Provider value={}
function App() {
  const MyProfile = {
    name: 'Sy',
    location: 'Bay Area',
  };

  return (
    <div>
      <ProfileContext.Provider value={MyProfile}>
        <MyProfileComponent></MyProfileComponent>
      </ProfileContext.Provider>
    </div>
  );
}

ReactDOM.render(<App />, document.body);
