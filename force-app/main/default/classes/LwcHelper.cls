public class LwcHelper {
    
    @AuraEnabled(cacheable=true)
    public static List<PricebookEntry> getAvailableAllStdPrcBookProducts(){

        return [SELECT Product2.Id, Product2.Name, UnitPrice 
                FROM PricebookEntry
                WHERE isActive=true AND Pricebook2.IsStandard = true
                WITH SECURITY_ENFORCED];
    }
}
