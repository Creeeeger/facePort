.class public Lcom/sec/android/iaft/IAFDHotfix;
.super Ljava/lang/Object;
.source "IAFDHotfix.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IAFT_IAFDHotfix"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hotfix(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "expType"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "result":Z
    const-string v1, "IAFT_IAFDHotfix"

    if-nez p0, :cond_0

    .line 34
    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return v0

    .line 38
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iafdrepair_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v3, "dexLocation":Ljava/io/File;
    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 41
    .local v4, "loader":Ldalvik/system/PathClassLoader;
    const-string v5, "hotfix start"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v5, "com.samsung.hotfix.hotfix"

    invoke-virtual {v4, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 43
    .local v5, "hotfixClass":Ljava/lang/Class;
    const-string v6, "iafdrepair"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const-class v9, Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 44
    .local v6, "iafdrepairMethod":Ljava/lang/reflect/Method;
    new-array v8, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 45
    .local v8, "mc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 46
    .local v9, "obj":Ljava/lang/Object;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v11

    aput-object p2, v7, v12

    invoke-virtual {v6, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v0, v7

    .line 47
    const-string v7, "hotfix end"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "dexLocation":Ljava/io/File;
    .end local v4    # "loader":Ldalvik/system/PathClassLoader;
    .end local v5    # "hotfixClass":Ljava/lang/Class;
    .end local v6    # "iafdrepairMethod":Ljava/lang/reflect/Method;
    .end local v8    # "mc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hotfix fail"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
