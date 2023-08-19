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


public class DiceStartPage extends Page{
    public DiceStartPage(){ Page.setUrl("https://www.dice.com/dashboard/login");}

    //    Elements-----------

    @FindBy(xpath = "//input[@id='email']")
    private WebElement emailField;
    @FindBy(xpath = "//input[@id='password']")
    private WebElement passwordField;
    @FindBy(xpath = "//button[@type='submit']")
    private WebElement submitButton;


//    Methods----------------

    public void fillEmail(String email){

        emailField.clear();
        emailField.sendKeys(email);
    }
    public void fillPassword(String password){

        passwordField.clear();
        passwordField.sendKeys(password);
    }public void submit(){
        submitButton.click();
    }
}
