package Pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.Select;

import java.util.List;

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

    public void submitForm() {
        submitButton.click();
    }


    public void fillOutPasswordField(){

        passwordField.sendKeys("Password1!");
        reEnterPasswordField.sendKeys("Password1!");


    }



}




