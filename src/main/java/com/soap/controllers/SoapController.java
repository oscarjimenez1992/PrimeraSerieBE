package com.soap.controllers;

import com.soap.client.SoapClient;
import com.soap.entidad.TipoCambio;
import com.soap.wsdl.TipoCambioDiaStringResponse;

import com.soap.repository.TipoCambioRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ojimenezj
 */

@RestController
public class SoapController {
    
    @Autowired
    private SoapClient soapClient;
    
    @Autowired
    private TipoCambioRepository tipoCambioRepository;
    
    @PostMapping("/TipoCambioDia")
    public ResponseEntity<?> tipoCambio() {
        Map<String, String> response = new HashMap<>();
        TipoCambioDiaStringResponse tipoCambioResponse = soapClient.getTipoCambioDiaStringResponse();
        
        // Extraemos el XML de la respuesta
        String xmlString = tipoCambioResponse.getTipoCambioDiaStringResult();

        try {
            // Parseamos el XML
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(new InputSource(new StringReader(xmlString)));

            // Obtenemos los valores de fecha y tipo de cambio
            Element fechaElement = (Element) doc.getElementsByTagName("fecha").item(0);
            Element referenciaElement = (Element) doc.getElementsByTagName("referencia").item(0);

            // Extraemos el contenido de los elementos
            String fecha = fechaElement.getTextContent();
            String tipoCambio = referenciaElement.getTextContent();

            // Añadimos estos valores al mapa de respuesta
            response.put("Fecha", fecha);
            response.put("TipoCambio", tipoCambio);

            // Guardamos los valores en la base de datos
            TipoCambio tipoCambioEntity = new TipoCambio();
            tipoCambioEntity.setFecha(fecha);
            tipoCambioEntity.setTipoCambio(Double.valueOf(tipoCambio));
            tipoCambioRepository.save(tipoCambioEntity);

        } catch (Exception e) {
            e.printStackTrace();
            response.put("error", "Error al parsear la respuesta XML");
            return ResponseEntity.status(500).body(response);
        }

        return ResponseEntity.ok().body(response);
    }
}
