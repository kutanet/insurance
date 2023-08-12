package Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;
import java.util.stream.Stream;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class MainPage extends Page {

    public MainPage() {
        Page.setUrl("http://154.41.228.85/");
    }

//    Elements-----------

    @FindBy(xpath = "//input[@id='name']")
    private WebElement nameField;
    @FindBy(xpath = "//select[@class=\"form-control\"]")
    private WebElement countrySelection;
    @FindBy(xpath = "//input[@id='zip-code']")
    private WebElement zipCodeField;
    @FindBy(xpath = "//input[@id='street']")
    private WebElement streetField;
    @FindBy(xpath = "//input[@id='suit-apt']")
    private WebElement suiteField;
    @FindBy(xpath = "//input[@id='city']")
    private WebElement cityField;
   @FindBy(xpath = "//input[@id='state']")
    private WebElement stateField;
   @FindBy(xpath = "//textarea[@id='additional']")
    private WebElement additionalInfoField;
   @FindBy(xpath = "//input[@id='username']")
    private WebElement usernameField;
   @FindBy(xpath = "//input[@id='password']")
    private WebElement passwordField;
   @FindBy(xpath = "//input[@id='retype_password']")
    private WebElement reEnterPasswordField;
   @FindBy(xpath = "//input[@id='email']")
    private WebElement emailField;
   @FindBy(xpath = "//input[@id='phone_number']")
    private WebElement phoneNumberField;
   @FindBy(xpath = "//input[@name='date']")
    private WebElement dateOfBirthField;
   @FindBy(xpath = "//input[@id='male']")
    private WebElement maleGenderRadioButton;
    @FindBy(xpath = "//input[@id='Female']")
    private WebElement femaleGenderRadioButton;
    @FindBy(xpath = "//input[@id='non-binary']")
    private WebElement nonBinaryGenderRadioButton;
   @FindBy(xpath = "//input[@id='agreement']")
    private WebElement agreementCheckbox;
   @FindBy(xpath = "//select[@class='custom-select']")
    private WebElement productSelectionField;
   @FindBy(xpath = "//button[normalize-space()='Submit form']")
    private WebElement submitButton;
    @FindBy(xpath = "//iframe[@src='http://154.41.228.85/iframe']")
    private WebElement iFrame;
    @FindBy(id = "Name")
    private WebElement emergencyNameField;
    @FindBy(id = "Phone")
    private WebElement emergencyPhoneField;
   @FindBy(xpath = "//small[normalize-space()='The email must be a valid email address.']")
    private WebElement emailFormatErrorMessage;













//    Methods----------------

    public void fillName(String nameOfaClient){

        nameField.click();
        nameField.clear();
        nameField.sendKeys(nameOfaClient);
    }
    public void fillZipCodeField(String nameOfaClient){

        zipCodeField.click();
        zipCodeField.clear();
        zipCodeField.sendKeys(nameOfaClient);
    }

    public void chooseUSA(){

        countrySelection.click();
        Select list=new Select(countrySelection);
        list.selectByValue("usa");
    }

    public void fillStreetField(String street){
        streetField.click();
        streetField.clear();
        streetField.sendKeys(street);
    }

    public void fillAptField(String apt){
        suiteField.click();
        suiteField.clear();
        suiteField.sendKeys(apt);
    }

    public void fillCityField(String city) {
        cityField.click();
        cityField.clear();
        cityField.sendKeys(city);
    }

    public void fillStateField(String state) {
        stateField.click();
        stateField.clear();
        stateField.sendKeys(state);
    }

    public void fillAdditionalInfoField(String info) {
        additionalInfoField.click();
        additionalInfoField.clear();
        additionalInfoField.sendKeys(info);
    }

    public void fillUsernameField(String username) {
        usernameField.click();
        usernameField.clear();
        usernameField.sendKeys(username);
    }

    public void fillPasswordField(String password) {
        passwordField.click();
        passwordField.clear();
        passwordField.sendKeys(password);
    }

    public void fillReEnterPasswordField(String password) {
        reEnterPasswordField.click();
        reEnterPasswordField.clear();
        reEnterPasswordField.sendKeys(password);
    }

    public void fillEmailField(String email) {
        emailField.click();
        emailField.clear();
        emailField.sendKeys(email);
    }

    public void fillPhoneNumberField(String phone) {
        phoneNumberField.click();
        phoneNumberField.clear();
        phoneNumberField.sendKeys(phone);
    }

    public void fillDateOfBirthField(String birthDate) {
        dateOfBirthField.click();
        dateOfBirthField.clear();
        dateOfBirthField.sendKeys(birthDate);
    }

    public void chooseMaleGender(){
        maleGenderRadioButton.click();
    }

    public void acceptAgreement(){
        agreementCheckbox.click();
    }

    public void chooseProductsFromList(List<String> list){
        Select listOfProducts = new Select(productSelectionField);
        for (String value : list) {
            System.out.println(value);
            listOfProducts.selectByValue(value);
        }
    }

    public void switchToIframe(){
        getDriver().switchTo().frame(iFrame);
    }

    public void fillEmergencyContactNameField(String name) {
        emergencyNameField.click();
        emergencyNameField.clear();
        emergencyNameField.sendKeys(name);
    }

    public void fillEmergencyPhoneField(String phone) {
        emergencyPhoneField.click();
        emergencyPhoneField.clear();
        emergencyPhoneField.sendKeys(phone);
    }

    public void submitForm() { submitButton.click(); }

    public void fillOutStateFieldWithInvalidData() throws InterruptedException {
        stateField.sendKeys( "California1");
        acceptAgreement();
        Thread.sleep(5000);
        submitButton.click();

    }

    public void fillOutAllTheFieldsWithValidData() throws InterruptedException {
        nameField.sendKeys("Sherlock Holmes");
        chooseUSA();
        zipCodeField.sendKeys("92100");
        streetField.sendKeys("223B Baker Street");
        suiteField.sendKeys("100");
        cityField.sendKeys("London");
        stateField.sendKeys("LondonDC");
        usernameField.sendKeys("user");
        passwordField.sendKeys("pass!");
        reEnterPasswordField.sendKeys("pass!");
        emailField.sendKeys("mail@mail.com");
        phoneNumberField.sendKeys("+442012431234");
        dateOfBirthField.sendKeys("06/01/1982");
        chooseMaleGender();
        List<String> counries = Stream.of("auto", "home", "life").toList();
        chooseProductsFromList(counries);
        acceptAgreement();
        Thread.sleep(5000);
        submitButton.click();


    }

    public void waitForEmailField(){
        new WebDriverWait(getDriver(), Duration.ofSeconds(10)).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//input[@id='email']")));

    }
//    public boolean  emailMessageFormat(){
//
//        return assertThat(emailFormatErrorMessage.isDisplayed()).isFalse();
//
//    }


    public void fillOutPasswordField(){

        passwordField.sendKeys("Password1!");
        reEnterPasswordField.sendKeys("Password1!");
        //fillsPasswordField
    }

    public boolean isEmailFormatMessagePresents(){

       return isElementPresent(emailFormatErrorMessage);
    }
    public void chooseCountry(String country){
//        countrySelection.click();
        Select list=new Select(countrySelection);
        list.selectByValue(country.toLowerCase());

    }


    public void fillOutAllTheFieldsExceptPW_WithValidData() {
            nameField.sendKeys("Sherlock Holmes");
            chooseUSA();
            zipCodeField.sendKeys("92100");
            streetField.sendKeys("BakerStreet");
            suiteField.sendKeys("100");
            cityField.sendKeys("London");
            stateField.sendKeys("LondonDC");
            usernameField.sendKeys("user");
            emailField.sendKeys("mail@mail.com");
            phoneNumberField.sendKeys("+442012431234");
            dateOfBirthField.sendKeys("06/01/1982");
            chooseMaleGender();
            List<String> counries = Stream.of("auto", "home", "life").toList();
            chooseProductsFromList(counries);


        }

        //This method fills all required fields except password
    }




