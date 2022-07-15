@isTest
global class ParkServiceMock implements WebServiceMock{
	global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
               List<String> retParks = new List<String>();
               retParks.add('INDIAPARK');
        // start - specify the response you want to send
        ParkService.byCountryResponse response_x = 
            new ParkService.byCountryResponse();
        response_x.return_x = retParks;
        // end
        response.put('response_x', response_x); 
   }
}