#
# Autogenerated by Thrift Compiler (0.13.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'calculadora_types'

module Calculadora
  class Client
    include ::Thrift::Client

    def sumar(numero1, numero2)
      send_sumar(numero1, numero2)
      return recv_sumar()
    end

    def send_sumar(numero1, numero2)
      send_message('sumar', Sumar_args, :numero1 => numero1, :numero2 => numero2)
    end

    def recv_sumar()
      result = receive_message(Sumar_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'sumar failed: unknown result')
    end

    def restar(numero1, numero2)
      send_restar(numero1, numero2)
      return recv_restar()
    end

    def send_restar(numero1, numero2)
      send_message('restar', Restar_args, :numero1 => numero1, :numero2 => numero2)
    end

    def recv_restar()
      result = receive_message(Restar_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'restar failed: unknown result')
    end

    def multiplicar(numero1, numero2)
      send_multiplicar(numero1, numero2)
      return recv_multiplicar()
    end

    def send_multiplicar(numero1, numero2)
      send_message('multiplicar', Multiplicar_args, :numero1 => numero1, :numero2 => numero2)
    end

    def recv_multiplicar()
      result = receive_message(Multiplicar_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'multiplicar failed: unknown result')
    end

    def dividir(numero1, numero2)
      send_dividir(numero1, numero2)
      return recv_dividir()
    end

    def send_dividir(numero1, numero2)
      send_message('dividir', Dividir_args, :numero1 => numero1, :numero2 => numero2)
    end

    def recv_dividir()
      result = receive_message(Dividir_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'dividir failed: unknown result')
    end

  end

  class Processor
    include ::Thrift::Processor

    def process_sumar(seqid, iprot, oprot)
      args = read_args(iprot, Sumar_args)
      result = Sumar_result.new()
      result.success = @handler.sumar(args.numero1, args.numero2)
      write_result(result, oprot, 'sumar', seqid)
    end

    def process_restar(seqid, iprot, oprot)
      args = read_args(iprot, Restar_args)
      result = Restar_result.new()
      result.success = @handler.restar(args.numero1, args.numero2)
      write_result(result, oprot, 'restar', seqid)
    end

    def process_multiplicar(seqid, iprot, oprot)
      args = read_args(iprot, Multiplicar_args)
      result = Multiplicar_result.new()
      result.success = @handler.multiplicar(args.numero1, args.numero2)
      write_result(result, oprot, 'multiplicar', seqid)
    end

    def process_dividir(seqid, iprot, oprot)
      args = read_args(iprot, Dividir_args)
      result = Dividir_result.new()
      result.success = @handler.dividir(args.numero1, args.numero2)
      write_result(result, oprot, 'dividir', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class Sumar_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    NUMERO1 = 1
    NUMERO2 = 2

    FIELDS = {
      NUMERO1 => {:type => ::Thrift::Types::DOUBLE, :name => 'numero1'},
      NUMERO2 => {:type => ::Thrift::Types::DOUBLE, :name => 'numero2'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Sumar_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::DOUBLE, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Restar_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    NUMERO1 = 1
    NUMERO2 = 2

    FIELDS = {
      NUMERO1 => {:type => ::Thrift::Types::DOUBLE, :name => 'numero1'},
      NUMERO2 => {:type => ::Thrift::Types::DOUBLE, :name => 'numero2'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Restar_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::DOUBLE, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Multiplicar_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    NUMERO1 = 1
    NUMERO2 = 2

    FIELDS = {
      NUMERO1 => {:type => ::Thrift::Types::DOUBLE, :name => 'numero1'},
      NUMERO2 => {:type => ::Thrift::Types::DOUBLE, :name => 'numero2'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Multiplicar_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::DOUBLE, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Dividir_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    NUMERO1 = 1
    NUMERO2 = 2

    FIELDS = {
      NUMERO1 => {:type => ::Thrift::Types::DOUBLE, :name => 'numero1'},
      NUMERO2 => {:type => ::Thrift::Types::DOUBLE, :name => 'numero2'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Dividir_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::DOUBLE, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end

