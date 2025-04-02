package connexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {
    private static final String URL = "jdbc:postgresql://localhost:5432/temoin";
    private static final String USER = "postgres";
    private static final String PASSWORD = "itu16";

    // Méthode pour obtenir une connexion à la base de données
    public static Connection getConn() {
        Connection connection = null;
        try {
            // Charger le driver PostgreSQL (facultatif avec JDBC 4+)
            Class.forName("org.postgresql.Driver");

            // Établir la connexion
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connexion réussie !");
        } catch (ClassNotFoundException e) {
            System.err.println("Driver PostgreSQL introuvable !");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Erreur de connexion à la base de données !");
            e.printStackTrace();
        }
        return connection;
    }
}
