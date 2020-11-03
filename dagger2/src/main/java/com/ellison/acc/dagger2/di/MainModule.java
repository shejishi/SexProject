package com.ellison.acc.dagger2.di;

import com.ellison.acc.dagger2.bean.Person;

import dagger.Module;
import dagger.Provides;

@Module
public class MainModule {

    @Provides
    Person providesPerson() {
        return new Person("Ellison");
    }

}
