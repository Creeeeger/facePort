.class public final Landroidx/window/area/SafeWindowAreaComponentProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0001H\u0002R\u0018\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0018\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0008R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/window/area/SafeWindowAreaComponentProvider;",
        "",
        "loader",
        "Ljava/lang/ClassLoader;",
        "(Ljava/lang/ClassLoader;)V",
        "extensionWindowAreaPresentationClass",
        "Ljava/lang/Class;",
        "getExtensionWindowAreaPresentationClass",
        "()Ljava/lang/Class;",
        "extensionWindowAreaStatusClass",
        "getExtensionWindowAreaStatusClass",
        "windowAreaComponent",
        "Landroidx/window/extensions/area/WindowAreaComponent;",
        "getWindowAreaComponent",
        "()Landroidx/window/extensions/area/WindowAreaComponent;",
        "windowAreaComponentClass",
        "getWindowAreaComponentClass",
        "windowExtensions",
        "Landroidx/window/extensions/WindowExtensions;",
        "isWindowAreaProviderValid",
        "",
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

.field private final windowExtensions:Landroidx/window/extensions/WindowExtensions;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/SafeWindowAreaComponentProvider;->loader:Ljava/lang/ClassLoader;

    new-instance v0, Landroidx/window/SafeWindowExtensionsProvider;

    invoke-direct {v0, p1}, Landroidx/window/SafeWindowExtensionsProvider;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0}, Landroidx/window/SafeWindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/area/SafeWindowAreaComponentProvider;->windowExtensions:Landroidx/window/extensions/WindowExtensions;

    return-void
.end method

.method public static final synthetic access$getWindowAreaComponentClass(Landroidx/window/area/SafeWindowAreaComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/area/SafeWindowAreaComponentProvider;->getWindowAreaComponentClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private final getExtensionWindowAreaPresentationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/area/SafeWindowAreaComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.area.ExtensionWindowAreaPresentation"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\n      \u2026ATION_CLASS\n            )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getExtensionWindowAreaStatusClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/area/SafeWindowAreaComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.area.ExtensionWindowAreaStatus"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(WindowE\u2026WINDOW_AREA_STATUS_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getWindowAreaComponentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/area/SafeWindowAreaComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.area.WindowAreaComponent"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(WindowE\u2026DOW_AREA_COMPONENT_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final isWindowAreaProviderValid(Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Landroidx/window/area/SafeWindowAreaComponentProvider$isWindowAreaProviderValid$1;

    invoke-direct {v0, p1, p0}, Landroidx/window/area/SafeWindowAreaComponentProvider$isWindowAreaProviderValid$1;-><init>(Ljava/lang/Object;Landroidx/window/area/SafeWindowAreaComponentProvider;)V

    const-string p0, "WindowExtensions#getWindowAreaComponent is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getWindowAreaComponent()Landroidx/window/extensions/area/WindowAreaComponent;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/window/area/SafeWindowAreaComponentProvider;->windowExtensions:Landroidx/window/extensions/WindowExtensions;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/window/area/SafeWindowAreaComponentProvider;->isWindowAreaProviderValid(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/window/area/reflectionguard/WindowAreaComponentValidator;->INSTANCE:Landroidx/window/area/reflectionguard/WindowAreaComponentValidator;

    invoke-direct {p0}, Landroidx/window/area/SafeWindowAreaComponentProvider;->getWindowAreaComponentClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Landroidx/window/core/ExtensionsUtil;->INSTANCE:Landroidx/window/core/ExtensionsUtil;

    invoke-virtual {v3}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroidx/window/area/reflectionguard/WindowAreaComponentValidator;->isWindowAreaComponentValid$window_release(Ljava/lang/Class;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroidx/window/area/SafeWindowAreaComponentProvider;->getExtensionWindowAreaStatusClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroidx/window/area/reflectionguard/WindowAreaComponentValidator;->isExtensionWindowAreaStatusValid$window_release(Ljava/lang/Class;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroidx/window/area/SafeWindowAreaComponentProvider;->getExtensionWindowAreaPresentationClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroidx/window/area/reflectionguard/WindowAreaComponentValidator;->isExtensionWindowAreaPresentationValid$window_release(Ljava/lang/Class;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/window/area/SafeWindowAreaComponentProvider;->windowExtensions:Landroidx/window/extensions/WindowExtensions;

    invoke-interface {p0}, Landroidx/window/extensions/WindowExtensions;->getWindowAreaComponent()Landroidx/window/extensions/area/WindowAreaComponent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method
