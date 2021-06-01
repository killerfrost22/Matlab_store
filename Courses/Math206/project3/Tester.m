    
%% mysum

%% mydetectbottom
disp("Start: mydetectbottom")
vpa(mydetectbottom(@(x) 8*x^2 + x^3/60,0.7,1.8))
vpa(mydetectbottom(@(x) 6*x^2 + x^3/60,1.0,2.0))
vpa(mydetectbottom(@(x) 9*x^2 + x^3/6,0.5,1.8))
vpa(mydetectbottom(@(x) (13*x^2)/2 + (2*x^3)/15,1.0,1.9))
vpa(mydetectbottom(@(x) (19*x^2)/2 + x^3/60,0.9,1.9))
vpa(mydetectbottom(@(x) 8*x^2 + (2*x^3)/15,0.7,1.1))
vpa(mydetectbottom(@(x) 6*x^2 + (7*x^3)/60,0.9,1.2))
vpa(mydetectbottom(@(x) (13*x^2)/2 + x^3/6,0.6,1.9))
vpa(mydetectbottom(@(x) 6*x^2 + x^3/10,0.7,1.0))
vpa(mydetectbottom(@(x) 7*x^2 + (3*x^3)/20,0.1,1.6))
% 7.9
% 9.0
% 7.7
% 8.6
% 8.5
% 5.1
% 5.7
% 8.2
% 4.7
% 6.5
disp("End: mydetectbottom")
%% myapproximatederivative
disp("Start: myapproximatederivative")
vpa(myapproximatederivative(@(x) cos(2*x) + 3*x^4 + 13,0.2,0.004))
vpa(myapproximatederivative(@(x) sin(2*x) + 5*x^3 + 13,3.9,0.003))
vpa(myapproximatederivative(@(x) cos(4*x) + 6*x^4 + 18,0.4,0.003))
vpa(myapproximatederivative(@(x) cos(x) + 4*x^4 + 14,3.9,0.002))
vpa(myapproximatederivative(@(x) cos(x) + 4*x^3 + 14,3.2,0.020)) 
vpa(myapproximatederivative(@(x) cos(4*x) + 4*x^4 + 16,1.8,0.002))
vpa(myapproximatederivative(@(x) sin(x) + 3*x^3 + 19,1.7,0.003))
vpa(myapproximatederivative(@(x) cos(4*x) + 5*x^3 + 13,2.2,0.020))
vpa(myapproximatederivative(@(x) cos(2*x) + 4*x^4 + 13,4.5,0.005)) 
vpa(myapproximatederivative(@(x) cos(4*x) + 4*x^4 + 17,0.5,0.040)) 
% -0.77307528567730265933732880512252
% 228.66761126754522592818830162287
% -2.3314902167425941570400027558208
% 950.64385980738654779997887089849
% 123.80476968878042498545255511999
% 90.517992949382005463121458888054
% 26.090264403752271960001962725073
% 71.124003702605079979548463597894
% 1458.7300730429001305310521274805
% -1.0644229824662048145000881049782
disp("End: myapproximatederivative")