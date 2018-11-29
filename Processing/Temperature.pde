void init_temperature_gui() {
  noFill();
  //rect(100, 100, 30, 200);
}
void update_Temp() {
  fill(255, 255, 255);
  text("RSSI: "+RSSI,150,130);
  text("Temperatur: "+temperature, 150, 150);
  text("Humidity: "+humidity, 150, 170);
 
}

void check_serial_data() { 
  if (serial.available()>0) {
    String input = serial.readStringUntil('}');
    if (input!=null) {
      serial_in(input);
      println(input);
    } else {
      
    }
  }
}
