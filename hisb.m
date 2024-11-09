% 特殊的希腊字符换成其读音字母表示，文中的r,m,g,y(4)依次表示为y(2)(1),y(2),y(3),y(4)
% 论文标题为《重大疫情期医药研究报道质量监管四方演化博弈分析》
% 由于公式较长，本人虽然几番认真仔细核对，难免也可能出错，建议读者自行录入公式，看看是否有出入
% hisb.m  
function dydt = hisb(t, y, Cgh, Cgl, Ng, Tg, L, Ceh, Cel, S, Etg, Coh, Col, Rm, Bho, Cp, Tp)  
    dydt = zeros(4, 1);  
    dydt(1) = y(1) * (1 - y(1)) * (Cgl - Cgh + Etg + Ng + S - S * y(2) - Etg * y(3) * y(2) - Ng * y(3) * y(2) + Tg * y(3) * y(2));  
    dydt(2) = y(2) * (1 - y(2)) * (Cel - Ceh - Cel * y(3) + Col * y(3) + L * y(3) + S * y(1) + Cel * y(3) * y(1) - Col * y(3) * y(1) - L * y(3) * y(1));  
    dydt(3) = y(3) * (1 - y(3)) * (Col + Rm + Bho * y(2) - Coh * y(2) - Col * y(2) + Etg * y(1) - Rm * y(2) - Etg * y(1) * y(2));  
    dydt(4) =  y(4) * (y(4) - 1) * y(3) * y(2) * (Cp - Tp * y(1));  
end