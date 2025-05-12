USE clinica_medica;


SELECT pacientes.nome, SUM(medicamentos.preco) as "Gastos com Medicamentos"
FROM pacientes JOIN historicomedico
ON pacientes.id = historicomedico.paciente_id JOIN prescricoes
ON historicomedico.id = prescricoes.historico_medico_id JOIN medicamentos
ON medicamentos.id = prescricoes.medicamento_id
GROUP BY pacientes.nome;

SELECT prescricoes.id "ID_Prescrição", medicamentos.nome "Medicamento"
FROM prescricoes JOIN medicamentos
ON prescricoe.medicamento_id = medicamentos.id;