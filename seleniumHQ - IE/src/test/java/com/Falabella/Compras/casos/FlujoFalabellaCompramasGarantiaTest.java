package com.Falabella.Compras.casos;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.WebDriver;
import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.remote.DesiredCapabilities;




public class FlujoFalabellaCompramasGarantiaTest  {
	
		
	WebDriver driver;
	
	@Test
	public void A1_Carga_Home() throws IOException
	{
		//Ingreso de VARIABLES a utilizar
		String baseUrl = "https://www.google.cl",
		buscarPalabra = "falabella",
		buscarArticulo = "consola";
		
		//Ruta de driver de IE
		System.setProperty("webdriver.edge.driver", "./src/main/resources/Runners/MicrosoftWebDriver.exe");
		
		//Opcion de maximizar la ventana del navegador
		//EdgeOptions options = new EdgeOptions();
		//options.addArguments("--start-maximized");
		
		
		
		driver = new EdgeDriver();
		
		driver.get(baseUrl);
		
		waitSleep(2);
		
		//Ingreso de datos a buscar en pagina
		driver.findElement(By.name("q")).sendKeys(buscarPalabra);
		driver.findElement(By.xpath("//*[@id=\"tsf\"]/div[2]/div/div[1]/div/div[1]/input")).sendKeys(Keys.RETURN);
		waitSleep(5);
		
		//Ingreso al sitio buscado
		//WebElement obj = driver.findElement(By.className("LC20lb"));
		//obj.click();
		
		driver.findElement(By.id("res")).click();
		waitSleep(5);
		
		//Buscar articulo deseado
		driver.findElement(By.xpath("//*[@id=\"searchQuestionSolr\"]")).click();
		driver.findElement(By.xpath("//*[@id=\"searchQuestionSolr\"]")).sendKeys(buscarArticulo);
		waitSleep(3);
		driver.findElement(By.xpath("//*[@id=\"searchQuestionSolr\"]")).sendKeys(Keys.RETURN);
		
		//Seleccionar articulo a comprar
		driver.findElement(By.xpath("//*[@id=\"all-pods\"]/div[1]/div[2]/a[1]/div/img")).click();
		
		//Agregar e ingresar a la bolsa de Compras
		scroll_gerardo();
		driver.findElement(By.xpath("//*[@id=\"fbra_browseMainProduct\"]/div/div/div[2]/div/div[8]/button")).click();
		waitSleep(3);
		
		
		driver.switchTo().parentFrame();
		WebElement modal = driver.findElement(By.className("fb-overlay__inject"));
		modal.findElement(By.cssSelector("#fb-modal-add > div.fb-added-to-basket__footer > div.fb-added-to-basket__ctas > a")).click();
		waitSleep(3);
		//Agrega 1 producto mas
		driver.findElement(By.xpath("//*[@id=\"fb-basket-products\"]/div[3]/section/section/form/section/div[2]/div/button[2]")).click();
		scroll_gerardo();
		
		waitSleep(3);
		//Agrega garantia extendida 2 años
		driver.findElement(By.xpath("//*[@id=\"fb-basket-products\"]/div[3]/section/section/section/div/div/div/div/form/div/a")).click();
		waitSleep(3);
		driver.findElement(By.xpath("//*[@id=\"fb-basket-products\"]/div[3]/section/section/section/div/div/div/div/form/div/div/ul/li[3]/a")).click();
		
		waitSleep(3);
		//Ir a comprar
		driver.findElement(By.xpath("/html/body/div[1]/main/div[1]/div[2]/div[3]/div/div[1]/form/div[2]/div[2]/div[2]/button")).click();
		waitSleep(3);
		scroll_gerardo();
				
	}
	
	
	
	private void executeScript(String string) {
		// TODO Auto-generated method stub
		
	}



	public void waitSleep(int second) {
		// LOGGER.info("INICIO -----> ESPERA:" + second + " / SEGUNDOS");
		long millis = second * 1000;
		try {
			Thread.sleep(millis);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		// LOGGER.info("FIN -----> ESPERA:" + second + " / SEGUNDOS");
	}
	
	public void scroll_gerardo() throws IOException {
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("window.scrollBy(0,170)");

	}
	
}



