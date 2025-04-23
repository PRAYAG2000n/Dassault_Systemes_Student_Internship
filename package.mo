package Maximum_Power_transfer_theorem
  annotation (version="A", uses(Modelica(version="3.2.2")));
  model basic
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=6000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={38,34})));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R=6000)
      annotation (Placement(transformation(extent={{-8,-2},{12,18}})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=12) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-48,42})));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R=6000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-48,-16})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V=3) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={38,-16})));
    Modelica.Electrical.Analog.Basic.Resistor resistor3 annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={82,12})));
  equation
    connect(resistor1.n, resistor.p)
      annotation (Line(points={{12,8},{38,8},{38,24}}, color={0,0,255}));
    connect(constantVoltage.n, resistor1.p)
      annotation (Line(points={{-48,32},{-48,8},{-8,8}}, color={0,0,255}));
    connect(constantVoltage.p, resistor.n) annotation (Line(points={{-48,52},{-48,64},{38,64},{38,44}}, color={0,0,255}));
    connect(resistor1.p, resistor2.p)
      annotation (Line(points={{-8,8},{-48,8},{-48,-6}}, color={0,0,255}));
    connect(resistor1.n, constantVoltage1.p)
      annotation (Line(points={{12,8},{38,8},{38,-6}}, color={0,0,255}));
    connect(resistor2.n, constantVoltage1.n) annotation (Line(points={{-48,-26},{-48,-49},{38,-49},{38,-26}}, color={0,0,255}));
    connect(resistor3.p, resistor.n) annotation (Line(points={{82,22},{82,64},{38,64},{38,44}}, color={0,0,255}));
    connect(resistor3.n, constantVoltage1.n) annotation (Line(points={{82,2},{82,-48},{38,-48},{38,-26}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end basic;

  model basic_1
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=6000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=0, origin={-46,18})));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R=6000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-66,-18})));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R=6000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-22,46})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={4,-2})));
    Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={2,81})));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation (Placement(transformation(extent={{-10,10},{10,-10}}, rotation=-90, origin={27,12})));
    Modelica.Blocks.Math.Division division1
      annotation (Placement(transformation(extent={{52,33},{72,53}})));
  equation
    connect(resistor1.p, resistor.p) annotation (Line(points={{-66,-8},{-66,18},{-56,18}}, color={0,0,255}));
    connect(resistor.n, resistor2.p) annotation (Line(points={{-36,18},{-22,18},{-22,36}}, color={0,0,255}));
    connect(resistor1.n, resistor.n) annotation (Line(points={{-66,-28},{-66,-36},{-22,-36},{-22,18},{-36,18}}, color={0,0,255}));
    connect(resistor.p, resistor2.n) annotation (Line(points={{-56,18},{-66,18},{-66,74},{-22,74},{-22,56}}, color={0,0,255}));
    connect(constantVoltage.n, resistor1.n) annotation (Line(points={{4,-12},{4,-36},{-66,-36},{-66,-28}}, color={0,0,255}));
    connect(resistor2.n, currentSensor.n) annotation (Line(points={{-22,56},{-22,96},{2,96},{2,91}}, color={0,0,255}));
    connect(constantVoltage.n, voltageSensor.n) annotation (Line(points={{4,-12},{4,-36},{27,-36},{27,2},{27,2}}, color={0,0,255}));
    connect(constantVoltage.p, currentSensor.p) annotation (Line(points={{4,8},{4,64},{2,64},{2,71}}, color={0,0,255}));
    connect(currentSensor.p, voltageSensor.p) annotation (Line(points={{2,71},{2,64},{4,64},{4,51.4706},{27,51.4706},{27,22}}, color={0,0,255}));
    connect(voltageSensor.v, division1.u1) annotation (Line(points={{38,12},{38,12},{38,49},{50,49}}, color={0,0,127}));
    connect(currentSensor.i, division1.u2) annotation (Line(points={{13,81},{89,81},{89,0},{44,0},{44,37},{50,37}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end basic_1;

  model basic_2
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=6000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-26,4})));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R=6000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-60,-50})));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R=6000)
      annotation (Placement(transformation(extent={{-52,-30},{-32,-10}})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=12) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-60,4})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V=3) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-26,-48})));
    Modelica.Blocks.Math.Product product1
      annotation (Placement(transformation(extent={{60,2},{80,22}})));
    Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={4,24})));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={24,-26})));
    Modelica.Electrical.Analog.Basic.Resistor resistor3(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-2,-38})));
  equation
    connect(constantVoltage.n, resistor2.p) annotation (Line(points={{-60,-6},{-60,-20},{-52,-20}}, color={0,0,255}));
    connect(resistor2.n, constantVoltage1.p) annotation (Line(points={{-32,-20},{-26,-20},{-26,-38}}, color={0,0,255}));
    connect(resistor2.p, resistor1.p) annotation (Line(points={{-52,-20},{-60,-20},{-60,-40}}, color={0,0,255}));
    connect(resistor1.n, constantVoltage1.n) annotation (Line(points={{-60,-60},{-60,-74},{-26,-74},{-26,-58}}, color={0,0,255}));
    connect(resistor2.n, resistor.n) annotation (Line(points={{-32,-20},{-26,-20},{-26,-6}}, color={0,0,255}));
    connect(constantVoltage.p, resistor.p) annotation (Line(points={{-60,14},{-60,26},{-26,26},{-26,14}}, color={0,0,255}));
    connect(resistor.p, currentSensor.n) annotation (Line(points={{-26,14},{-26,26},{-16,26},{-16,42},{4,42},{4,34}}, color={0,0,255}));
    connect(currentSensor.p, voltageSensor.n) annotation (Line(points={{4,14},{4,4},{-2,4},{-2,-7.629},{24,-7.629},{24,-16}}, color={0,0,255}));
    connect(currentSensor.i, product1.u1) annotation (Line(points={{14,24},{44,24},{44,18},{58,18}}, color={0,0,127}));
    connect(voltageSensor.v, product1.u2) annotation (Line(points={{34,-26},{46,-26},{46,6},{58,6}}, color={0,0,127}));
    connect(currentSensor.p, resistor3.p) annotation (Line(points={{4,14},{4,4},{-2,4},{-2,-28}}, color={0,0,255}));
    connect(constantVoltage1.n, resistor3.n) annotation (Line(points={{-26,-58},{-26,-74},{-2,-74},{-2,-48}}, color={0,0,255}));
    connect(voltageSensor.p, resistor3.n) annotation (Line(points={{24,-36},{24,-74},{-2,-74},{-2,-48}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end basic_2;

  model basic_3
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=6000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-22.973,20.7445})));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R=6000) annotation (Placement(transformation(extent={{-54.973,-13.2555},{-34.973,6.74447}})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=12) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-62.973,15.7445})));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R=6000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-62.973,-28.2555})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V=3) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-22.973,-27.2555})));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation (Placement(transformation(extent={{-10,10},{10,-10}}, rotation=-90, origin={36,2})));
    Modelica.Electrical.Analog.Basic.Resistor resistor3(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={4,0})));
  equation
    connect(resistor1.n, resistor.p) annotation (Line(points={{-34.973,-3.25552},{-22.973,-3.25552},{-22.973,10.7445}}, color={0,0,255}));
    connect(constantVoltage.n, resistor1.p) annotation (Line(points={{-62.973,5.7445},{-62.973,-3.25552},{-54.973,-3.25552}}, color={0,0,255}));
    connect(constantVoltage.p, resistor.n) annotation (Line(points={{-62.973,25.7445},{-62.973,51.7445},{-22.973,51.7445},{-22.973,30.7445}}, color={0,0,255}));
    connect(resistor1.p, resistor2.p) annotation (Line(points={{-54.973,-3.25552},{-62.973,-3.25552},{-62.973,-18.2555}}, color={0,0,255}));
    connect(resistor1.n, constantVoltage1.p) annotation (Line(points={{-34.973,-3.25552},{-22.973,-3.25552},{-22.973,-17.2555}}, color={0,0,255}));
    connect(resistor2.n, constantVoltage1.n) annotation (Line(points={{-62.973,-38.2555},{-62.973,-60},{-22.973,-60},{-22.973,-37.2555}}, color={0,0,255}));
    connect(voltageSensor.p, resistor.n) annotation (Line(points={{36,12},{36,51.7445},{-22.973,51.7445},{-22.973,30.7445}}, color={0,0,255}));
    connect(voltageSensor.n, constantVoltage1.n) annotation (Line(points={{36,-8},{36,-60},{-22.973,-60},{-22.973,-37.2555}}, color={0,0,255}));
    connect(resistor3.p, voltageSensor.p) annotation (Line(points={{4,10},{4,32},{4,32},{4,52},{36,52},{36,12}}, color={0,0,255}));
    connect(resistor3.n, voltageSensor.n) annotation (Line(points={{4,-10},{4,-60},{36,-60},{36,-8}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end basic_3;
end Maximum_Power_transfer_theorem;
