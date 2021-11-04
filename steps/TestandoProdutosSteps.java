package steps;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import static org.junit.Assert.*;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

public class TestandoProdutosSteps {

    WebDriver driver;

    @Test
    @Before
    public void inicio() {
        System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(10000, TimeUnit.MILLISECONDS);
    }


    @Dado("que o usuario esta na pagina do google")
    public void que_o_usuario_esta_na_pagina_do_google() {
        driver.get("https://www.google.com.br/");
    }

    @Quando("pesquisa por {string}")
    public void pesquisa_por(String produto) {
        driver.findElement(By.name("q")).sendKeys(produto);
        driver.findElement(By.name("q")).sendKeys(Keys.ENTER);

    }

    @Entao("o titulo da pagina deve {string}")
    public void o_titulo_da_pagina_deve(String tituloObtido) {
        driver.getTitle();
        assertEquals(tituloObtido, driver.getTitle());
    }

    @After
    public void finalizar() {
        driver.quit();
    }
}
