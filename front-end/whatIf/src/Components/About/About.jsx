import React from 'react'
import first from '../../assets/person.png'
import second from '../../assets/whatif.png'
import logo from '../../assets/Logo.svg'
import box1 from '../../assets/box1.svg'
import box2 from '../../assets/box2.svg'
import mainbox from'../../assets/image2.png'

export default function About() {
  return (
    <>
    <div className="mx-auto">


      <div className="aboutUs rounded-lg w-full md:w-4/5  mx-auto flex-wrap flex justify-center items-center my-16 bg-gradient-to-r from-blue-900 via-violet-900 to-pink-800 p-1">

   
   
   <div className="content md:w-1/2  text-slate-50 w-full px-5 text-center leading-7 py-10">
          <h2 className=" text-4xl font-bold py-5">ABOUT US</h2>

         <div className="relative">
         <p className="after:absolute after:content-[''] after:w-20 after:h-1 after:bg-fuchsia-500 after:-bottom-4 after:left-1/2 after:-translate-x-1/2">
          At "What If?", we believe everyone has a great imagination, and we're here to help you use it. Our platform lets you create new stories and share them with friends. Want to change a movie ending or explore different life events? It makes it easy and fun!
          </p>
         </div>

         <div className="relative my-3">
         <p className="pt-3 after:absolute after:content-[''] after:w-20 after:h-1 after:bg-fuchsia-500 after:-bottom-4 after:left-1/2 after:-translate-x-1/2">
          Pick a topic, answer a few questions, and let our AI craft a unique story for you. Whether you're reimagining your favorite TV shows or exploring alternate life events, the possibilities are endless.
          </p>
         </div>

         <div className="relative ">
         <p className="pt-3 after:absolute after:content-[''] after:w-20 after:h-1 after:bg-fuchsia-500 after:-bottom-4 after:left-1/2 after:-translate-x-1/2">
          Join our community and discover amazing stories. "What If?" lets you dream up incredible scenarios and share them with the world. Dive into the fun , see where your imagination takes you!
          </p>
         </div>

        </div>

<div className="image w-full  md:w-1/2 ">
  <img src={first} className='w-full' alt="" />
</div>
   
   
         

      </div>


<div className="whatIf flex flex-wrap mx-auto justify-center items-center my-16  w-11/12">

<div className="image w-full md:w-1/2">
  <img src={second} className='w-4/5' alt="" />
</div>

<div className="content w-full md:w-2/5 my-16">
<h2 className='bg-gradient-to-r from-blue-400 via-violet-900 to-blue-500 inline-block text-transparent bg-clip-text text-4xl font-bold my-2 underline decoration-blue-600'>ABOUT US</h2>

  <ul className='ml-0'>
    <li className="py-3 text-lg font-extrabold leading-6">
      <span className='text-3xl pr-1'>.</span>What If? is a cool game where you can imagine different worlds.  
    </li>

    <li className="py-3 text-lg font-extrabold leading-6">

    <span className='text-3xl pr-1'>.</span> You can play it on your phone or computer. It's fun to think about what would happen if things were different. For example, what if you were a superhero? Or what if dinosaurs still lived?
    </li>

    <li className="py-3 text-lg font-extrabold leading-6">
    <span className='text-3xl pr-1'>.</span>Lots of people play our game and share their ideas. We also have special events where everyone gets together to imagine new things. It's a great way to have fun and be creative!
    </li>
  </ul>

</div>





</div>



<div className="nameWlogo flex flex-wrap mx-auto justify-center align-middle  w-4/5">
  
<div className="content mx-auto pt-10 w-full md:w-1/2 ">
<h2 className='bg-gradient-to-r from-blue-400 via-violet-900 to-blue-500 inline-block text-transparent bg-clip-text text-2xl font-bold my-2 mx-3 underline decoration-blue-600'>What If? - Our Name and Logo</h2>

<ul className='mx-3'>
    <li className="py-2 text-md font-extrabold leading-6">
      <span className='text-3xl pr-1'>.</span>The name "What If?" is simple but makes you think about lots of different things. It's like asking a question that has a million answers! Our logo looks cool and shows that you can imagine anything.  
    </li>

    <li className="py-2 text-md font-extrabold leading-6">

    <span className='text-3xl pr-1'>.</span> We have lots of players who love to think up new ideas. They share their stories with each other, and it's really fun! Our logo also stands for all the people who play our game and have big imaginations.  
    </li>

    <li className="py-2 text-md font-extrabold leading-6">
    <span className='text-3xl pr-1'>.</span>So, join us and see what amazing things you can imagine!
    </li>
  </ul>
</div>


<div className="image w-full md:w-1/2">
  <img src={logo} className='w-full' alt="logo" />
</div>


</div>



<div className="core text-center mt-10 lg:mb-96 w-11/12">

<h2 className='bg-gradient-to-r from-blue-400 via-violet-900 to-blue-500 inline-block text-transparent bg-clip-text text-5xl font-bold my-2 underline decoration-blue-600 mx-3'>Core Value</h2>


<div className="relative sm:max-md:flex flex-col justify-center items-center">
  <div className="mx-auto my-2 md:absolute border-violet-800 border-4 w-52 h-52 rounded-full pt-7 left-1/2 md:-translate-x-1/2 z-10 bg-slate-50 px-2 mt-7">
    <h3 className='text-blue-950 underline decoration-blue-950 text-2xl'>Belief</h3>

    <p className='text-lg text-slate-950'>We believe in the power of imagination and creativity.</p>
  </div>

  <div className="mx-auto my-2 border-violet-800 md:absolute border-4 w-52 h-52 rounded-full pt-7 left-1/3 md:-translate-x-1/3 top-24 bg-gradient-to-r from-blue-500  to-violet-800 text-slate-50 md:mx-2 px-2">
    <h3 className='text-2xl underline decoration-slate-50'>Purpose</h3>

    <p className='text-lg'>Create fun and thought-provoking stories that entertain and engage.</p>
  </div>

  <div className="mx-auto my-2  border-violet-800 md:absolute border-4 w-52 h-52 rounded-full pt-10 left-2/3 md:-translate-x-2/3 top-24 bg-gradient-to-r from-blue-500  to-violet-800 text-slate-50 md:mx-2 px-2">
    <h3 className='text-2xl underline decoration-slate-50'>Values</h3>

    <p className='text-lg'>Innovation, integrity, inclusivity, and creativity.</p>
  </div>

  
</div>

</div>




<div className="testing mx-auto lg:mb-24 w-4/5 my-16">
<img src={mainbox} alt="if you interested" />
</div>



<div className="last w-full lg:w-3/4 text-center mx-auto lg:text-3xl font-bold flex ">

<img src={box1} className='w-20' alt="" />
  <p>For partnership and business inquiries, please contact <span className='bg-gradient-to-r from-blue-400 via-violet-900 to-blue-500 inline-block text-transparent bg-clip-text underline decoration-blue-600'>bughub.sales@gmail.com</span></p>
  <img src={box2} className='w-20' alt="" />
</div>




    </div>
    
    
    
    
    
    
  
    
    
    
    </>
  )
}
