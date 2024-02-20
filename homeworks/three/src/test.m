         b2 = .90:.01:1.10;
            x1 = -841 + 842 * b2;
            x2 = 921 - 922 * b2;
            x3 = 3 - 3 * b2;

            figure(1)
            hold on

            
            p1 = plot(b2, x1, '-r');

            p2 = plot(b2, x2, '-g');

            p3 = plot(b2, x3, '-b');

            legend("x1", "x2", "x3");

            hold off
            
            

