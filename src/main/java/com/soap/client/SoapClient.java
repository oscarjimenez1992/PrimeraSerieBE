/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.soap.client;

import com.soap.wsdl.TipoCambioDiaString;
import com.soap.wsdl.TipoCambioDiaStringResponse;
import org.springframework.ws.client.core.support.WebServiceGatewaySupport;
import org.springframework.ws.soap.client.core.SoapActionCallback;

/**
 *
 * @author carlo
 */
public class SoapClient extends WebServiceGatewaySupport {
    
    public TipoCambioDiaStringResponse getTipoCambioDiaStringResponse()
    {
        TipoCambioDiaString tipoCambioRequest = new TipoCambioDiaString();
        SoapActionCallback soapActionCallback = new SoapActionCallback("http://www.banguat.gob.gt/variables/ws/TipoCambioDiaString");
                TipoCambioDiaStringResponse tipoCambioResponse;
        tipoCambioResponse = (TipoCambioDiaStringResponse) getWebServiceTemplate().marshalSendAndReceive("https://www.banguat.gob.gt/variables/ws/TipoCambio.asmx", tipoCambioRequest, soapActionCallback);
        
        return tipoCambioResponse;
    }
}
