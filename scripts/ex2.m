fig = figure();
xlim([0,6]);
ylim([0, 4]);
grid on;
hold on;
xlabel('U_I [V]')
ylabel('U_O [V]')

%% Kennlinie aus ids = K/2 (ugs - ut)^2, mit Cutoff
Us = 5;
Rd = 3;
Ron = 1.5;
K = 1;
Ut = 1.5;
Ui = 0:.05:6;
Utri = Us - Ut - sqrt(2*(Us+Ut)/Rd/K);
Uo = (Ui > Us - Ut) * Us ...
    + (Ui <= Us - Ut & Ui >= Utri) .* (Us - Rd*K/2*(Us-Ui-Ut).^2) ...
    + (Ui < Utri) .* ((Ron - Rd)*Us + Rd*Ui) / (Rd + Ron);

plot(Ui, Uo);
ylim([-3, 8])
grid on

%% Figure Export
print_fig_to_file(fig, '../figures/generated/ex2.eps', '-depsc', 2.5);

%% Data Export
csvwrite('../data/generated/data_analytical.csv', [Ui', Uo'])