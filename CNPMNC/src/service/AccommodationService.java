package service;

import java.util.List;

import model.Accommodation;

public interface AccommodationService {
	Boolean insert(Accommodation accommodation);

	void edit(Accommodation newAccommodationService);

	void delete(int id);

	Accommodation get(int id);
	
	List<Accommodation> getAll();

	List<Accommodation> searchAddress(String address);
	
	List<Accommodation> advancedSearch(String address, String costFrom, String costTo, String status, String type_acc);
}
