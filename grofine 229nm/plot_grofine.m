close all

load('grofine_water.mat')

figure(1)
plot(wavenumber_2fert_0water,intensity_2fert_0water/max(intensity_2fert_0water))
hold on
plot(wavenumber_2fert_2water,intensity_2fert_2water/max(intensity_2fert_2water))
plot(wavenumber_2fert_4water,intensity_2fert_4water/max(intensity_2fert_4water))
plot(wavenumber_2fert_6water,intensity_2fert_6water/max(intensity_2fert_6water))
plot(wavenumber_2fert_8water,intensity_2fert_8water/max(intensity_2fert_8water))

plot(wavenumber_DI,intensity_DI/max(intensity_DI))

figure(2)
plot(wavenumber_2fert_0water,intensity_2fert_0water/max(intensity_2fert_0water)-intensity_DI/max(intensity_DI))
hold on
plot(wavenumber_2fert_2water,intensity_2fert_2water/max(intensity_2fert_2water)-intensity_DI/max(intensity_DI))
plot(wavenumber_2fert_4water,intensity_2fert_4water/max(intensity_2fert_4water)-intensity_DI/max(intensity_DI))
plot(wavenumber_2fert_6water,intensity_2fert_6water/max(intensity_2fert_6water)-intensity_DI/max(intensity_DI))
plot(wavenumber_2fert_8water,intensity_2fert_8water/max(intensity_2fert_8water)-intensity_DI/max(intensity_DI))

no_water_2fert_0water = intensity_2fert_0water/max(intensity_2fert_0water)-intensity_DI/max(intensity_DI);
no_water_2fert_2water = intensity_2fert_2water/max(intensity_2fert_2water)-intensity_DI/max(intensity_DI);
no_water_2fert_4water = intensity_2fert_4water/max(intensity_2fert_4water)-intensity_DI/max(intensity_DI);
no_water_2fert_6water = intensity_2fert_6water/max(intensity_2fert_6water)-intensity_DI/max(intensity_DI);




fert_area = [trapz(no_water_2fert_0water(4:271)),trapz(no_water_2fert_2water(4:271)),...
    trapz(no_water_2fert_4water(4:271)),trapz(no_water_2fert_6water(4:271))]

water_area = [trapz(intensity_2fert_0water(622:967)),trapz(intensity_2fert_2water(622:967)),...
    trapz(intensity_2fert_4water(622:967)),trapz(intensity_2fert_6water(622:967))]


