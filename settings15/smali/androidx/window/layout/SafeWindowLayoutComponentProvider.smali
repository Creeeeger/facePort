.class public final Landroidx/window/layout/SafeWindowLayoutComponentProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\r\u0010\u0019\u001a\u00020\u0018H\u0001\u00a2\u0006\u0002\u0008\u001aJ\r\u0010\u001b\u001a\u00020\u0018H\u0001\u00a2\u0006\u0002\u0008\u001cJ\r\u0010\u001d\u001a\u00020\u0018H\u0001\u00a2\u0006\u0002\u0008\u001eJ\u0008\u0010\u001f\u001a\u00020\u0018H\u0002J\u0008\u0010 \u001a\u00020\u0018H\u0002J\u0008\u0010!\u001a\u00020\u0018H\u0002J\u0008\u0010\"\u001a\u00020\u0018H\u0002J\u0008\u0010#\u001a\u00020\u0018H\u0002J\u0008\u0010$\u001a\u00020\u0018H\u0002J\r\u0010%\u001a\u00020\u0018H\u0001\u00a2\u0006\u0002\u0008&J\u0008\u0010\'\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0018\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\nR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\n\u00a8\u0006("
    }
    d2 = {
        "Landroidx/window/layout/SafeWindowLayoutComponentProvider;",
        "",
        "loader",
        "Ljava/lang/ClassLoader;",
        "consumerAdapter",
        "Landroidx/window/core/ConsumerAdapter;",
        "(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V",
        "displayFoldFeatureClass",
        "Ljava/lang/Class;",
        "getDisplayFoldFeatureClass",
        "()Ljava/lang/Class;",
        "foldingFeatureClass",
        "getFoldingFeatureClass",
        "safeWindowExtensionsProvider",
        "Landroidx/window/SafeWindowExtensionsProvider;",
        "supportedWindowFeaturesClass",
        "getSupportedWindowFeaturesClass",
        "windowLayoutComponent",
        "Landroidx/window/extensions/layout/WindowLayoutComponent;",
        "getWindowLayoutComponent",
        "()Landroidx/window/extensions/layout/WindowLayoutComponent;",
        "windowLayoutComponentClass",
        "getWindowLayoutComponentClass",
        "canUseWindowLayoutComponent",
        "",
        "hasValidVendorApiLevel1",
        "hasValidVendorApiLevel1$window_release",
        "hasValidVendorApiLevel2",
        "hasValidVendorApiLevel2$window_release",
        "hasValidVendorApiLevel6",
        "hasValidVendorApiLevel6$window_release",
        "isDisplayFoldFeatureValid",
        "isFoldingFeatureValid",
        "isGetSupportedWindowFeaturesValid",
        "isMethodWindowLayoutInfoListenerJavaConsumerValid",
        "isMethodWindowLayoutInfoListenerWindowConsumerValid",
        "isSupportedWindowFeaturesValid",
        "isWindowLayoutComponentAccessible",
        "isWindowLayoutComponentAccessible$window_release",
        "isWindowLayoutProviderValid",
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
.field private final consumerAdapter:Landroidx/window/core/ConsumerAdapter;

.field private final loader:Ljava/lang/ClassLoader;

.field private final safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumerAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    new-instance p2, Landroidx/window/SafeWindowExtensionsProvider;

    invoke-direct {p2, p1}, Landroidx/window/SafeWindowExtensionsProvider;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

    return-void
.end method

.method public static final synthetic access$getConsumerAdapter$p(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Landroidx/window/core/ConsumerAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    return-object p0
.end method

.method public static final synthetic access$getDisplayFoldFeatureClass(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->getDisplayFoldFeatureClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFoldingFeatureClass(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->getFoldingFeatureClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSafeWindowExtensionsProvider$p(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Landroidx/window/SafeWindowExtensionsProvider;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

    return-object p0
.end method

.method public static final synthetic access$getSupportedWindowFeaturesClass(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->getSupportedWindowFeaturesClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWindowLayoutComponentClass(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->getWindowLayoutComponentClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private final canUseWindowLayoutComponent()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isWindowLayoutComponentAccessible$window_release()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroidx/window/core/ExtensionsUtil;->INSTANCE:Landroidx/window/core/ExtensionsUtil;

    invoke-virtual {v0}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel6$window_release()Z

    move-result v1

    :goto_0
    return v1
.end method

.method private final getDisplayFoldFeatureClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.layout.DisplayFoldFeature"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(DISPLAY_FOLD_FEATURE_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getFoldingFeatureClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.layout.FoldingFeature"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(FOLDING_FEATURE_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getSupportedWindowFeaturesClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.layout.SupportedWindowFeatures"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(SUPPORTED_WINDOW_FEATURES_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getWindowLayoutComponentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.layout.WindowLayoutComponent"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(WINDOW_LAYOUT_COMPONENT_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final isDisplayFoldFeatureValid()Z
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isDisplayFoldFeatureValid$1;

    invoke-direct {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isDisplayFoldFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    const-string p0, "DisplayFoldFeature is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isFoldingFeatureValid()Z
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    invoke-direct {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    const-string p0, "FoldingFeature class is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isGetSupportedWindowFeaturesValid()Z
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isGetSupportedWindowFeaturesValid$1;

    invoke-direct {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isGetSupportedWindowFeaturesValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    const-string p0, "WindowLayoutComponent#getSupportedWindowFeatures is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodWindowLayoutInfoListenerJavaConsumerValid()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowLayoutComponent#addWindowLayoutInfoListener("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", java.util.function.Consumer) is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerJavaConsumerValid$1;

    invoke-direct {v1, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerJavaConsumerValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    invoke-static {v0, v1}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodWindowLayoutInfoListenerWindowConsumerValid()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowLayoutComponent#addWindowLayoutInfoListener("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidx.window.extensions.core.util.function.Consumer) is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerWindowConsumerValid$1;

    invoke-direct {v1, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerWindowConsumerValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    invoke-static {v0, v1}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isSupportedWindowFeaturesValid()Z
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isSupportedWindowFeaturesValid$1;

    invoke-direct {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isSupportedWindowFeaturesValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    const-string p0, "SupportedWindowFeatures is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isWindowLayoutProviderValid()Z
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1;

    invoke-direct {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    const-string p0, "WindowExtensions#getWindowLayoutComponent is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .locals 1

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->canUseWindowLayoutComponent()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object p0

    invoke-interface {p0}, Landroidx/window/extensions/WindowExtensions;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final hasValidVendorApiLevel1$window_release()Z
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isMethodWindowLayoutInfoListenerJavaConsumerValid()Z

    move-result p0

    return p0
.end method

.method public final hasValidVendorApiLevel2$window_release()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isMethodWindowLayoutInfoListenerWindowConsumerValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasValidVendorApiLevel6$window_release()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isDisplayFoldFeatureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isSupportedWindowFeaturesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isGetSupportedWindowFeaturesValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWindowLayoutComponentAccessible$window_release()Z
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

    invoke-virtual {v0}, Landroidx/window/SafeWindowExtensionsProvider;->isWindowExtensionsValid$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isWindowLayoutProviderValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isFoldingFeatureValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
