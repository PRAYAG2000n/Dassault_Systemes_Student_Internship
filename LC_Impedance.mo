package LC_driving_point_impedance
  annotation (version="A", uses(Modelica(version="3.2.3")));
  model LC_POLES
    Modelica.Electrical.Analog.Basic.Ground ground annotation (Placement(transformation(extent={{23.1762,-76.2104},{43.1762,-56.2104}})));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C=0.5) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={33.1762,5.78956})));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor(C=0.3) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={77.1762,3.78956})));
    Modelica.Electrical.Analog.Basic.Inductor inductor(L=4) annotation (Placement(transformation(extent={{-26.8238,27.7896},{-6.82381,47.7896}})));
    Modelica.Electrical.Analog.Basic.Inductor inductor1(L=1) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-16.8238,-44.2104})));
    Modelica.Electrical.Analog.Sources.ConstantCurrent constantCurrent annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-70.8238,3.78956})));
  equation
    connect(capacitor.n, ground.p) annotation (Line(points={{77.1762,-6.21044},{77.1762,-44.2104},{33.1762,-44.2104},{33.1762,-56.2104}}, color={0,0,255}));
    connect(capacitor1.n, ground.p) annotation (Line(points={{33.1762,-4.21044},{33.1762,-46.2104},{33.1762,-46.2104},{33.1762,-56.2104}}, color={0,0,255}));
    connect(inductor.n, capacitor1.p) annotation (Line(points={{-6.82381,37.7896},{33.1762,37.7896},{33.1762,15.7896}}, color={0,0,255}));
    connect(capacitor.p, capacitor1.p) annotation (Line(points={{77.1762,13.7896},{77.1762,37.7896},{33.1762,37.7896},{33.1762,15.7896}}, color={0,0,255}));
    connect(inductor1.p, ground.p) annotation (Line(points={{-6.8238,-44.2104},{33.1762,-44.2104},{33.1762,-56.2104}}, color={0,0,255}));
    connect(constantCurrent.n, inductor.p) annotation (Line(points={{-70.8238,13.7896},{-70.8238,37.7896},{-26.8238,37.7896}}, color={0,0,255}));
    connect(constantCurrent.p, inductor1.n) annotation (Line(points={{-70.8238,-6.21044},{-70.8238,-44.2104},{-26.8238,-44.2104}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end LC_POLES;

  model LC_ZEROS
    Modelica.Electrical.Analog.Basic.Ground ground annotation (Placement(transformation(extent={{9.96246,-86.3409},{29.9625,-66.3409}})));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C=0.5) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=-90, origin={19.9625,-4.34094})));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor(C=0.3) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={63.9625,-6.34094})));
    Modelica.Electrical.Analog.Basic.Inductor inductor(L=4) annotation (Placement(transformation(extent={{-40.0375,17.6591},{-20.0375,37.6591}})));
    Modelica.Electrical.Analog.Basic.Inductor inductor1(L=1) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-30.0375,-54.3409})));
    Modelica.Electrical.Analog.Sources.ConstantVoltage V1 annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-60,-6})));
  equation
    connect(capacitor.n, ground.p) annotation (Line(points={{63.9625,-16.3409},{63.9625,-54.3409},{19.9625,-54.3409},{19.9625,-66.3409}}, color={0,0,255}));
    connect(capacitor1.n, ground.p) annotation (Line(points={{19.9625,-14.3409},{19.9625,-14.3409},{19.9625,-66.3409},{19.9625,-66.3409}}, color={0,0,255}));
    connect(inductor.n, capacitor1.p) annotation (Line(points={{-20.0375,27.6591},{19.9625,27.6591},{19.9625,5.65906}}, color={0,0,255}));
    connect(capacitor.p, capacitor1.p) annotation (Line(points={{63.9625,3.65906},{63.9625,27.6591},{19.9625,27.6591},{19.9625,5.65906}}, color={0,0,255}));
    connect(inductor1.p, ground.p) annotation (Line(points={{-20.0375,-54.3409},{19.9625,-54.3409},{19.9625,-66.3409}}, color={0,0,255}));
    connect(V1.n, inductor.p) annotation (Line(points={{-60,4},{-60,27.6591},{-40.0375,27.6591}}, color={0,0,255}));
    connect(V1.p, inductor1.n) annotation (Line(points={{-60,-16},{-60,-54.3409},{-40.0375,-54.3409}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end LC_ZEROS;
end LC_driving_point_impedance;
