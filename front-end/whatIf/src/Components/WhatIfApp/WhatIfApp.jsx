import React from 'react'
import appleLogo from '../../assets/appleLogo.svg'
import googleLogo from '../../assets/googlePlayLogo.svg'
import qrCode from '../../assets/qrCode.png'
import whatIfImage from '../../assets/whatIfImage.png'

export default function WhatIfApp() {
  return (
    <div className='appPage'>
      <div className="w-50 m-auto text-center">
        <p className='fs-64 fs-1 fw-bold'>What If App</p>
        <p className='mt-2 fw-bold'>Millions of scenairos on every topic </p>
      </div>
      <div className="middle-section">
        <div className="download-links w-50 m-auto d-flex justify-content-center mt-4">
          <a href="#" target='_blank' className='me-3' data-aos="fade-right" data-aos-duration="2000">
            <div className="p-1 bg-black rounded-3 d-flex">
              <img src={appleLogo} className='w-35 me-1' alt="" />
              <div className="">
                <p className='fs-8 text-white fw-lighter'>Download on the </p>
                <h4 className='text-white fw-bold'>App Store</h4>
              </div>
            </div>
          </a>
          <a href="#" target='_blank' className='ms-3' data-aos="fade-left" data-aos-duration="2000">
            <div className="p-1 bg-black rounded-3 d-flex">
              <img src={googleLogo} className='w-25 me-1' alt="" />
              <div className="">
                <p className='fs-8 text-white fw-lighter'>GET IT ON &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                <h4 className='text-white fw-bold'>Google Play</h4>
              </div>
            </div>
          </a>
        </div>
        <p className='my-4 fw-bold text-center'>Scan this QR code to download the app now</p>
        <div className="w-25 m-auto">
          <img src={qrCode} className='w-100' alt="" />
        </div>
        <div className="w-50 m-auto fw-bold text-center">
        <p>"What If" is your ultimate destination for exploring alternate realities <br/> and outcomes. Whether you're into TV shows, movies, history, or <br/> everyday life events, you'll find endless scenarios to ignite your <br/> imagination and creativity. Dive in and<br/>
        discover new possibilities!</p>
        </div>
      </div>
      <div className="w-75 m-auto">
        <img src={whatIfImage} className='w-100' alt="" />
      </div>
    </div>
  )
}
