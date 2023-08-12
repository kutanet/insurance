package definitions;

import Pages.ConfirmationPage;
import Pages.MainPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.assertj.core.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.Select;

import java.util.List;
import java.util.Map;

import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDataFromYMLFile;
import static support.TestContext.getDriver;

import org.openqa.selenium.WebElement;

public class insuranceSteps {

    @Then("I choose {string} from the products list")
    public void iChooseFromTheProductsList(String var1) {
        WebElement productList = getDriver().findElement(By.xpath("//select[@class='custom-select']"));
        Select listOfProducts = new Select(productList);
        listOfProducts.selectByVisibleText(var1);
        System.out.println("Features ");
        System.out.println("GITTT lab ");
    }

    @And("I verify that the error message with xpath {string} is displayed")
    public void iVerifyThatTheErrorMessageWithXpathIsDisplayed(String xpathVar) {
        getDriver().findElement(By.xpath(xpathVar)).isDisplayed();
        System.out.println("Error message");
    }

    @And("I verify that the error message with xpath {string} is not displayed")
    public void iVerifyThatTheErrorMessageWithXpathIsNotDisplayed(String xpathVar) {
        // The 1st variant
        boolean result = getDriver().findElements(By.xpath(xpathVar)).isEmpty();
        assertThat(result).isTrue();
        // The 2nd variant
        //List<WebElement> result = getDriver().findElements(By.xpath(xpathVar));
        //assertThat(result.size()).isEqualTo(0);
    }

    @Then("I choose products from the products list:")
    public void iChooseProductsFromTheProductsList(List<String> list) {
        Select listOfProducts = new Select(getDriver().findElement(By.xpath("//select[@class='custom-select']")));
        for (String value : list) {
            listOfProducts.selectByValue(value);
        }
    }


    @Then("I scroll down to {string}")
    public void iScrollDownTo(String arg0) throws InterruptedException {
        WebElement element = getDriver().findElement(By.xpath(arg0));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + 1 + ");", element);
        Thread.sleep(500);
    }

    @Then("I fill out the name field with {string}")
    public void iFillOutTheNameFieldWith(String nameVariable) {
        MainPage page = new MainPage();
        page.fillName(nameVariable);
    }

    @Then("I fill out the zip code field with {string}")
    public void iFillOutTheZipCodeFieldWith(String zipVariable) {
        MainPage page = new MainPage();
        page.fillZipCodeField(zipVariable);
    }

    @Then("I choose USA from the country list")
    public void iChooseUSAFromTheCountryList() {
        MainPage page1 = new MainPage();
        page1.chooseUSA();
    }

    @Then("I fill out the street field with {string}")
    public void iFillOutTheStreetFieldWith(String street) {
        new MainPage().fillStreetField(street);
    }

    @Then("I fill out the city field with {string}")
    public void iFillOutTheCityFieldWith(String city) {
        new MainPage().fillCityField(city);
    }

    @Then("I fill out the apartment field with {string}")
    public void iFillOutTheApartmentFieldWith(String apt) {
        new MainPage().fillAptField(apt);
    }

    @Then("I fill out the state field with {string}")
    public void iFillOutTheStateFieldWith(String state) {
        new MainPage().fillStateField(state);
    }

    @Then("I fill out the additional info field with {string}")
    public void iFillOutTheAdditionalInfoFieldWith(String info) {
        new MainPage().fillAdditionalInfoField(info);
    }

    @Then("I fill out the username field with {string}")
    public void iFillOutTheUsernameFieldWith(String username) {
        new MainPage().fillUsernameField(username);
    }


    @Then("I fill out the password field with {string}")
    public void iFillOutThePasswordFieldWith(String password) {
        new MainPage().fillPasswordField(password);
    }

    @Then("I fill out the reenter password field with {string}")
    public void iFillOutTheReenterPasswordFieldWith(String password) {
        new MainPage().fillReEnterPasswordField(password);
    }

    @Then("I fill out the email field with {string}")
    public void iFillOutTheEmailFieldWith(String email) {
        new MainPage().fillEmailField(email);
    }

    @Then("I fill out the phone number field with {string}")
    public void iFillOutThePhoneNumberFieldWith(String phoneNumber) {
        new MainPage().fillPhoneNumberField(phoneNumber);
    }

    @Then("I fill out the birthday field with {string}")
    public void iFillOutTheBirthdayFieldWith(String birthday) {
        new MainPage().fillDateOfBirthField(birthday);
    }

    @Then("I choose male gender")
    public void iChooseMaleGender() {
        new MainPage().chooseMaleGender();
    }

    @Then("I choose user products from the products list")
    public void iChooseUserProductsFromTheProductsList() {
        List<String> products = List.of("auto", "life", "health");
        new MainPage().chooseProductsFromList(products);
    }

    @Then("I switch to emergency contact iframe")
    public void iSwitchToEmergencyContactIframe() {
        new MainPage().switchToIframe();
    }

    @Then("I fill out the emergency contact name field with {string}")
    public void iFillOutTheEmergencyContactNameFieldWith(String name) {
        new MainPage().fillEmergencyContactNameField(name);
    }

    @Then("I fill out the emergency contact phone number field with {string}")
    public void iFillOutTheEmergencyContactPhoneNumberFieldWith(String phone) {
        new MainPage().fillEmergencyPhoneField(phone);
    }

    @Then("I submit form")
    public void iSubmitForm() {
        new MainPage().submitForm();
    }

    @Then("I accept agreement")
    public void iAcceptAgreement() {
        new MainPage().acceptAgreement();
    }

    @Then("I verify that the name in the confirmation page is {string}")
    public void iVerifyThatTheNameInTheConfirmationPageIs(String name) {
        String actualName = new ConfirmationPage().getActualName();
        assertThat(actualName).isEqualTo(name);
    }

    @And("I verify that the address in the confirmation page is {string}")
    public void iVerifyThatTheAddressInTheConfirmationPageIs(String address) {
        String actualAddress = new ConfirmationPage().getActualAddress();
        assertThat(actualAddress).isEqualTo(address);
    }

    @And("I verify that the username in the confirmation page is {string}")
    public void iVerifyThatTheUsernameInTheConfirmationPageIs(String username) {
        String actualUsername = new ConfirmationPage().getActualUsername();
        assertThat(actualUsername).isEqualTo(username);
    }

    @And("I verify that the email in the confirmation page is {string}")
    public void iVerifyThatTheEmailInTheConfirmationPageIs(String email) {
        String actualEmail = new ConfirmationPage().getActualEmail();
        assertThat(actualEmail).isEqualTo(email);
    }


    @Then("I fill out the password field with various outlines")
    public void iFillOutThePasswordFieldWithVariousOutlines() {
        new MainPage().fillOutPasswordField();
    }

    @And("I verify that the review page is open")
    public String iVerifyThatTheReviewPageIsOpen() throws InterruptedException {

        return getDriver().getTitle();
        //titleVerification

    }


    @Then("I fill out all the fields with valid data")
    public void iFillOutAllTheFieldsWithValidData() throws InterruptedException {
        new MainPage().fillOutAllTheFieldsWithValidData();
    }

    @And("I verify that the review page is opened")
    public void iVerifyThatTheReviewPageIsOpened() {
        ConfirmationPage page = new ConfirmationPage();
        Assertions.assertThat("Emergency app - learning html test app").isEqualTo(page.getTitle());
    }

    @Then("I wait for email field to be present")
    public void iWaitForEmailFieldToBePresent() {
        new MainPage().waitForEmailField();
    }

    @And("I verify that email format error message is not displayed")
    public void iVerifyThatEmailFormatErrorMessageIsNotDisplayed() {
        MainPage page = new MainPage();
        assertThat(page.isEmailFormatMessagePresents()).isFalse();


    }

    @Then("I fill out all required fields from {string} file")
    public void iFillOutAllRequiredFieldsFromFile(String fileName) {
        Map<String, String> user = getDataFromYMLFile(fileName);
        MainPage page = new MainPage();
        page.waitForEmailField();
        page.fillName(user.get("name"));
        page.chooseCountry(user.get("country"));
        page.fillZipCodeField(user.get("zipcode"));
        page.fillStreetField(user.get("street"));
        page.fillAptField(user.get("apt"));
        page.fillCityField(user.get("city"));
        page.fillStateField(user.get("state"));
        page.fillUsernameField(user.get("username"));
        page.fillPasswordField(user.get("password"));
        page.fillReEnterPasswordField(user.get("password"));
        page.fillEmailField(user.get("email"));
        page.fillPhoneNumberField(user.get("phoneNumber"));
        page.fillDateOfBirthField(user.get("dateOfBirth"));
        page.chooseMaleGender();// Need to add method
        List<String> products=List.of(user.get("products"));
        page.chooseProductsFromList(products);






    }

    @And("I verify that email format error message is displayed")
    public void iVerifyThatEmailFormatErrorMessageIsDisplayed() {
        MainPage page = new MainPage();
        assertThat(page.isEmailFormatMessagePresents()).isTrue();
    }


    @Then("I fill out the rest of the required fields except password&retype_password")
    public void iFillOutTheRestOfTheRequiredFieldsExceptPasswordRetype_password() {
        new MainPage().fillOutAllTheFieldsExceptPW_WithValidData();
        //This will fill all the required fields except password&retype_password fields

//        @Then("I fill out state field with invalid data")
//        public void iFillOutStateFieldWithInvalidData() throws InterruptedException {
//            new MainPage().fillOutStateFieldWithInvalidData();
//
//        }
    }
}