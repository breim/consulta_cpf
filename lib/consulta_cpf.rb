require "consulta_cpf/version"

%w(consulta_cpf version).each {|req| require File.dirname(__FILE__) + "/cpf_consulta/#{req}"}

module ConsultaCpf
end
