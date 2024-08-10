import React from 'react'
import { Link, NavLink } from 'react-router-dom'
import logo from '../../assets/Logo.svg'


export default function Navbar() {
  return (
    <>
    
    

<nav className="bg-gradient-to-r from-blue-400 via-violet-900 to-blue-500 fixed w-full z-20 top-0 left-0">
  <div className="max-w-screen-xl flex flex-wrap items-center justify-around mr-auto">
  <Link to="" className="flex items-center space-x-3 rtl:space-x-reverse">
      <img src={logo} className="" width={"100px"} alt="WhatIf Logo"/>
      <div className="appName self-center text-3xl font-bold whitespace-nowrap font-serif
      bg-gradient-to-b from-slate-50 via-pink-200 to-pink-500 inline-block text-transparent bg-clip-text">
      <p className="">WHAT</p>
      <span className=''>IF?!</span>
      </div>
  </Link>
 
  <div className="items-center justify-between w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
    <ul className="flex justify-center md:justify-between md:p-0 mt-4 text-lg font-bold md:space-x-8 rtl:space-x-reverse ">
      <li className='relative'>
        <NavLink to="/" className=" block py-1 px-3 md:p-0 text-slate-200">HOME</NavLink>
      </li>
      <li className='relative'>
        <NavLink to="app" className="block py-1 px-3 md:p-0 text-slate-300">WHATEIF?!APP</NavLink>
      </li>
      <li className='relative'>
        <NavLink to="about" className="block py-1 px-3 md:p-0 text-slate-300">ABOUT US</NavLink>
      </li>
    </ul>
  </div>
  </div>
</nav>

    
    
    </>
  )
}
