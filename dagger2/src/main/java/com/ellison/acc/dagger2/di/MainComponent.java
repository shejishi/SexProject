package com.ellison.acc.dagger2.di;

import com.ellison.acc.dagger2.MainActivity;

import dagger.Component;

@Component(modules = MainModule.class)
public interface MainComponent {
    void inject(MainActivity mainActivity);
}
