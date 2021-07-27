package dao;

import java.util.List;

import model.Accommodation;

public interface AccommodationDao {
	Boolean insert(Accommodation accommodation);

	void edit(Accommodation accommodation);

	void delete(int id);
	
	Accommodation get(int id);

	List<Accommodation> getAll();

	List<Accommodation> searchAddress(String address);
	
	List<Accommodation> advancedSearch(String address, String costFrom, String costTo, String status, String type_acc);
}