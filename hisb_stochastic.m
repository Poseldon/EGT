function dydt = hisb_stochastic(t, y, Cgh, Cgl, Ng, Tg, L, Ceh, Cel, S, Etg, Coh, Col, Rm, Bho, Cp, Tp, sigma)
    % Initialize the derivative vector
    dydt = zeros(4, 1);

    % Generate random noise for each differential equation
    noise = sigma .* randn(4, 1);

    % Define the differential equations with random perturbation added
    dydt(1) = y(1) * (1 - y(1)) * (Cgl - Cgh + Etg + Ng + S - S * y(2) - Etg * y(3) * y(2) - Ng * y(3) * y(2) + Tg * y(3) * y(2)) + noise(1);
    dydt(2) = y(2) * (1 - y(2)) * (Cel - Ceh - Cel * y(3) + Col * y(3) + L * y(3) + S * y(1) + Cel * y(3) * y(1) - Col * y(3) * y(1) - L * y(3) * y(1)) + noise(2);
    dydt(3) = y(3) * (1 - y(3)) * (Col + Rm + Bho * y(2) - Coh * y(2) - Col * y(2) + Etg * y(1) - Rm * y(2) - Etg * y(1) * y(2)) + noise(3);
    dydt(4) = y(4) * (y(4) - 1) * y(3) * y(2) * (Cp - Tp * y(1)) + noise(4);
end
