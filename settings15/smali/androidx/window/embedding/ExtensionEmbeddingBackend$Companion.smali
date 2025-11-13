.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/ExtensionEmbeddingBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0002J\u0017\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "globalInstance",
        "Landroidx/window/embedding/ExtensionEmbeddingBackend;",
        "globalLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "getInstance",
        "Landroidx/window/embedding/EmbeddingBackend;",
        "context",
        "Landroid/content/Context;",
        "initAndVerifyEmbeddingExtension",
        "Landroidx/window/embedding/EmbeddingInterfaceCompat;",
        "applicationContext",
        "isExtensionVersionSupported",
        "",
        "extensionVersion",
        "",
        "(Ljava/lang/Integer;)Z",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


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

.method private final initAndVerifyEmbeddingExtension(Landroid/content/Context;)Landroidx/window/embedding/EmbeddingInterfaceCompat;
    .locals 10

    const-string v0, "EmbeddingBackend"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroidx/window/core/ExtensionsUtil;->INSTANCE:Landroidx/window/core/ExtensionsUtil;

    invoke-virtual {v2}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;->isExtensionVersionSupported(Ljava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/window/embedding/EmbeddingCompat;->Companion:Landroidx/window/embedding/EmbeddingCompat$Companion;

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;->isEmbeddingAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Landroidx/window/embedding/EmbeddingBackend;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;->embeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v4

    new-instance v5, Landroidx/window/embedding/EmbeddingAdapter;

    new-instance p0, Landroidx/window/core/PredicateAdapter;

    invoke-direct {p0, v2}, Landroidx/window/core/PredicateAdapter;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v5, p0}, Landroidx/window/embedding/EmbeddingAdapter;-><init>(Landroidx/window/core/PredicateAdapter;)V

    new-instance p0, Landroidx/window/embedding/EmbeddingCompat;

    new-instance v6, Landroidx/window/core/ConsumerAdapter;

    invoke-direct {v6, v2}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v2, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {v2}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/window/WindowSdkExtensions;->getExtensionVersion()I

    move-result v3

    const/4 v7, 0x6

    if-lt v3, v7, :cond_0

    new-instance v3, Landroidx/window/embedding/OverlayControllerImpl;

    invoke-direct {v3, v4, v5}, Landroidx/window/embedding/OverlayControllerImpl;-><init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;)V

    move-object v8, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v8, v1

    :goto_0
    invoke-virtual {v2}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/WindowSdkExtensions;->getExtensionVersion()I

    move-result v2

    if-lt v2, v7, :cond_1

    new-instance v2, Landroidx/window/embedding/ActivityWindowInfoCallbackController;

    invoke-direct {v2, v4}, Landroidx/window/embedding/ActivityWindowInfoCallbackController;-><init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;)V

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Landroidx/window/embedding/EmbeddingCompat;-><init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/ConsumerAdapter;Landroid/content/Context;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/window/embedding/ActivityWindowInfoCallbackController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load embedding extension: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    if-nez v1, :cond_3

    const-string p0, "No supported embedding extension found"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Landroidx/window/embedding/EmbeddingBackend;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$getGlobalInstance$cp()Landroidx/window/embedding/ExtensionEmbeddingBackend;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$getGlobalLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$getGlobalInstance$cp()Landroidx/window/embedding/ExtensionEmbeddingBackend;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    const-string v1, "applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;->initAndVerifyEmbeddingExtension(Landroid/content/Context;)Landroidx/window/embedding/EmbeddingInterfaceCompat;

    move-result-object v0

    new-instance v1, Landroidx/window/embedding/ExtensionEmbeddingBackend;

    invoke-direct {v1, p1, v0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;-><init>(Landroid/content/Context;Landroidx/window/embedding/EmbeddingInterfaceCompat;)V

    invoke-static {v1}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$setGlobalInstance$cp(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_2
    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$getGlobalInstance$cp()Landroidx/window/embedding/ExtensionEmbeddingBackend;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final isExtensionVersionSupported(Ljava/lang/Integer;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method
