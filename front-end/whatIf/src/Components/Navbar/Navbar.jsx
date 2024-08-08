import React from 'react'
import { Link } from 'react-router-dom'
import logo from '../../assets/Logo.svg'


export default function Navbar() {
  return (
    <>
    
    

<nav className="bg-white fixed w-full z-20 top-0 start-0 border-b border-gray-200 ">
  <div className="max-w-screen-xl flex flex-wrap items-center justify-around mr-auto p-4">
  <Link to="" className="flex items-center space-x-3 rtl:space-x-reverse">
      <img src={logo} className="h-8" alt="WhatIf Logo"/>
      <div className="appName self-center text-2xl font-semibold whitespace-nowrap">
      <span className="">WHAT IF ?</span>
      
      </div>
  </Link>
  
  <div className="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
    <ul className="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
      <li>
        <Link to="home" className="block py-2 px-3 md:p-0">HOME</Link>
      </li>
      <li>
        <Link to="app" className="block py-2 px-3 md:p-0">WHATEIF?!APP</Link>
      </li>
      <li>
        <Link to="about" className="block py-2 px-3 md:p-0">ABOUT US</Link>
      </li>
    </ul>
  </div>
  </div>
</nav>

    
    
    </>
  )
}
