"doc string"
import unittest
import time
from selenium import webdriver


class Incorrect(unittest.TestCase):
    "doc string"
    def setUp(self):
        self.driver = webdriver.Chrome("D:\\Selenium Test\\Selenium-Test\\Files\\chromedriver")
        self.driver.implicitly_wait(30)
        self.verification_errors = []
        self.accept_next_alert = True

    def test_incorrect(self):
        "doc string"
        driver = self.driver
        driver.get(
            "https://media.prod.mdn.mozit.cloud/attachments/2012/07/09/3698/"
            "391aef19653595a663cc601c42a67116/image_upload_preview.html?myPhoto=exams.jpg")
        self.assertIn("media", driver.current_url)
        time.sleep(2)
        e_l = driver.find_element_by_id("uploadImage")
        time.sleep(2)
        e_l.send_keys("D:\\Selenium Test\\Selenium-Test\\Files\\search.txt")
        time.sleep(2)
        self.assertEqual("You must select a valid image file!", self.close_alert_and_get_its_text())
        driver.save_screenshot("D:\\Selenium Test\\Selenium-Test\\ScreenShots\\"
                               "Unsucsesfull Test.png")
        time.sleep(2)
        driver.find_element_by_xpath("//input[@value='Send']").click()

    def close_alert_and_get_its_text(self):
        "doc string"
        try:
            alert = self.driver.switch_to.alert
            alert_text = alert.text
            if self.accept_next_alert:
                alert.accept()
            else:
                alert.dismiss()
            return alert_text
        finally:
            self.accept_next_alert = True

    def tearDown(self):
        self.driver.quit()
        self.assertEqual([], self.verification_errors)


if __name__ == "_main_":
    unittest.main()
