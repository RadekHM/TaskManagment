"doc string"
import unittest
import time
from selenium import webdriver



class SeleniumTest(unittest.TestCase):
    "doc string"
    def setUp(self):
        self.driver = webdriver.Chrome("D:\\Selenium Test\\Selenium-Test\\Files\\chromedriver")
        self.driver.implicitly_wait(30)
        self.verification_errors = []
        self.accept_next_alert = True

    def test_selenium(self):
        "doc string"
        driver = self.driver
        driver.get(
            "https://media.prod.mdn.mozit.cloud/attachments/2012/07/09/"
            "3698/391aef19653595a663cc601c42a67116/image_upload_preview.html")
        self.assertIn("mozit", driver.current_url)
        driver.find_element_by_xpath("//input[@value='Send']").click()
        time.sleep(2)
        driver.save_screenshot("D:\\Selenium Test\\Selenium-Test\\"
                               "ScreenShots\\Missing File Test.png")

    def tearDown(self):
        self.driver.quit()
        self.assertEqual([], self.verification_errors)


if __name__ == "__main__":
    unittest.main()
