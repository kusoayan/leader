# encoding: utf-8
class DataController < ApplicationController
  def index
    abort('N')
    raw_datas = ActiveRecord::Base.connection.execute('SELECT * FROM `TABLE 12`')
    raw_datas.each do |raw_data|
      s = Stock.new
      s.short_name = raw_data[0]

      if Category.exist?(raw_data[1])
        s.categories << Category.find_by_name(raw_data[1])
      else
        s.categories << Category.new(:name => raw_data[1])
      end

      s.first_alphabet = AlphabetNumber.find_by_alphabet(raw_data[2]).id
      s.second_alphabet = AlphabetNumber.find_by_alphabet(raw_data[3]).id

      s.full_name = raw_data[4]

      if raw_data[5] == ''
        s.phones << Phone.new(:phone_type => 'Office', :area_number => '00', :number => '00000000')
      else
        s.phones << Phone.new(:phone_type => 'Office', :area_number => raw_data[5].split('-')[0], :number => raw_data[5].split('-')[1])
      end

      if raw_data[6] == ''
        s.phones << Phone.new(:phone_type => 'FAX', :area_number => '00', :number => '00000000')
      else
        s.phones << Phone.new(:phone_type => 'FAX', :area_number => raw_data[6].split('-')[0], :number => raw_data[6].split('-')[1])
      end
      
      s.addresses << Address.new(:address => raw_data[7], :address_type => 'Office')

      s.chairman = raw_data[8]
      s.general_manager = raw_data[9]

      if raw_data[10] == ''
        s.form_date = Date.new(2012, 1, 1)
      else
        temp = raw_data[10].split('.')
        s.form_date = Date.new(temp[0].to_i + 1911, temp[1].to_i, temp[2].to_i)
      end

      s.vat_number = raw_data[11]

      s.capitalization = raw_data[12].to_f

      s.stock_type = raw_data[13]

      if raw_data[14] == '公司自辦'
        stock_affair = StockAffair.new(:name => s.short_name, :trader_type => 'S')
        temp = raw_data[5] == '' ? '00-00000000' : raw_data[5]
        temp = raw_data[15] == '' ? temp : raw_data[15]
        temp = temp.split('-')
        stock_affair.phones << Phone.new(:phone_type => 'Office', :area_number => temp[0], :number => temp[1])
        temp = raw_data[16] == '' ? raw_data[7] : raw_data[16]
        stock_affair.addresses << Address.new(:address_type => 'Office', :address => temp)

        s.stock_affair = stock_affair
      else
        if StockAffair.where(['name = ?', raw_data[14]]).count == 0
          stock_affair = StockAffair.new(:name => raw_data[14], :trader_type => 'T')
          temp = raw_data[15] == '' ? '00-00000000' : raw_data[15]
          temp = temp.split('-')
          stock_affair.phones << Phone.new(:phone_type => 'Office', :area_number => temp[0], :number => temp[1])
          stock_affair.addresses << Address.new(:address_type => 'Office', :address => raw_data[16])
        else
          stock_affair = StockAffair.find_by_name(raw_data[14])
        end
          s.stock_affair = stock_affair
      end
      s.save
    end

    render :text => 'done'
  end
end
