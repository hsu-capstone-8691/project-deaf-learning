import React from "react";
import { BrowserRouter, Routes, Route, useLocation } from "react-router-dom";
import LandingPage from "./pages/StartPage/LandingPage";
import LoginPage from "./pages/StartPage/LoginPage";
import Header from "./components/Header";
import MainPage from "./pages/MainPage/MainPage";
import WordPage from "./pages/MainPage/ClassPage/WordPage";
import SentencePage from "./pages/MainPage/ClassPage/SentencePage";
import GrammerPage from "./pages/MainPage/ClassPage/GrammerPage";

function AppContent() {
  const location = useLocation();
  const hideHeaderPaths = ["/", "/login"];

  const routes = [
    { path: "/", element: <LandingPage /> },
    { path: "/login", element: <LoginPage /> },
    { path: "/main", element: <MainPage /> },
    { path: "/word", element: <WordPage /> },
    { path: "/sentence", element: <SentencePage /> },
    { path: "/grammer", element: <GrammerPage /> },
  ];

  return (
    <div>
      {!hideHeaderPaths.includes(location.pathname) && <Header />}
      <Routes>
        {routes.map(({ path, element }, key) => (
          <Route path={path} element={element} key={key} />
        ))}
      </Routes>
    </div>
  );
}

function App() {
  return (
    <BrowserRouter>
      <AppContent />
    </BrowserRouter>
  );
}

export default App;
