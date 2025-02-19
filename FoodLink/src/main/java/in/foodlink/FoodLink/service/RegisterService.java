package in.foodlink.FoodLink.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.foodlink.FoodLink.model.Register;
import in.foodlink.FoodLink.repository.RegisterRepo;

@Service
public class RegisterService {

	
	@Autowired
	RegisterRepo registerRepo;
	
	public boolean isRegister(Register register)
	{
		return registerRepo.isRegister(register);
	}
	
	public List<Register> getRegisters()
	{
		return registerRepo.getRegisters();
	}
	
	public Register getRegister(Register r)
	{
		return registerRepo.getRegister(r);
	}
	
	
}
