(librepcb_component e593b5b8-c1ef-422c-80c2-2d57f58159d2
 (name "SHT40")
 (description "Sensirion SHT4x Humidity and Temperature sensor")
 (keywords "")
 (author "Kyle Gunger")
 (version "0.1")
 (created 2024-04-17T01:29:42Z)
 (deprecated false)
 (generated_by "")
 (category d1b6d2ca-061d-4c5c-81b2-cc7ee26942cb)
 (schematic_only false)
 (default_value "SH4x")
 (prefix "U")
 (signal d47f9e19-7b3b-48e1-a448-5ba27aec902b (name "SDA") (role passive)
  (required true) (negated false) (clock false) (forced_net "")
 )
 (signal cdd20457-0d91-4329-a23a-a03da3a5d5ec (name "VDD") (role passive)
  (required true) (negated false) (clock false) (forced_net "")
 )
 (signal 6fec5d1c-eec7-4d79-9ed0-6918a8db790b (name "VSS") (role passive)
  (required true) (negated false) (clock false) (forced_net "")
 )
 (signal 8c0abc84-13d8-4a49-8aaa-742072b7f6ae (name "SCL") (role passive)
  (required true) (negated false) (clock false) (forced_net "")
 )
 (variant 665ec934-e8ef-4a79-a456-7a52f8f8a670 (norm "")
  (name "default")
  (description "")
  (gate 026180c8-8a0f-42fa-90cc-f62cd2cbad56
   (symbol 6af97d05-bdca-4efa-b567-aa6129895425)
   (position 0.0 0.0) (rotation 0.0) (required true) (suffix "")
   (pin 0e0dd2a1-d269-441a-b4df-73a7affb0162 (signal 6fec5d1c-eec7-4d79-9ed0-6918a8db790b) (text signal))
   (pin 47720781-c4de-417b-87a6-1223da2c736f (signal cdd20457-0d91-4329-a23a-a03da3a5d5ec) (text signal))
   (pin b2fac1ac-6a19-40a5-ab07-5c5de1759293 (signal d47f9e19-7b3b-48e1-a448-5ba27aec902b) (text signal))
   (pin e4102d93-eb84-4b8e-90b2-d935d6b63c6d (signal 8c0abc84-13d8-4a49-8aaa-742072b7f6ae) (text signal))
  )
 )
)
