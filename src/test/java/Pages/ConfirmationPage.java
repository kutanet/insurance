package Pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ConfirmationPage extends Page {
    @FindBy(xpath = "//div[contains(text(), 'Name:')]")
    private WebElement actualName;

    @FindBy(xpath = "//div[contains(text(), 'Address:')]")
    private WebElement actualAddress;

    @FindBy(xpath = "//div[contains(text(), 'User name:')]")
    private WebElement actualUsername;

    @FindBy(xpath = "//div[contains(text(), 'Email:')]")
    private WebElement actualEmail;

    public String getActualName() {
        return getText(actualName);
    }

    public String getActualAddress() {
        return getText(actualAddress);
    }

    public String getActualUsername() {
        return getText(actualUsername);
    }

    public String getActualEmail() {
        return getText(actualEmail);
    }

    private String getText(WebElement element) {
        return element.getText().substring(element.getText().indexOf(":") + 2);
    }
}
