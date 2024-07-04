package common;

public class GameEntity {
	  private int id;
	    private String name;
	    private double price;
	    private int gameId;

	    // Constructor
	    public GameEntity(int id, String name, double price, int gameId) {
	        this.id = id;
	        this.name = name;
	        this.price = price;
	        this.gameId = gameId;
	    }

	    // Getters and Setters
	    public int getId() { return id; }
	    public void setId(int id) { this.id = id; }

	    public String getName() { return name; }
	    public void setName(String name) { this.name = name; }

	    public double getPrice() { return price; }
	    public void setPrice(double price) { this.price = price; }

	    public int getGameId() { return gameId; }
	    public void setGameId(int gameId) { this.gameId = gameId; }

	    @Override
	    public String toString() {
	        return "ID: " + id + ", Name: " + name + ", Price: " + price + ", Game ID: " + gameId;
	    }

}
