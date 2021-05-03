% Math 555 Final Exam Q5

% Create c1 and c2
c1 = [0 0];
c2 = [0 0];
N_val = 4;
rc2 = 1;
rc1 = rc2*(sin(pi/N_val) + 1) / (1 - sin(pi/N_val));
viscircles(c1, rc1)
hold on
viscircles(c2, rc2)
hold off
axis('equal')

% Case when c1 and c2 share centers
n = pi / asind((rc1-rc2) / (rc1+rc2))
if rem(n,1) == 0
    for k = 1:n
        rd = (rc1 - rc2) / 2;
        x = (rd+rc2)*cos(2*pi*(k/n));
        y = (rd+rc2)*sin(2*pi*(k/n));                   
        d1 = [x y];
        hold on
        viscircles(d1, rd)
        hold off
    end
end

