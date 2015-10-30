package com.springapp.repositories;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springapp.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Serializable>
{

}
