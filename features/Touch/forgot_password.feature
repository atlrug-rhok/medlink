Feature: Visit "Forgot Password" Web Page
  As a visitor to the website
  I want to see everything that I expect on the forgot_password_page
  so I can know that the site is working

TOUCHSTART
  * "mobile - Forgot password"
    * "Forgot Password", <instructions>, Email, PCVID, Submit button  

  * "desktop - Forgot password"
    * "Forgot Password", <instructions>, Email, PCVID, Submit button  
TOUCHEND

  Scenario: Check stuff on "Forgot Password" page

     When I go to the forgot_password page
     Then I should see the image "brand"
     Then I should see "Peace Corps" inside "h1"
     Then I should see "Medical Supplies" inside "h4"

     Then I should see "Change Password" inside "a"
     Then I should see "Help" inside "a"
     Then I should see "Sign Out" inside "a"

     Then I should see "Forgot Password" inside "h2"
     Then I should see "Please enter in your email address and PCVID that we have on file." inside "h3"
     Then I should see "You will receive an email with instructions to help you reset your password." inside "h3"
     Then I should see field "email@email.com"
     Then I should see field "PCV ID"
     Then I should see the button "Submit"
