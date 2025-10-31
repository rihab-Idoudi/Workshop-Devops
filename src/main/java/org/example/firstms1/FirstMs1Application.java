package org.example.firstms1;

import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.stream.Stream;

@SpringBootApplication

public class FirstMs1Application {

    public static void main(String[] args) {
        SpringApplication.run(FirstMs1Application.class, args);
    }
    @Bean
    ApplicationRunner start(CandidatRepo repo) {
        return args -> {
            Stream.of(new Candidat("Rihab", "Idoudi", "Tunis"),
                            new Candidat("Ahmed", "Mrabet", "Tunis"))
                    .forEach(candidat -> {
                        repo.save(candidat);
                    });
            repo.findAll().forEach(System.out::println);

        };
    }
}
