import React from 'react'
import Navbar from '../Navbar/Navbar'
import Footer from '../Footer/Footer'
import { Outlet } from 'react-router-dom'
import Second from '../SecondFooter/Second'



export default function Layout() {
  return (
    <>

    <Navbar/>
    
  <div className="container mx-auto py-12">
    <Outlet/>
  </div>

  
    <Second/>
    <Footer/>
    
    </>
  )
}
