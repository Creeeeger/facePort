.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;-><init>()V

    return-void
.end method

.method public static initAndVerifyEmbeddingExtension(Landroid/content/Context;)Landroidx/window/embedding/EmbeddingCompat;
    .locals 12

    const-string v0, "EmbeddingBackend"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroidx/window/core/ExtensionsUtil;->INSTANCE:Landroidx/window/core/ExtensionsUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_5

    sget-object v2, Landroidx/window/embedding/EmbeddingCompat;->Companion:Landroidx/window/embedding/EmbeddingCompat$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/embedding/EmbeddingCompat$Companion;->isEmbeddingAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    const-class v2, Landroidx/window/embedding/EmbeddingBackend;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/window/embedding/EmbeddingCompat$Companion;->isEmbeddingAvailable()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const-class v6, Landroidx/window/embedding/EmbeddingCompat;

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v7, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    new-instance v8, Landroidx/window/core/ConsumerAdapter;

    invoke-direct {v8, v4}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v9

    invoke-direct {v7, v4, v8, v9}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;-><init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;Landroidx/window/extensions/WindowExtensions;)V

    invoke-virtual {v7}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v6, v4

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    aput-object v6, v3, v5

    new-instance v5, Landroidx/window/embedding/EmbeddingCompat$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v4, v3, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    aput-object v6, v3, v5

    new-instance v5, Landroidx/window/embedding/EmbeddingCompat$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v4, v3, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    goto :goto_0

    :goto_2
    new-instance v7, Landroidx/window/embedding/EmbeddingAdapter;

    new-instance v3, Landroidx/window/core/PredicateAdapter;

    invoke-direct {v3, v2}, Landroidx/window/core/PredicateAdapter;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v7, v3}, Landroidx/window/embedding/EmbeddingAdapter;-><init>(Landroidx/window/core/PredicateAdapter;)V

    new-instance v3, Landroidx/window/embedding/EmbeddingCompat;

    new-instance v8, Landroidx/window/core/ConsumerAdapter;

    invoke-direct {v8, v2}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v2, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    move-result-object v2

    iget v2, v2, Landroidx/window/WindowSdkExtensions;->extensionVersion:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_3

    new-instance v2, Landroidx/window/embedding/OverlayControllerImpl;

    invoke-direct {v2, v6, v7}, Landroidx/window/embedding/OverlayControllerImpl;-><init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;)V

    move-object v10, v2

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    move-object v10, v1

    :goto_3
    invoke-static {}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    move-result-object v2

    iget v2, v2, Landroidx/window/WindowSdkExtensions;->extensionVersion:I

    if-lt v2, v4, :cond_4

    new-instance v2, Landroidx/window/embedding/ActivityWindowInfoCallbackController;

    invoke-direct {v2, v6}, Landroidx/window/embedding/ActivityWindowInfoCallbackController;-><init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;)V

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object v11, v1

    :goto_4
    move-object v5, v3

    move-object v9, p0

    invoke-direct/range {v5 .. v11}, Landroidx/window/embedding/EmbeddingCompat;-><init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/ConsumerAdapter;Landroid/content/Context;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/window/embedding/ActivityWindowInfoCallbackController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_6

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load embedding extension: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_6
    if-nez v1, :cond_6

    const-string p0, "No supported embedding extension found"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1
.end method
