package com.Playground.SpringSecurityBackend.service;

import com.Playground.SpringSecurityBackend.dto.MateriaCreateDto;
import com.Playground.SpringSecurityBackend.dto.MateriaResponseDto;
import com.Playground.SpringSecurityBackend.mapper.MateriaMapper;
import com.Playground.SpringSecurityBackend.model.Alumno;
import com.Playground.SpringSecurityBackend.model.Materia;
import com.Playground.SpringSecurityBackend.repository.AlumnoRepository;
import com.Playground.SpringSecurityBackend.repository.MateriaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Pageable;

import java.util.Optional;

@Service
public class MateriaServicelmpl implements MateriaServices {

    @Autowired
    private  MateriaRepository materiaRepository;

    @Autowired
    private AlumnoRepository alumnoRepository;



    @Override
    public Page<MateriaResponseDto> findAll(java.awt.print.Pageable pageable) {
        return null;
    }

    @Override
    public void saveMateria(MateriaCreateDto materiaCreateDTO) {
        Materia materia = MateriaMapper.toMateria(materiaCreateDTO);
        Optional<Alumno> alumno = alumnoRepository.findById(materiaCreateDTO.getAlumno());
        if (alumno.isPresent()) {
            materia.setAlumno(alumno.get());
        }
        materiaRepository.save(materia);
    }
}