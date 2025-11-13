.class public abstract Landroidx/reflect/view/SeslSemWindowManagerReflector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static isTableMode()Z
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "com.samsung.android.view.SemWindowManager"

    const-string v3, "isTableMode"

    invoke-static {v2, v3, v1}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v3, v0, [Ljava/lang/Class;

    const-string v4, "getInstance"

    invoke-static {v2, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, " IllegalAccessException"

    const-string v5, " IllegalArgumentException"

    const-string v6, " InvocationTargetException"

    const-string v7, "SeslBaseReflector"

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v10, v6, v7, v9}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v10, v5, v7, v9}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v10, v4, v7, v9}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_0
    move-object v3, v8

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    move-object v3, v8

    :goto_2
    :try_start_1
    invoke-virtual {v1, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3, v6, v7, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_3

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3, v5, v7, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_3

    :catch_5
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3, v4, v7, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_3
    instance-of v1, v8, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    return v0
.end method
