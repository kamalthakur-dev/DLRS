public class ParkLocator {
    public static List<String> country(String cont){
        ParkService.ParksImplPort parker = new ParkService.ParksImplPort();
        return parker.byCountry(cont);
    }
}