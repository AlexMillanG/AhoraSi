package mx.edu.utez.integradora;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
public class Main {
    public static WebDriver  chrome = new ChromeDriver();
    public static void main(String[] args) {
        System.setProperty("webdriver.chrome.driver","src/main/resources/drivers/chromedriver.exe");

        chrome.get("http://localhost:8080/");

        /*String btnSesion ="//*[@id=\"navbarNavDropdown\"]/ul/li[4]/button[1]";
        String correo="//*[@id=\"email\"]",
        contra="//*[@id=\"password\"]",
        btnInicio="//*[@id=\"login\"]";




        chrome.findElement(By.xpath(btnSesion)).click();

        try {
            Thread.sleep(5000);
        }catch (InterruptedException e){

        }

        chrome.findElement(By.xpath(correo)).sendKeys("super");
        chrome.findElement(By.xpath(contra)).sendKeys("1234");

        chrome.findElement(By.xpath(btnInicio)).click();*/


    String btnRegistro="//*[@id=\"navbarNavDropdown\"]/ul/li[4]/button[2]",
        nombre="//*[@id=\"name\"]",
        apPaterno="//*[@id=\"surname\"]",
        apMaterno="//*[@id=\"lastname\"]",
        correo="//*[@id=\"emailRegistro\"]",
        sexo="//*[@id=\"sex\"]",
        fecha="//*[@id=\"birthday\"]",
        pass="//*[@id=\"pass\"]",
    btnAceptar="//*[@id=\"botonRegistro\"]",
        sexo2="//*[@id=\"sex\"]/option[3]";

    chrome.findElement(By.xpath(btnRegistro)).click();
        try {
            Thread.sleep(2000);
        }catch (InterruptedException e){

        }
        chrome.findElement(By.xpath(nombre)).sendKeys("Alex Tubado");
        chrome.findElement(By.xpath(apPaterno)).sendKeys("Millan");
        chrome.findElement(By.xpath(apMaterno)).sendKeys("Gillen");
        chrome.findElement(By.xpath(correo)).sendKeys("Alex@gmail.com");
        chrome.findElement(By.xpath(sexo)).click();
        try {
            Thread.sleep(1000);
        }catch (InterruptedException e){

        }
        chrome.findElement(By.xpath(sexo2)).click();
        chrome.findElement(By.xpath(fecha)).sendKeys("12022004");
        chrome.findElement(By.xpath(pass)).sendKeys("1234");
        chrome.findElement(By.xpath(btnAceptar)).click();



    }

}
