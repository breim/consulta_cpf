# encoding: UTF-8
require 'net/http'
require 'json'

class Consulta
	WEB_SERVICE_URL = "http://dabsistemas.saude.gov.br/sistemas/sadab/js/buscar_cpf_dbpessoa.json.php?cpf="

	def self.cpf(numero)
		cpf = numero.to_s.gsub(/[\.-]/, '')

		response = Net::HTTP.get_response(URI("#{WEB_SERVICE_URL}#{cpf}"))
		raise "A busca está indisponível." unless response.kind_of? Net::HTTPSuccess

		dados = JSON.parse(response.body)

	    retorno = {}

		raise "CPF #{cpf} não encontrado" if dados['NO_PESSOA_FISICA'].eql?('CPF NAO LOCALIZADO')
		
		retorno[:cpf] = dados['NU_CPF']
		retorno[:nome] = dados['NO_PESSOA_FISICA']
		retorno[:data_nascimento] = dados['DT_NASCIMENTO']
		retorno[:sexo_short] = dados['CO_SEXO']
		retorno[:sexo_long] = dados['DS_SEXO']
		retorno[:nome_mae] = dados['NO_MAE']
		retorno
	end

end