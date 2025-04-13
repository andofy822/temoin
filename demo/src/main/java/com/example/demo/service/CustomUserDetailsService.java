package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        String sql = "SELECT username, password, role FROM utilisateur WHERE username = ?";

        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{username}, (rs, rowNum) -> {
                String uname = rs.getString("username");
                String pwd = rs.getString("password");
                String role = rs.getString("role"); // ex: ROLE_USER

                return User.withUsername(uname)
                        .password(pwd)
                        .roles(role.replace("ROLE_", ""))
                        .build();
            });
        } catch (EmptyResultDataAccessException e) {
            throw new UsernameNotFoundException("Utilisateur non trouvé : " + username);
        }
    }
}
