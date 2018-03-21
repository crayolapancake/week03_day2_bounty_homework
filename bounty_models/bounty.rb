require('pg')
require('pry-byebug')

class Bounty

  attr_accessor :name, :bounty_value, :last_known_location, :weapon
  attr_reader :id

  def initialize(options)
      @name = options['name']
      @bounty_value = options['value']  
      @last_known_location = options['location']
      @weapon = options['weapons']
      @id = options['id']
  end

  def save
    db = PG.connect( { dbname: 'bounty_hunter', host: 'localhost'} )

    sql = "
    INSERT INTO bounty_hunters
      (name, value, location, weapon)
      VALUES
        ($1,$2,$3,$4)
      RETURNING *"

    values = [@name, @value, @location, @weapon]

    db.prepare("save_it", sql)
    db.exec_prepared("save_it", values)
    db.close()
  end


  # def Bounty.all
  #   db = PG.connect( { dbname: "bounty_hunter", host: "localhost" })
  #
  #   sql = "SELECT * FROM bounty_hunters ORDER BY name;"
  #   db.prepare("get all", sql)
  #   orders = db.exec_prepared("get all")
  #
  #   db.close()
  #
  #   # bounty_objects = bounty.map { |bounty_hash| Bounty.new(bounty_hash) }
  #
  #   # bounty_objects = []
  #   #   for order_hash in bounty
  #   #   pizza_order_objects = PizzaOrder.new(order_hash)
  #   #   end
  #
  #   # return bounty_objects
  # end


  # def update
  # end
  #
  # def delete
  # end


end
