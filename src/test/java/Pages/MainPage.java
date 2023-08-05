package Pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.Select;

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









}




