package definitions;
// Created by Viacheslav (Slava) Skryabin 04/01/2011

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.io.File;
import java.time.Duration;
import java.util.Date;
import java.util.Iterator;
import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;

import io.cucumber.java.en.Then;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

public class insuranceSteps {
    @Then("I choose {string} from the products list")
    public void iChooseFromTheProductsList(String var1) {
        WebElement productList = getDriver().findElement(By.xpath("//select[@class='custom-select']"));
        Select listOfProducts=new Select(productList);
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
    // not working properly
    public boolean iVerifyThatTheErrorMessageWithXpathIsNotDisplayed(String xpathVar)
    {
       return getDriver().findElements(By.xpath(xpathVar)).isEmpty();
       //System.out.println("No error message");
    }
}


