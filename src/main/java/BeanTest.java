import java.util.ArrayList;
import java.util.List;

public class BeanTest {

    public static void main(String[] args) {

        Album tacos = new Album();
        tacos.setId(1);
        tacos.setArtist("Joe");
        tacos.setName("spicy");
        tacos.setReleaseDate(2020);
        tacos.setGenre("pop");
        tacos.setSales(10000);

        Quote quote = new Quote();
        quote.setId(1);
        quote.setAuthor("Fred Bob");
        quote.setContent("I like tacos");

        Author author = new Author();
        author.setId(1);
        author.setFirstName("Fred");
        author.setLastName("Bob");

        Quote otherQuote = new Quote();
        otherQuote.setId(2);
        otherQuote.setAuthor("Joe Bob");
        otherQuote.setContent("I hate taco's");

        List<Quote> quoteList = new ArrayList<>();
        quoteList.add(quote);
        quoteList.add(otherQuote);

        for (Quote q:quoteList){
            System.out.println(q.getAuthor());
            System.out.println(q.getContent());
        }

    }

}
