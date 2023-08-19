package Pages;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
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

public class DiceProfilePage extends Page{
    public DiceProfilePage(){ Page.setUrl("https://www.dice.com/dashboard/profiles/active");}

    //    Elements-----------



//    Methods----------------
    public SearchContext expandRootElement (WebElement element) {
        SearchContext shadowRoot = (SearchContext) ((JavascriptExecutor) getDriver()).executeScript(
                "return arguments[0].shadowRoot", element);
        return shadowRoot;
    }
    public String getSomeText () {
        return getDriver ().findElement (By.cssSelector ("#shadow_content > dhi-candidates-css-reset"))
                .getText ();
    }
    public String getShadowDomText () {
        WebElement shadowHost = getDriver ().findElement (By.xpath ("//dhi-candidates-wired-candidate-profile[@class='theme-candidates hydrated']"));
        SearchContext shadowRoot = shadowHost.getShadowRoot ();
        String text = shadowRoot.findElement (By.cssSelector ("#shadow_content > dhi-candidates-css-reset"))
                .getText ();
        return text;
    }
    public String getNestedShadowText () {
        WebElement shadowHost = getDriver ().findElement (By.xpath ("//dhi-candidates-wired-candidate-profile[@class='theme-candidates hydrated']"));
        SearchContext shadowRoot = shadowHost.getShadowRoot ();
        WebElement shadowContent = shadowRoot.findElement (By.cssSelector ("dhi-candidates-candidate-profile[class='hydrated']"));
        SearchContext shadowRootTwo = shadowContent.getShadowRoot ();
        String nestedText = shadowRootTwo.findElement (By.cssSelector ("dhi-candidates-candidate-profile:nth-child(2) > article:nth-child(1) > div:nth-child(2) > dhi-seds-container:nth-child(1) > dhi-candidates-wired-candidate-profile-banner:nth-child(2) > dhi-candidates-candidate-profile-banner:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > dhi-candidates-candidate-profile-banner-view:nth-child(1) > dhi-seds-typography-heading:nth-child(1) > span:nth-child(1)")).getText ();
        return nestedText;
    }


}
