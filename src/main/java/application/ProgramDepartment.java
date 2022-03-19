/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package application;

import java.util.List;
import java.util.Scanner;
import model.dao.DaoFactory;
import model.dao.DepartmentDao;
import model.entities.Department;

/**
 *
 * @author tarsi
 */
public class ProgramDepartment {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        DepartmentDao departmentDao = DaoFactory.createDepartmenteDao();

        System.out.println("\n=== TEST 1 : Department FindById ===");
        Department department = departmentDao.findById(2);
        System.out.println(department);

        System.out.println("\n=== TEST 2 : Department FindByAll ===");
        List<Department> list = departmentDao.findAll();

        for (Department obj : list) {
            System.out.println(obj);
        }

        System.out.println("\n=== TEST 3 : Department Insert ===");
        Department newDepartment = new Department(null, "Compras");
        departmentDao.insert(newDepartment);
        System.out.println("Inserted! New id: " + newDepartment.getId());

        System.out.println("\n=== TEST 4 : Department Update ===");
        department = departmentDao.findById(6);
        department.setName("Comercial");
        departmentDao.update(department);
        System.out.println("Update Finished");

        System.out.println("\n=== TEST 4 : Department Delete ===");
        System.out.println("Enter id for delete department : ");
        int id = sc.nextInt();
        departmentDao.deleteById(id);
        System.out.println("Delete Termined");
        
        sc.close();
    }

}
