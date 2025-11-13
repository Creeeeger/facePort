.class public final Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mMultiWindowManagerInstance:Ljava/lang/Object;


# instance fields
.field public mBaseClass:Ljava/lang/Class;

.field public mNameList:Ljava/util/ArrayList;

.field public mReflectionList:Ljava/util/ArrayList;


# virtual methods
.method public final addReflectionInstance(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mNameList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mReflectionList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final varargs invokeNormalMethod(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const-string v0, "getVisibleTasks"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "com.samsung.android.multiwindow.MultiWindowManager"

    const-string p1, "Cannot invoke getVisibleTasks"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mNameList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xf

    if-eq v8, v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    move v11, v2

    :goto_1
    if-ge v11, v8, :cond_4

    aget-char v12, v7, v11

    aget-char v13, v10, v11

    and-int/2addr v13, v12

    if-eq v13, v12, :cond_2

    goto :goto_2

    :cond_2
    if-ne v11, v9, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mReflectionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_6

    check-cast v5, Ljava/lang/reflect/Method;

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mBaseClass:Ljava/lang/Class;

    if-eqz v4, :cond_7

    new-array v2, v2, [Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->addReflectionInstance(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->addReflectionInstance(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    const-string v2, "AbstractBaseReflection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "com.samsung.android.multiwindow.MultiWindowManager No method "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v5, v1

    :goto_4
    if-nez v5, :cond_8

    const-string p0, "com.samsung.android.multiwindow.MultiWindowManager"

    const-string p1, "Cannot invoke there\'s no method reflection : "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :try_start_3
    invoke-virtual {v5, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    const-string p1, "AbstractBaseReflection"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "com.samsung.android.multiwindow.MultiWindowManager InvocationTargetException encountered invoking getVisibleTasks"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception p0

    const-string p1, "AbstractBaseReflection"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "com.samsung.android.multiwindow.MultiWindowManager IllegalAccessException encountered invoking getVisibleTasks"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-object v1

    :goto_6
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final loadReflection()V
    .locals 4

    const-string v0, "com.samsung.android.multiwindow.MultiWindowManager"

    const-string v1, "AbstractBaseReflection"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.samsung.android.multiwindow.MultiWindowManager Unable to load class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/reflections/MultiWindowManagerReflection;->mBaseClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string p0, "There\'s no class."

    invoke-static {v1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
