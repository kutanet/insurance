package Pages;

import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

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
}
