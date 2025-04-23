package xxx_s
  annotation (version="A", uses(Modelica(version="3.2.2")));
  model xs
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=2000)
      annotation (Placement(transformation(extent={{-26,68},{-6,88}})));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R=2000)
      annotation (Placement(transformation(extent={{-24,22},{-4,42}})));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={12,-12})));
    Modelica.Electrical.Analog.Basic.Resistor resistor3(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={64,-10})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=12)
      annotation (Placement(transformation(extent={{32,68},{52,88}})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V=6)
      annotation (Placement(transformation(extent={{32,22},{52,42}})));
    Modelica.Electrical.Analog.Sources.ConstantCurrent constantCurrent(I=0.002) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-42,-8})));
    Modelica.Electrical.Analog.Basic.Ground ground
      annotation (Placement(transformation(extent={{2,-76},{22,-56}})));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor
      annotation (Placement(transformation(extent={{-24,0},{-4,20}})));
  equation
    connect(resistor1.p, resistor.p) annotation (Line(points={{-24,32},{-42,32},{-42,78},{-26,78}}, color={0,0,255}));
    connect(resistor2.n, resistor3.n) annotation (Line(points={{12,-22},{12,-44},{64,-44},{64,-20}}, color={0,0,255}));
    connect(constantCurrent.p, resistor2.n) annotation (Line(points={{-42,-18},{-42,-44},{12,-44},{12,-22}}, color={0,0,255}));
    connect(constantCurrent.n, resistor1.p) annotation (Line(points={{-42,2},{-42,30},{-42,30},{-42,32},{-24,32}}, color={0,0,255}));
    connect(resistor1.n, constantVoltage1.p) annotation (Line(points={{-4,32},{16,32},{16,32},{32,32}}, color={0,0,255}));
    connect(resistor2.p, constantVoltage1.p)
      annotation (Line(points={{12,-2},{12,32},{32,32}}, color={0,0,255}));
    connect(resistor3.p, constantVoltage1.n)
      annotation (Line(points={{64,0},{64,32},{52,32}}, color={0,0,255}));
    connect(resistor.n, constantVoltage.p)
      annotation (Line(points={{-6,78},{32,78},{32,78}}, color={0,0,255}));
    connect(constantVoltage.n, constantVoltage1.n) annotation (Line(points={{52,78},{64,78},{64,32},{52,32}}, color={0,0,255}));
    connect(ground.p, resistor2.n)
      annotation (Line(points={{12,-56},{12,-22}}, color={0,0,255}));
    connect(voltageSensor.p, resistor1.p) annotation (Line(points={{-24,10},{-32,10},{-32,32},{-24,32}}, color={0,0,255}));
    connect(voltageSensor.n, resistor1.n) annotation (Line(points={{-4,10},{4,10},{4,32},{-4,32}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end xs;

  model Test_Class
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=0.8) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-52,38})));
    Modelica.Electrical.Analog.Semiconductors.Diode diode annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-2,34})));
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=0.2)
      annotation (Placement(transformation(extent={{-36,44},{-16,64}})));
    Modelica.Electrical.Analog.Basic.Ground ground
      annotation (Placement(transformation(extent={{-58,-20},{-38,0}})));
  equation
    connect(diode.p, resistor.n)
      annotation (Line(points={{-2,44},{-2,54},{-16,54}}, color={0,0,255}));
    connect(constantVoltage.n, diode.n) annotation (Line(points={{-52,28},{-52,24},{-2,24}}, color={0,0,255}));
    connect(constantVoltage.p, resistor.p) annotation (Line(points={{-52,48},{-52,54},{-36,54}}, color={0,0,255}));
    connect(constantVoltage.n, ground.p)
      annotation (Line(points={{-52,28},{-52,0},{-48,0}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end Test_Class;

  model xs_1
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=2000)
      annotation (Placement(transformation(extent={{-38,48},{-18,68}})));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R=2000)
      annotation (Placement(transformation(extent={{-38,24},{-18,44}})));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90,origin={0,-6})));
    Modelica.Electrical.Analog.Basic.Resistor resistor3(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={44,-6})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=12)
      annotation (Placement(transformation(extent={{14,48},{34,68}})));
    Modelica.Electrical.Analog.Basic.Ground ground
      annotation (Placement(transformation(extent={{14,-84},{34,-64}})));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor
      annotation (Placement(transformation(extent={{-38,2},{-18,22}})));
  equation
    connect(resistor1.p, resistor.p) annotation (Line(points={{-38,34},{-64,34},{-64,58},{-38,58}}, color={0,0,255}));
    connect(resistor.n, constantVoltage.p)
      annotation (Line(points={{-18,58},{14,58}}, color={0,0,255}));
    connect(resistor1.n, constantVoltage.n) annotation (Line(points={{-18,34},{44,34},{44,58},{34,58}}, color={0,0,255}));
    connect(constantVoltage.n, resistor3.p)
      annotation (Line(points={{34,58},{44,58},{44,4}}, color={0,0,255}));
    connect(resistor2.p, resistor1.n) annotation (Line(points={{1.77636e-15,4},{1.77636e-15,32},{0,32},{0,34},{-18,34}}, color={0,0,255}));
    connect(resistor3.n, ground.p) annotation (Line(points={{44,-16},{44,-46},{24,-46},{24,-64}}, color={0,0,255}));
    connect(resistor2.n, ground.p) annotation (Line(points={{-2.72005e-15,-16},{-2.72005e-15,-46},{24,-46},{24,-64}}, color={0,0,255}));
    connect(voltageSensor.p, resistor1.p) annotation (Line(points={{-38,12},{-46,12},{-46,34},{-38,34}}, color={0,0,255}));
    connect(voltageSensor.n, resistor1.n) annotation (Line(points={{-18,12},{-10,12},{-10,34},{-18,34}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end xs_1;

  model xs_2
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=2000) annotation (Placement(transformation(extent={{-10,10},{10,-10}}, rotation=180, origin={-40,74})));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R=2000) annotation (Placement(transformation(extent={{-10,10},{10,-10}}, rotation=180, origin={-40,36})));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={6,4})));
    Modelica.Electrical.Analog.Basic.Resistor resistor3(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={68,2})));
    Modelica.Electrical.Analog.Sources.ConstantCurrent constantCurrent(I=0.002) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={-80,4})));
    Modelica.Electrical.Analog.Basic.Ground ground
      annotation (Placement(transformation(extent={{-4,-64},{16,-44}})));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation (Placement(transformation(extent={{-10,10},{10,-10}}, rotation=180, origin={-40,12})));
  equation
    connect(constantCurrent.p, resistor1.n) annotation (Line(points={{-80,14},{-80,26},{-80,26},{-80,36},{-50,36}}, color={0,0,255}));
    connect(resistor1.n, resistor.n) annotation (Line(points={{-50,36},{-80,36},{-80,74},{-50,74}}, color={0,0,255}));
    connect(resistor1.p, resistor2.p)
      annotation (Line(points={{-30,36},{6,36},{6,14}}, color={0,0,255}));
    connect(constantCurrent.n, resistor2.n) annotation (Line(points={{-80,-6},{-80,-28},{6,-28},{6,-6}}, color={0,0,255}));
    connect(resistor2.p, resistor3.p) annotation (Line(points={{6,14},{6,36},{68,36},{68,12}}, color={0,0,255}));
    connect(resistor3.n, resistor2.n) annotation (Line(points={{68,-8},{68,-28},{6,-28},{6,-6}}, color={0,0,255}));
    connect(resistor.p, resistor3.p) annotation (Line(points={{-30,74},{68,74},{68,12}}, color={0,0,255}));
    connect(resistor2.n, ground.p) annotation (Line(points={{6,-6},{6,-24},{6,-24},{6,-44}}, color={0,0,255}));
    connect(voltageSensor.n, resistor1.n) annotation (Line(points={{-50,12},{-60,12},{-60,36},{-50,36}}, color={0,0,255}));
    connect(voltageSensor.p, resistor1.p) annotation (Line(points={{-30,12},{-18,12},{-18,36},{-30,36}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end xs_2;

  model xs_3
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=0, origin={-52,50})));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R=2000)
      annotation (Placement(transformation(extent={{-56,4},{-36,24}})));
    Modelica.Electrical.Analog.Basic.Resistor resistor3(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={50,-10})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=6)
      annotation (Placement(transformation(extent={{16,4},{36,24}})));
    Modelica.Electrical.Analog.Basic.Resistor resistor2(R=2000) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-6,-10})));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor
      annotation (Placement(transformation(extent={{-56,-20},{-36,0}})));
    Modelica.Electrical.Analog.Basic.Ground ground
      annotation (Placement(transformation(extent={{14,-86},{34,-66}})));
  equation
    connect(resistor3.n, constantVoltage.n)
      annotation (Line(points={{50,0},{50,14},{36,14}}, color={0,0,255}));
    connect(resistor3.n, resistor.n)
      annotation (Line(points={{50,0},{50,50},{-42,50}}, color={0,0,255}));
    connect(constantVoltage.p, resistor2.n)
      annotation (Line(points={{16,14},{-6,14},{-6,0}}, color={0,0,255}));
    connect(resistor2.p, resistor3.p) annotation (Line(points={{-6,-20},{-6,-48},{50,-48},{50,-20}}, color={0,0,255}));
    connect(resistor1.n, resistor2.n) annotation (Line(points={{-36,14},{-26,14},{-26,14},{-6,14},{-6,0}}, color={0,0,255}));
    connect(resistor1.p, resistor.p) annotation (Line(points={{-56,14},{-76,14},{-76,50},{-62,50}}, color={0,0,255}));
    connect(voltageSensor.p, resistor1.p) annotation (Line(points={{-56,-10},{-64,-10},{-64,14},{-56,14}}, color={0,0,255}));
    connect(voltageSensor.n, resistor1.n) annotation (Line(points={{-36,-10},{-28,-10},{-28,14},{-36,14}}, color={0,0,255}));
    connect(ground.p, resistor3.p) annotation (Line(points={{24,-66},{24,-48},{50,-48},{50,-20}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end xs_3;
end xxx_s;
