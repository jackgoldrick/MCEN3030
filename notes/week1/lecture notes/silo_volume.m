function[V] = silo_volume(L)

% define the parameters

D = 4; % cyl diamter
H = 1.5; % max cone height

% define function that gives the volume of a cone
    function [V_cone] = cone_volume(W_cone, H_cone)
        V_cone = (1/3) * pi * ((W_cone)/2)^2 * H_cone;
    end


% def function that gives the volume of a cylinder
    function [V_cyl] = cyl_volume(W_cyl, H_cyl)
        V_cyl = pi * ((W_cyl)/2)^2 *H_cyl;
    end
   
if L < H         
    W_actual = D * L / H;

    V = cone_volume(W_actual, L);

else 
    V = cone_volume(D,H) + cyl_volume(D,L-H);
end
