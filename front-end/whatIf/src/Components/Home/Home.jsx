import React from 'react'
import appleLogo from '../../assets/appleLogo.svg'
import googleLogo from '../../assets/googlePlayLogo.svg'
import middleImage from '../../assets/middleImage.png'
import mobile from '../../assets/mobileImage.png'
import box1 from '../../assets/box1.svg'
import box2 from '../../assets/box2.svg'
import circle1 from '../../assets/circle1.png'
import circle2 from '../../assets/circle2.png'
import circle3 from '../../assets/circle3.jpeg'
import girle from '../../assets/finalllllllll copyddddf 1.png'
import message from '../../assets/message.png'
import mainLogo from '../../assets/mainLogo.png'

export default function Home() {
  return (
    <div className='homePage'>
      <div className="wInPhone w-50 m-auto text-center">
        <p className='fs-64 fw-bold'>What If - A Game for the Imaginative Thinker</p>
      </div>
      <div className="w-secTitle fw-bold m-auto mt-3 mb-5 text-center">
        <h4>The "What If" game lets players explore alternate scenarios and outcomes in sports, <br /> movies, and life.</h4>
      </div>
      <div className="middle-section">
        <div className="download-links w-50 m-auto d-flex justify-content-center mt-5">
          <a href="#" target='_blank' className='me-3 nav-z'>
            <div className="p-1 bg-black rounded-3 d-flex box">
              <img src={appleLogo} className='w-35 me-1' alt="" />
              <div className="">
                <p className='fs-8 text-white fw-lighter'>Download on the </p>
                <h4 className='text-white fw-bold'>App Store</h4>
              </div>
            </div>
          </a>
          <a href="#" target='_blank' className='ms-3 nav-z'>
            <div className="p-1 bg-black rounded-3 d-flex box">
              <img src={googleLogo} className='w-25 me-1' alt="" />
              <div className="">
                <p className='fs-8 text-white fw-lighter'>GET IT ON &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                <h4 className='text-white fw-bold'>Google Play</h4>
              </div>
            </div>
          </a>
        </div>
        <div className="w-90 m-auto position-relative">
          <img src={middleImage} className='w-100' alt="" />
          <div className="mobileImage position-absolute">
            <img src={mobile} className='w-75' alt=""/>
          </div>
          <div className="boxImage position-absolute d-flex">
            <img src={box1} className='w-100 box1' alt="" />
            <img src={box2} className='w-100 box2 ms-3' alt="" />
          </div>
        </div>
      </div>
      <div className="middle-section2 row w-75 m-auto mt-5 align-items-center">
        <div className="col-md-4" data-aos="fade-right" data-aos-duration="2500">
          <img src={circle1} className='img2' alt="" />
        </div>
        <div className="col-md-8" data-aos="fade-left" data-aos-duration="2500">
          <p className='bg-maincolor fs-2 resInPhone'>Imagine alternate realities with "What If"</p>
          <p className='zenDotes mt-1 resInPhone'>Imagine different outcomes: Lionel Messi at Real <br /> Madrid or Iron Man's continued adventures. <br /> Reimagine movie endings and life events <br />
            with friends, sparking <br />creative Chats.</p>
        </div>
      </div>
      <div className="middle-section3 row w-75 m-auto mt-5 align-items-center p-3">
        <div className="col-md-8">
          <p className='customColor text-white fs-2 resInPhone'>Curious About Football's Alternate Universes?</p>
          <p className='zenDotes mt-1 text-white resInPhone'>Let's Test Your Imagination! Explore "What If" <br /> scenarios related to sports clubs, players,<br />
            and matches. Share your creative<br />
            predictions and compare<br />
            them with others!</p>
        </div>
        <div className="col-md-4">
          <img src={circle2} className='img2' alt="" />
        </div>
      </div>
      <div className="middle-section2 row w-75 m-auto mt-5 align-items-center">
        <div className="col-md-4" data-aos="fade-right" data-aos-duration="2500">
          <img src={circle3} className='img2' alt="" />
        </div>
        <div className="col-md-8" data-aos="fade-left" data-aos-duration="2500">
          <p className='bg-maincolor fs-2 resInPhone'>Discover More Categories Like TV Shows with "What If"</p>
          <p className='zenDotes mt-1 resInPhone'>Reimagine alternate endings for your favorite <br /> TV shows and explore scenarios with<br />
            different choices and plot twists.<br />Share your creative ideas with <br />friends and compare them <br />to the originals!</p>
        </div>
      </div>
      <div className="last-section row w-75 m-auto mt-5 align-items-center">
        <div className="col-md-5 pt-4">
        <div className="d-flex links justify-content-center">
          <a href="#" target='_blank' className='me-3'>
            <div className="p-1 bg-black rounded-3 d-flex box">
              <img src={appleLogo} className='w-35 me-1' alt="" />
              <div className="">
                <p className='fs-8 text-white fw-lighter'>Download on the </p>
                <h4 className='text-white fw-bold'>App Store</h4>
              </div>
            </div>
          </a>
          <a href="#" target='_blank' className='ms-3'>
            <div className="p-1 bg-black rounded-3 d-flex box">
              <img src={googleLogo} className='w-25 me-1 googleLogo' alt="" />
              <div className="">
                <p className='fs-8 text-white fw-lighter'>GET IT ON &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                <h4 className='text-white fw-bold'>Google Play</h4>
              </div>
            </div>
          </a>
        </div>
          <div className="d-flex justify-content-center">
          <img src={mainLogo} className='w-50 col-md-12' alt=""/>
          </div>
        </div>
        <div className="col-md-7 mt-5 position-relative">
          <img src={girle} className='w-50 float-end' alt="" />
          <img src={message} className='message w-50 float-end position-absolute' alt="" />
          <p className='messageText position-absolute'>Download  "What If" <br/> Now and Start <br/> Playing!</p>
        </div>
      </div>
    </div>
  )
}
