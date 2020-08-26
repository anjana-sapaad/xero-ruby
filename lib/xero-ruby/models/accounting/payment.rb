=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.2.14
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  require 'bigdecimal'

  class Payment

    attr_accessor :invoice
    

    attr_accessor :credit_note
    

    attr_accessor :prepayment
    

    attr_accessor :overpayment
    
    # Number of invoice or credit note you are applying payment to e.g.INV-4003
    attr_accessor :invoice_number
    
    # Number of invoice or credit note you are applying payment to e.g. INV-4003
    attr_accessor :credit_note_number
    

    attr_accessor :account
    
    # Code of account you are using to make the payment e.g. 001 (note- not all accounts have a code value)
    attr_accessor :code
    
    # Date the payment is being made (YYYY-MM-DD) e.g. 2009-09-06
    attr_accessor :date
    
    # Exchange rate when payment is received. Only used for non base currency invoices and credit notes e.g. 0.7500
    attr_accessor :currency_rate
    
    # The amount of the payment. Must be less than or equal to the outstanding amount owing on the invoice e.g. 200.00
    attr_accessor :amount
    
    # An optional description for the payment e.g. Direct Debit
    attr_accessor :reference
    
    # An optional parameter for the payment. A boolean indicating whether you would like the payment to be created as reconciled when using PUT, or whether a payment has been reconciled when using GET
    attr_accessor :is_reconciled
    
    # The status of the payment.
    attr_accessor :status
    AUTHORISED = "AUTHORISED".freeze
    DELETED = "DELETED".freeze
    
    # See Payment Types.
    attr_accessor :payment_type
    ACCRECPAYMENT = "ACCRECPAYMENT".freeze
    ACCPAYPAYMENT = "ACCPAYPAYMENT".freeze
    ARCREDITPAYMENT = "ARCREDITPAYMENT".freeze
    APCREDITPAYMENT = "APCREDITPAYMENT".freeze
    AROVERPAYMENTPAYMENT = "AROVERPAYMENTPAYMENT".freeze
    ARPREPAYMENTPAYMENT = "ARPREPAYMENTPAYMENT".freeze
    APPREPAYMENTPAYMENT = "APPREPAYMENTPAYMENT".freeze
    APOVERPAYMENTPAYMENT = "APOVERPAYMENTPAYMENT".freeze
    
    # UTC timestamp of last update to the payment
    attr_accessor :updated_date_utc
    
    # The Xero identifier for an Payment e.g. 297c2dc5-cc47-4afd-8ec8-74990b8761e9
    attr_accessor :payment_id
    
    # The suppliers bank account number the payment is being made to
    attr_accessor :bank_account_number
    
    # The suppliers bank account number the payment is being made to
    attr_accessor :particulars
    
    # The information to appear on the supplier's bank account
    attr_accessor :details
    
    # A boolean to indicate if a contact has an validation errors
    attr_accessor :has_account
    
    # A boolean to indicate if a contact has an validation errors
    attr_accessor :has_validation_errors
    
    # A string to indicate if a invoice status
    attr_accessor :status_attribute_string
    
    # Displays array of validation error messages from the API
    attr_accessor :validation_errors
    
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'invoice' => :'Invoice',
        :'credit_note' => :'CreditNote',
        :'prepayment' => :'Prepayment',
        :'overpayment' => :'Overpayment',
        :'invoice_number' => :'InvoiceNumber',
        :'credit_note_number' => :'CreditNoteNumber',
        :'account' => :'Account',
        :'code' => :'Code',
        :'date' => :'Date',
        :'currency_rate' => :'CurrencyRate',
        :'amount' => :'Amount',
        :'reference' => :'Reference',
        :'is_reconciled' => :'IsReconciled',
        :'status' => :'Status',
        :'payment_type' => :'PaymentType',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'payment_id' => :'PaymentID',
        :'bank_account_number' => :'BankAccountNumber',
        :'particulars' => :'Particulars',
        :'details' => :'Details',
        :'has_account' => :'HasAccount',
        :'has_validation_errors' => :'HasValidationErrors',
        :'status_attribute_string' => :'StatusAttributeString',
        :'validation_errors' => :'ValidationErrors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'invoice' => :'Invoice',
        :'credit_note' => :'CreditNote',
        :'prepayment' => :'Prepayment',
        :'overpayment' => :'Overpayment',
        :'invoice_number' => :'String',
        :'credit_note_number' => :'String',
        :'account' => :'Account',
        :'code' => :'String',
        :'date' => :'String',
        :'currency_rate' => :'BigDecimal',
        :'amount' => :'BigDecimal',
        :'reference' => :'String',
        :'is_reconciled' => :'Boolean',
        :'status' => :'String',
        :'payment_type' => :'String',
        :'updated_date_utc' => :'String',
        :'payment_id' => :'String',
        :'bank_account_number' => :'String',
        :'particulars' => :'String',
        :'details' => :'String',
        :'has_account' => :'Boolean',
        :'has_validation_errors' => :'Boolean',
        :'status_attribute_string' => :'String',
        :'validation_errors' => :'Array<ValidationError>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::Payment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::Payment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end

      if attributes.key?(:'credit_note')
        self.credit_note = attributes[:'credit_note']
      end

      if attributes.key?(:'prepayment')
        self.prepayment = attributes[:'prepayment']
      end

      if attributes.key?(:'overpayment')
        self.overpayment = attributes[:'overpayment']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'credit_note_number')
        self.credit_note_number = attributes[:'credit_note_number']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'currency_rate')
        self.currency_rate = attributes[:'currency_rate']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'is_reconciled')
        self.is_reconciled = attributes[:'is_reconciled']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'payment_type')
        self.payment_type = attributes[:'payment_type']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.key?(:'bank_account_number')
        self.bank_account_number = attributes[:'bank_account_number']
      end

      if attributes.key?(:'particulars')
        self.particulars = attributes[:'particulars']
      end

      if attributes.key?(:'details')
        self.details = attributes[:'details']
      end

      if attributes.key?(:'has_account')
        self.has_account = attributes[:'has_account']
      else
        self.has_account = false
      end

      if attributes.key?(:'has_validation_errors')
        self.has_validation_errors = attributes[:'has_validation_errors']
      else
        self.has_validation_errors = false
      end

      if attributes.key?(:'status_attribute_string')
        self.status_attribute_string = attributes[:'status_attribute_string']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('String', ["AUTHORISED", "DELETED"])
      return false unless status_validator.valid?(@status)
      payment_type_validator = EnumAttributeValidator.new('String', ["ACCRECPAYMENT", "ACCPAYPAYMENT", "ARCREDITPAYMENT", "APCREDITPAYMENT", "AROVERPAYMENTPAYMENT", "ARPREPAYMENTPAYMENT", "APPREPAYMENTPAYMENT", "APOVERPAYMENTPAYMENT"])
      return false unless payment_type_validator.valid?(@payment_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["AUTHORISED", "DELETED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_type Object to be assigned
    def payment_type=(payment_type)
      validator = EnumAttributeValidator.new('String', ["ACCRECPAYMENT", "ACCPAYPAYMENT", "ARCREDITPAYMENT", "APCREDITPAYMENT", "AROVERPAYMENTPAYMENT", "ARPREPAYMENTPAYMENT", "APPREPAYMENTPAYMENT", "APOVERPAYMENTPAYMENT"])
      unless validator.valid?(payment_type)
        fail ArgumentError, "invalid value for \"payment_type\", must be one of #{validator.allowable_values}."
      end
      @payment_type = payment_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          invoice == o.invoice &&
          credit_note == o.credit_note &&
          prepayment == o.prepayment &&
          overpayment == o.overpayment &&
          invoice_number == o.invoice_number &&
          credit_note_number == o.credit_note_number &&
          account == o.account &&
          code == o.code &&
          date == o.date &&
          currency_rate == o.currency_rate &&
          amount == o.amount &&
          reference == o.reference &&
          is_reconciled == o.is_reconciled &&
          status == o.status &&
          payment_type == o.payment_type &&
          updated_date_utc == o.updated_date_utc &&
          payment_id == o.payment_id &&
          bank_account_number == o.bank_account_number &&
          particulars == o.particulars &&
          details == o.details &&
          has_account == o.has_account &&
          has_validation_errors == o.has_validation_errors &&
          status_attribute_string == o.status_attribute_string &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [invoice, credit_note, prepayment, overpayment, invoice_number, credit_note_number, account, code, date, currency_rate, amount, reference, is_reconciled, status, payment_type, updated_date_utc, payment_id, bank_account_number, particulars, details, has_account, has_validation_errors, status_attribute_string, validation_errors].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end
