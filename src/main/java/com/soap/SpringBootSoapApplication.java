package com.soap;

import com.soap.client.SoapClient;
import com.soap.wsdl.TipoCambioDiaStringResponse;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SpringBootApplication
public class SpringBootSoapApplication {
    
        private static final Logger LOGGER = LoggerFactory.getLogger(SpringBootSoapApplication.class);

	public static void main(String[] args) 
        {
		SpringApplication.run(SpringBootSoapApplication.class, args);
	}
        
        @Bean
        CommandLineRunner init(SoapClient soapClient)
        {
            return args ->
            {
                TipoCambioDiaStringResponse tipoCambioResponse = soapClient.getTipoCambioDiaStringResponse();
                LOGGER.info("El tipo de cambio al momento es: {}", tipoCambioResponse.getTipoCambioDiaStringResult());
            };
        }

}
