public class AnimalLocator {
    public static String getAnimalNameById(Integer anID) {
        String nameAn = '';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        String endPoint = 'https://th-apex-http-callout.herokuapp.com/animals/'+ anID;
        System.debug('endPoint:'+endPoint);
        request.setEndpoint(endPoint);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animal = (Map<String, Object>) results.get('animal');
            System.debug('Received:'+results);
            System.debug('Received:'+animal);
            System.debug('Received:'+(String)animal.get('name'));
            //System.debug('oooooooooooo:'+animal.name);
            nameAn = (String)animal.get('name');
        }
        return nameAn; 
    }
}