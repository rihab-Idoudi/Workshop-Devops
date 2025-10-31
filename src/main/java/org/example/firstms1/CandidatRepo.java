package org.example.firstms1;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;


@RepositoryRestResource(path = "candidats")
public interface CandidatRepo  extends CrudRepository<Candidat, Integer> {

        // Pas besoin de méthode ici, Spring Data REST s'en charge


}
