package mx.edu.utez.integradora;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
public class Main {
    public static WebDriver  chrome = new ChromeDriver();
    public static void main(String[] args) {
        System.setProperty("webdriver.chrome.driver","src/main/resources/drivers/chromedriver.exe");

        chrome.get("http://localhost:8080/");

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

        //iniciar sesión

        String  btnLoginModal = "//*[@id=\"navbarNavDropdown\"]/ul/li[4]/button[1]",
                correoLogin = "//*[@id=\"email\"]",
                passLogin ="//*[@id=\"password\"]",
                btnLogin = "//*[@id=\"login\"]";
        chrome.findElement(By.xpath(btnLoginModal)).click();
        try {
            Thread.sleep(1000);
        }catch (InterruptedException e){

        }
        chrome.findElement(By.xpath(correoLogin)).sendKeys("Alex@gmail.com");
        chrome.findElement(By.xpath(passLogin)).sendKeys("1234");
        chrome.findElement(By.xpath(btnLogin)).click();

        //publicar historia
        String modalStory = "//*[@id=\"cont-2\"]/div[2]/div[2]",
               tittle = "//*[@id=\"title\"]",
               content = "//*[@id=\"content\"]",
               category = "//*[@id=\"Categories\"]",
               categorySelected = "//*[@id=\"Categories\"]/option[2]",
               type = "//*[@id=\"status\"]",
               typeSelected = "//*[@id=\"status\"]/option[2]",
               btnPublicar = "//*[@id=\"formHistorias\"]/div/div/button";

        chrome.findElement(By.xpath(modalStory)).click();
        try {
            Thread.sleep(500);
        }catch (InterruptedException e){

        }
        chrome.findElement(By.xpath(tittle)).sendKeys("Eldrip");
        chrome.findElement(By.xpath(content)).sendKeys("Ponme un vasito en la mano, ya el cuerpo siento cansado" +
                "Fumando voy relajado y la fiesta no va a parar" +
                "Supreme, la ropita y la clica no se me agüita" +
                "A las onzas se las invita y pura mota que es medicinal" +
                "No se me agüite, mejor péguese un baile con la niña de allá" +
                "Con cupcake nos vamos, el cuerpo siento elevado" +
                "Las morras aquí a mi lado, hay puras niñas, yo soy su papá" +
                "Cupcake en las pipas, la gente viene y se atiza" +
                "Los Versace siempre en mi vista, varias naves que mandé a arreglar" +
                "En el cuello tengo todo el brillo que yo quiero" +
                "Y no me digan que no puedo porque saben que las puedo" +
                "Y varios diamonds en el pecho son los que luce este viejo" +
                "Con la mirada hacia el cielo y los pies puestos en el suelo" +
                "Puros corridos tumbados, viejones, ¡ea!" +
                "Con el Lalo por un lado, tomando un jarabe extraño" +
                "Y nunca jamás le había dado y ahora no quiero bajar" +
                "Indica, me indica todos mis planes me activa" +
                "La mente siempre en mi línea y una línea que es pa' despertar" +
                "No se me agüite, mejor péguese un baile con la niña de allá" +
                "En el cuello tengo todo el brillo que yo quiero" +
                "Y no me digan que no puedo porque saben que las puedo" +
                "De varios diamonds en el pecho son los que luce este viejo" +
                "Con la mirada hacia el cielo y los pies puestos en el suelo");
        chrome.findElement(By.xpath(category)).click();
        try {
            Thread.sleep(500);
        }catch (InterruptedException e){

        }
        chrome.findElement(By.xpath(categorySelected)).click();
        chrome.findElement(By.xpath(type)).click();
        try {
            Thread.sleep(500);
        }catch (InterruptedException e){

        }
        chrome.findElement(By.xpath(typeSelected)).click();
        chrome.findElement(By.xpath(btnPublicar)).click();



        //creación de comentario en historia

        String commentContent = "//*[@id=\"comment\"]",
               commentBtn = "//*[@id=\"commentNormal\"]/div/form/table/tbody/tr/th[2]/button";

        chrome.findElement(By.xpath(commentContent)).sendKeys("buena publi");
        chrome.findElement(By.xpath(commentBtn)).click();

        try {
            Thread.sleep(1000);
        }catch (InterruptedException e){

        }
        //dar like
        String like = "//*[@id=\"cont-2\"]/div[3]/div/div/div/div[2]/table/tbody/tr/th[1]/form/button/i";
        chrome.findElement(By.xpath(like)).click();
        try {
            Thread.sleep(1000);
        }catch (InterruptedException e){

        }
        //Quitar like
        chrome.findElement(By.xpath(like)).click();




    }

}
