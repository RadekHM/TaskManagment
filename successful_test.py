"doc string"
import unittest
import time
from selenium import webdriver


class UntitledTestCase(unittest.TestCase):
    "doc string"
    def setUp(self):
        self.driver = webdriver.Chrome("D:\\Selenium Test\\Selenium-Test\\Files\\chromedriver")
        self.driver.implicitly_wait(30)
        self.verification_errors = []
        self.accept_next_alert = True

    def test_untitled_test_case(self):
        "doc string"
        driver = self.driver
        driver.get("https://media.prod.mdn.mozit.cloud/attachments/"
                   "2012/07/09/3698/391aef19653595a663cc601c42a67116/image_"
                   "upload_preview.html?myPhoto=7hgm3O1.jpg")
        self.assertIn("prod", driver.current_url)
        time.sleep(2)
        driver.find_element_by_id("uploadImage").clear()
        u_m = driver.find_element_by_id("uploadImage")
        u_m.send_keys("D:\\Selenium Test\\Selenium-Test\\Files\\7hgm3O1.jpg")
        time.sleep(2)
        driver.save_screenshot("D:\\Selenium Test\\Selenium-Test\\ScreenShots\\Sucsesfull Test.png")
        send = driver.find_element_by_xpath("//input[@value='Send']")
        send.click()
        time.sleep(2)

    def tearDown(self):
        self.driver.quit()
        self.assertEqual([], self.verification_errors)


if __name__ == "__main__":
    unittest.main()
