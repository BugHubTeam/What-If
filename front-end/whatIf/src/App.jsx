import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import { createBrowserRouter, RouterProvider } from 'react-router-dom'
import Layout from './Components/Layout/Layout'
import Home from './Components/Home/Home'
import About from './Components/About/About'
import WhatIfApp from './Components/WhatIfApp/WhatIfApp'




let browser = createBrowserRouter([
  {
    path: "", element: <Layout />, children: [

      { index: true, element: <Home /> },
      { path: "about", element: <About /> },
      { path: "app", element: <WhatIfApp /> },

    ]
  }


])

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <RouterProvider router={browser} ></RouterProvider>
    </>
  )
}

export default App
