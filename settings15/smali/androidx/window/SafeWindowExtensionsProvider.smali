.class public final Landroidx/window/SafeWindowExtensionsProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\r\u0010\u0011\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/window/SafeWindowExtensionsProvider;",
        "",
        "loader",
        "Ljava/lang/ClassLoader;",
        "(Ljava/lang/ClassLoader;)V",
        "windowExtensions",
        "Landroidx/window/extensions/WindowExtensions;",
        "getWindowExtensions",
        "()Landroidx/window/extensions/WindowExtensions;",
        "windowExtensionsClass",
        "Ljava/lang/Class;",
        "getWindowExtensionsClass$window_release",
        "()Ljava/lang/Class;",
        "windowExtensionsProviderClass",
        "getWindowExtensionsProviderClass",
        "isWindowExtensionsPresent",
        "",
        "isWindowExtensionsValid",
        "isWindowExtensionsValid$window_release",
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


# instance fields
.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/SafeWindowExtensionsProvider;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static final synthetic access$getLoader$p(Landroidx/window/SafeWindowExtensionsProvider;)Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Landroidx/window/SafeWindowExtensionsProvider;->loader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static final synthetic access$getWindowExtensionsProviderClass(Landroidx/window/SafeWindowExtensionsProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/SafeWindowExtensionsProvider;->getWindowExtensionsProviderClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private final getWindowExtensionsProviderClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/SafeWindowExtensionsProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.WindowExtensionsProvider"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(WindowE\u2026XTENSIONS_PROVIDER_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final isWindowExtensionsPresent()Z
    .locals 2

    sget-object v0, Landroidx/window/reflection/ReflectionUtils;->INSTANCE:Landroidx/window/reflection/ReflectionUtils;

    new-instance v1, Landroidx/window/SafeWindowExtensionsProvider$isWindowExtensionsPresent$1;

    invoke-direct {v1, p0}, Landroidx/window/SafeWindowExtensionsProvider$isWindowExtensionsPresent$1;-><init>(Landroidx/window/SafeWindowExtensionsProvider;)V

    invoke-virtual {v0, v1}, Landroidx/window/reflection/ReflectionUtils;->checkIsPresent$window_release(Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getWindowExtensions()Landroidx/window/extensions/WindowExtensions;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroidx/window/SafeWindowExtensionsProvider;->isWindowExtensionsPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/window/SafeWindowExtensionsProvider;->isWindowExtensionsValid$window_release()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final getWindowExtensionsClass$window_release()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/SafeWindowExtensionsProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.WindowExtensions"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(WindowE\u2026.WINDOW_EXTENSIONS_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isWindowExtensionsValid$window_release()Z
    .locals 1

    invoke-direct {p0}, Landroidx/window/SafeWindowExtensionsProvider;->isWindowExtensionsPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/window/SafeWindowExtensionsProvider$isWindowExtensionsValid$1;

    invoke-direct {v0, p0}, Landroidx/window/SafeWindowExtensionsProvider$isWindowExtensionsValid$1;-><init>(Landroidx/window/SafeWindowExtensionsProvider;)V

    const-string p0, "WindowExtensionsProvider#getWindowExtensions is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
