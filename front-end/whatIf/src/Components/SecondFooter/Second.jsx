import React from 'react'
import geminilogo from'../../assets/geminiLogo.png'
import bughubLogo from'../../assets/bughubLogo.png'
import { Link } from 'react-router-dom'

export default function Second () {
  return (
    <>
        <div className=" footer bg-slate-50 ">

<div className='max-w-screen-xl flex flex-wrap items-center justify-around mx-auto pb-6 pt-4'>

<div className="GWI flex">
<img src={geminilogo} alt="gemini Logo" />
<span className='bg-gradient-to-r from-blue-400 via-violet-900 to-blue-500 inline-block text-transparent bg-clip-text text-4xl font-semibold px-1 py-2'>&</span>
<img src={bughubLogo} alt="BUGHUB Logo" />

</div>

<div>
<div className=" text-center">
     <div className="relative">
     <div className='text-3xl font-bold whitespace-nowrap font-serif text-blue-950 text-center '>
        <p className="">WHAT</p>
      <span>IF?!</span>
      </div>

<span className="text-gray-500 after:content-[''] after:absolute after:h-0.5 after:w-10 after:bg-gray-400 after:bottom-2 after:ml-2
before:absolute before:content-[''] before:h-0.5 before:w-10 before:bg-gray-400 before:bottom-2 before:left-14">
est .2024
</span>
     </div>

<p className='text-gray-500 '>Engaging and imaginative experiences</p>

      </div>
</div>

<div className="icons text-slate-950 text-4xl">
  <Link to=""><i className="fa-brands fa-square-facebook px-1 text-blue-600"></i></Link>
  <Link to=""><i className="fa-brands fa-square-instagram px-1 text-pink-600"></i></Link>
  <Link to=""><i className="fa-brands fa-square-twitter px-1 text-sky-500"></i></Link>
  <Link to=""><i className="fa-brands fa-tiktok px-1"></i></Link>
  <Link to="https://www.linkedin.com/company/bughubteam/?viewAsMember=true"><i className="fa-brands fa-linkedin px-1 text-blue-800"></i></Link>
</div>

</div>




    </div>
    </>
  )
}
