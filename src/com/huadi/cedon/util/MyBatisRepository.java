package com.huadi.cedon.util;
import org.springframework.stereotype.Repository;
@Repository
public @interface MyBatisRepository {
    String value() default "";
}