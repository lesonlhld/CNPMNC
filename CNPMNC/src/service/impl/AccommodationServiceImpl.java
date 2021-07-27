package service.impl;

import java.util.List;

import dao.AccommodationDao;
import dao.impl.AccommodationDaoImpl;
import model.Accommodation;
import service.AccommodationService;

public class AccommodationServiceImpl implements AccommodationService {
	AccommodationDao AccommodationDao = new AccommodationDaoImpl();

	@Override
	public Boolean insert(Accommodation Accommodation) {
		return AccommodationDao.insert(Accommodation);
	}
	
	@Override
	public void delete(int id) {
		AccommodationDao.delete(id);
	}
	
	@Override
	public void edit(Accommodation newAccommodation) {
		Accommodation oldAccommodation = AccommodationDao.get(newAccommodation.getId());
		AccommodationDao.edit(oldAccommodation);
	}

	@Override
	public Accommodation get(int id) {
		return AccommodationDao.get(id);
	}
	
	@Override
	public List<Accommodation> getAll() {
		return AccommodationDao.getAll();
	}

	@Override
	public List<Accommodation> searchAddress(String address) {
		return AccommodationDao.searchAddress(address);
	}

	@Override
	public List<Accommodation> advancedSearch(String address, String costFrom, String costTo, String status, String type_acc){
		return AccommodationDao.advancedSearch(address, costFrom, costTo, status, type_acc);
	}
}
