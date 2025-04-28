use clinica_medica;
show tables;
desc pacientes;
select * from pacientes;
select * from medicos;
select * from agendamentos;
select nome,data_nascimento,telefone from pacientes
where data_nascimento > "1990-01-01";


-- LISTA PARA CADA CONSULTA, O NOME DO PACIENTE, DATA E TIPO.
SELECT pacientes.nome, agendamentos.data_hora, agendamentos.tipo_consulta
from pacientes left join agendamentos
on pacientes.id = agendamentos.paciente_id;

-- LISTA PARA CADA CONSULTA, O NOME DO MÉDICO, DATA E TIPO.
SELECT medicos.nome, agendamentos.data_hora, agendamentos.tipo_consulta
from medicos left join agendamentos
on medicos.id = agendamentos.medico_id;

-- DESAFIO: LISTA AS CONSULTAS INCLUINDO O NOME DO PACIENTE E DO MEDICO.
SELECT pacientes.nome Paciente, medicos.nome Medico, agendamentos.data_hora,
agendamentos.tipo_consulta from pacientes join agendamentos 
on pacientes.id = agendamentos.paciente_id join medicos
on medicos.id = agendamentos.medico_id;




