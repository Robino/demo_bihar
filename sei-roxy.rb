require 'poseidon'

consumer = Poseidon::PartitionConsumer.new("0", "sei.kafka.pro.hupi.loc", 9092,
                                            "sei-roxy_forcol_declenchement_workflow", 0,:earliest_offset)

loop do
  messages = consumer.fetch
  messages.each do |m|
    puts m.value
    puts "Bonjour Bihar"
  end
end
