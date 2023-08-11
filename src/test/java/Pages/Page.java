package Pages;

import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static support.TestContext.*;

public class Page {
    protected static String url;

    public Page(){

        PageFactory.initElements(getDriver(), Page.this);
    }
    public static void setUrl(String newUrl) {
        url = newUrl;
    }

    public static void open(){
        getDriver().get(url);
    }
    public  void click(WebElement element){
        waitingToBeClickable(element);
        try {
            element.click();
        } catch(ElementClickInterceptedException e){
            System.err.println("click failed for "+element);
            jsClick(element);
        }

    }
    public void waitingToBeClickable(WebElement element){
        getWait().until(ExpectedConditions.elementToBeClickable(element));
    }
    public String getTitle() {
        return getDriver().getTitle(); // Retrieve and return the title of the current web page
    }

    public boolean isElementPresent(WebElement element) {
        try {
            WebDriverWait wait = new WebDriverWait(getDriver(), Duration.ofSeconds(2)); // Adjust timeout if needed
            wait.until(ExpectedConditions.visibilityOf(element));
            return true; // Element is present
        } catch (NoSuchElementException | TimeoutException e) {
            return false; // Element is not present
        }
    }
}
