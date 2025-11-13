.class public Lcom/android/internal/os/ClassLoaderFactory;
.super Ljava/lang/Object;
.source "ClassLoaderFactory.java"


# static fields
.field private static final blacklist DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

.field private static final blacklist DEX_CLASS_LOADER_NAME:Ljava/lang/String;

.field private static final blacklist PATH_CLASS_LOADER_NAME:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    const-class v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 40
    const-class v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DEX_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 41
    const-class v0, Ldalvik/system/DelegateLastClassLoader;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 16
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "librarySearchPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "classloaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 85
    .local p4, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p5, "sharedLibrariesLoadedAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 86
    move-object v8, v2

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/ClassLoader;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ClassLoader;

    move-object v8, v3

    :goto_0
    nop

    .line 88
    .local v8, "arrayOfSharedLibraries":[Ljava/lang/ClassLoader;
    if-nez v1, :cond_1

    .line 89
    move-object v9, v2

    goto :goto_1

    .line 90
    :cond_1
    nop

    .line 91
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/ClassLoader;

    .line 90
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/ClassLoader;

    move-object v9, v2

    :goto_1
    nop

    .line 92
    .local v9, "arrayOfSharedLibrariesLoadedAfterApp":[Ljava/lang/ClassLoader;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    new-instance v2, Ldalvik/system/PathClassLoader;

    move-object v4, v2

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    return-object v2

    .line 95
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    new-instance v2, Ldalvik/system/DelegateLastClassLoader;

    move-object v10, v2

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v8

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    return-object v2

    .line 100
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid classLoaderName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static blacklist createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;
    .locals 11
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "librarySearchPath"    # Ljava/lang/String;
    .param p2, "libraryPermittedPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "targetSdkVersion"    # I
    .param p5, "isNamespaceShared"    # Z
    .param p6, "classLoaderName"    # Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ALL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v9, v0

    invoke-static/range {v1 .. v10}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 12
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "librarySearchPath"    # Ljava/lang/String;
    .param p2, "libraryPermittedPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "targetSdkVersion"    # I
    .param p5, "isNamespaceShared"    # Z
    .param p6, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 134
    .local p7, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p8, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "sharedLibrariesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object/from16 v0, p8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 137
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v2, ""

    .line 138
    .local v2, "sonameList":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 139
    const-string v3, ":"

    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    .line 138
    :cond_0
    move-object v9, v2

    .line 142
    .end local v2    # "sonameList":Ljava/lang/String;
    .local v9, "sonameList":Ljava/lang/String;
    :goto_0
    const-wide/16 v10, 0x40

    const-string v2, "createClassloaderNamespace"

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 143
    move-object v2, v1

    move/from16 v3, p4

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p5

    move-object v7, p0

    move-object v8, v9

    invoke-static/range {v2 .. v8}, Lcom/android/internal/os/ClassLoaderFactory;->createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    if-nez v2, :cond_1

    .line 157
    return-object v1

    .line 153
    :cond_1
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create namespace for the classloader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static native greylist-max-r createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist getPathClassLoaderName()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist isDelegateLastClassLoaderName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isPathClassLoaderName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DEX_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 67
    :goto_1
    return v0
.end method

.method public static blacklist isValidClassLoaderName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
