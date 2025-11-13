.class public final Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008C\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\r\u0010\u0015\u001a\u00020\u0014H\u0001\u00a2\u0006\u0002\u0008\u0016J\r\u0010\u0017\u001a\u00020\u0014H\u0001\u00a2\u0006\u0002\u0008\u0018J\r\u0010\u0019\u001a\u00020\u0014H\u0001\u00a2\u0006\u0002\u0008\u001aJ\r\u0010\u001b\u001a\u00020\u0014H\u0001\u00a2\u0006\u0002\u0008\u001cJ\r\u0010\u001d\u001a\u00020\u0014H\u0001\u00a2\u0006\u0002\u0008\u001eJ\r\u0010\u001f\u001a\u00020\u0014H\u0001\u00a2\u0006\u0002\u0008 J\u0008\u0010!\u001a\u00020\u0014H\u0002J\u0008\u0010\"\u001a\u00020\u0014H\u0002J\u0008\u0010#\u001a\u00020\u0014H\u0002J\u0008\u0010$\u001a\u00020\u0014H\u0002J\u0008\u0010%\u001a\u00020\u0014H\u0002J\u0008\u0010&\u001a\u00020\u0014H\u0002J\u0008\u0010\'\u001a\u00020\u0014H\u0002J\u0008\u0010(\u001a\u00020\u0014H\u0002J\u0008\u0010)\u001a\u00020\u0014H\u0002J\u0008\u0010*\u001a\u00020\u0014H\u0002J\u0008\u0010+\u001a\u00020\u0014H\u0002J\u0008\u0010,\u001a\u00020\u0014H\u0002J\u0008\u0010-\u001a\u00020\u0014H\u0002J\u0008\u0010.\u001a\u00020\u0014H\u0002J\u0008\u0010/\u001a\u00020\u0014H\u0002J\u0008\u00100\u001a\u00020\u0014H\u0002J\u0008\u00101\u001a\u00020\u0014H\u0002J\u0008\u00102\u001a\u00020\u0014H\u0002J\u0008\u00103\u001a\u00020\u0014H\u0002J\u0008\u00104\u001a\u00020\u0014H\u0002J\u0008\u00105\u001a\u00020\u0014H\u0002J\u0008\u00106\u001a\u00020\u0014H\u0002J\u0008\u00107\u001a\u00020\u0014H\u0002J\u0008\u00108\u001a\u00020\u0014H\u0002J\u0008\u00109\u001a\u00020\u0014H\u0002J\u0008\u0010:\u001a\u00020\u0014H\u0002J\u0008\u0010;\u001a\u00020\u0014H\u0002J\u0008\u0010<\u001a\u00020\u0014H\u0002J\u0008\u0010=\u001a\u00020\u0014H\u0002J\u0008\u0010>\u001a\u00020\u0014H\u0002J\u0008\u0010?\u001a\u00020\u0014H\u0002J\u0008\u0010@\u001a\u00020\u0014H\u0002J\u0008\u0010A\u001a\u00020\u0014H\u0002J\u0008\u0010B\u001a\u00020\u0014H\u0002J\u0008\u0010C\u001a\u00020\u0014H\u0002J\u0008\u0010D\u001a\u00020\u0014H\u0002J\u0008\u0010E\u001a\u00020\u0014H\u0002J\u0008\u0010F\u001a\u00020\u0014H\u0002J\u0008\u0010G\u001a\u00020\u0014H\u0002J\u0008\u0010H\u001a\u00020\u0014H\u0002J\u0008\u0010I\u001a\u00020\u0014H\u0002J\u0008\u0010J\u001a\u00020\u0014H\u0002J\u0008\u0010K\u001a\u00020\u0014H\u0002J\u0008\u0010L\u001a\u00020\u0014H\u0002J\u0008\u0010M\u001a\u00020\u0014H\u0002J\u0008\u0010N\u001a\u00020\u0014H\u0002J\u0008\u0010O\u001a\u00020\u0014H\u0002J\u0008\u0010P\u001a\u00020\u0014H\u0002J\u0008\u0010Q\u001a\u00020\u0014H\u0002J\u0008\u0010R\u001a\u00020\u0014H\u0002J\u0008\u0010S\u001a\u00020\u0014H\u0002J\u0008\u0010T\u001a\u00020\u0014H\u0002J\u0008\u0010U\u001a\u00020\u0014H\u0002J\u0008\u0010V\u001a\u00020\u0014H\u0002R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006W"
    }
    d2 = {
        "Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;",
        "",
        "loader",
        "Ljava/lang/ClassLoader;",
        "consumerAdapter",
        "Landroidx/window/core/ConsumerAdapter;",
        "windowExtensions",
        "Landroidx/window/extensions/WindowExtensions;",
        "(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;Landroidx/window/extensions/WindowExtensions;)V",
        "activityEmbeddingComponent",
        "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;",
        "getActivityEmbeddingComponent",
        "()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;",
        "activityEmbeddingComponentClass",
        "Ljava/lang/Class;",
        "getActivityEmbeddingComponentClass",
        "()Ljava/lang/Class;",
        "safeWindowExtensionsProvider",
        "Landroidx/window/SafeWindowExtensionsProvider;",
        "canUseActivityEmbeddingComponent",
        "",
        "hasValidVendorApiLevel1",
        "hasValidVendorApiLevel1$window_release",
        "hasValidVendorApiLevel2",
        "hasValidVendorApiLevel2$window_release",
        "hasValidVendorApiLevel3",
        "hasValidVendorApiLevel3$window_release",
        "hasValidVendorApiLevel5",
        "hasValidVendorApiLevel5$window_release",
        "hasValidVendorApiLevel6",
        "hasValidVendorApiLevel6$window_release",
        "isActivityEmbeddingComponentAccessible",
        "isActivityEmbeddingComponentAccessible$window_release",
        "isActivityEmbeddingComponentValid",
        "isActivityStackGetActivityStackTokenValid",
        "isActivityStackGetTagValid",
        "isClassActivityRuleBuilderLevel1Valid",
        "isClassActivityRuleBuilderLevel2Valid",
        "isClassActivityRuleValid",
        "isClassActivityStackAttributesBuilderValid",
        "isClassActivityStackAttributesCalculatorParamsValid",
        "isClassActivityStackAttributesValid",
        "isClassActivityStackTokenValid",
        "isClassAnimationBackgroundValid",
        "isClassEmbeddedActivityWindowInfoValid",
        "isClassEmbeddingRuleValid",
        "isClassParentContainerInfoValid",
        "isClassSplitAttributesCalculatorParamsValid",
        "isClassSplitAttributesValid",
        "isClassSplitInfoTokenValid",
        "isClassSplitInfoValid",
        "isClassSplitPairRuleBuilderLevel1Valid",
        "isClassSplitPairRuleBuilderLevel2Valid",
        "isClassSplitPairRuleValid",
        "isClassSplitPlaceholderRuleBuilderLevel1Valid",
        "isClassSplitPlaceholderRuleBuilderLevel2Valid",
        "isClassSplitPlaceholderRuleValid",
        "isClassSplitTypeValid",
        "isClassWindowAttributesValid",
        "isMethodClearActivityStackAttributesCalculatorValid",
        "isMethodClearEmbeddedActivityWindowInfoCallbackValid",
        "isMethodClearSplitInfoCallbackValid",
        "isMethodGetActivityStackTokenValid",
        "isMethodGetDefaultSplitAttributesValid",
        "isMethodGetEmbeddedActivityWindowInfoValid",
        "isMethodGetFinishPrimaryWithPlaceholderValid",
        "isMethodGetLayoutDirectionValid",
        "isMethodGetParentContainerInfoValid",
        "isMethodGetSplitAttributesValid",
        "isMethodGetSplitInfoTokenValid",
        "isMethodGetSplitRatioValid",
        "isMethodInvalidateTopVisibleSplitAttributesValid",
        "isMethodIsActivityEmbeddedValid",
        "isMethodPinUnpinTopActivityStackValid",
        "isMethodRegisterActivityStackCallbackValid",
        "isMethodSetActivityStackAttributesCalculatorValid",
        "isMethodSetEmbeddedActivityWindowInfoCallbackValid",
        "isMethodSetEmbeddingRulesValid",
        "isMethodSetSplitInfoCallbackJavaConsumerValid",
        "isMethodSetSplitInfoCallbackWindowConsumerValid",
        "isMethodSplitAttributesCalculatorValid",
        "isMethodSplitInfoGetTokenValid",
        "isMethodUnregisterActivityStackCallbackValid",
        "isMethodUpdateActivityStackAttributesValid",
        "isMethodUpdateSplitAttributesValid",
        "isMethodUpdateSplitAttributesWithTokenValid",
        "isOverlayFeatureValid",
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

.field private final windowExtensions:Landroidx/window/extensions/WindowExtensions;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;Landroidx/window/extensions/WindowExtensions;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumerAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowExtensions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    iput-object p3, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->windowExtensions:Landroidx/window/extensions/WindowExtensions;

    new-instance p2, Landroidx/window/SafeWindowExtensionsProvider;

    invoke-direct {p2, p1}, Landroidx/window/SafeWindowExtensionsProvider;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

    return-void
.end method

.method public static final synthetic access$getActivityEmbeddingComponentClass(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->getActivityEmbeddingComponentClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConsumerAdapter$p(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Landroidx/window/core/ConsumerAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    return-object p0
.end method

.method public static final synthetic access$getSafeWindowExtensionsProvider$p(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Landroidx/window/SafeWindowExtensionsProvider;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

    return-object p0
.end method

.method private final canUseActivityEmbeddingComponent()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isActivityEmbeddingComponentAccessible$window_release()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {v0}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/WindowSdkExtensions;->getExtensionVersion()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x5

    if-gt v2, v0, :cond_3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel3$window_release()Z

    move-result v1

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel5$window_release()Z

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    if-gt v2, v0, :cond_5

    const v2, 0x7fffffff

    if-gt v0, v2, :cond_5

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel6$window_release()Z

    move-result v1

    :cond_5
    :goto_0
    return v1
.end method

.method private final getActivityEmbeddingComponentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.embedding.ActivityEmbeddingComponent"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(ACTIVIT\u2026MBEDDING_COMPONENT_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final isActivityEmbeddingComponentValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityEmbeddingComponentValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityEmbeddingComponentValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "WindowExtensions#getActivityEmbeddingComponent is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isActivityStackGetActivityStackTokenValid()Z
    .locals 1

    const-string p0, "ActivityStack#getActivityToken is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityStackGetActivityStackTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityStackGetActivityStackTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isActivityStackGetTagValid()Z
    .locals 1

    const-string p0, "ActivityStack#getTag is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityStackGetTagValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityStackGetTagValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityRuleBuilderLevel1Valid()Z
    .locals 1

    const-string p0, "Class ActivityRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel1Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel1Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityRuleBuilderLevel2Valid()Z
    .locals 1

    const-string p0, "Class ActivityRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityRuleValid()Z
    .locals 1

    const-string p0, "Class ActivityRule is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityStackAttributesBuilderValid()Z
    .locals 1

    const-string p0, "Class ActivityStackAttributes.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackAttributesBuilderValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackAttributesBuilderValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityStackAttributesCalculatorParamsValid()Z
    .locals 1

    const-string p0, "Class ActivityStackAttributesCalculatorParams is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackAttributesCalculatorParamsValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackAttributesCalculatorParamsValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityStackAttributesValid()Z
    .locals 1

    const-string p0, "Class ActivityStackAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityStackTokenValid()Z
    .locals 1

    const-string p0, "Class ActivityStack.Token is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassAnimationBackgroundValid()Z
    .locals 1

    const-string p0, "Class AnimationBackground is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassAnimationBackgroundValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassAnimationBackgroundValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassEmbeddedActivityWindowInfoValid()Z
    .locals 1

    const-string p0, "Class EmbeddedActivityWindowInfo is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassEmbeddedActivityWindowInfoValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassEmbeddedActivityWindowInfoValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassEmbeddingRuleValid()Z
    .locals 1

    const-string p0, "Class EmbeddingRule is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassEmbeddingRuleValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassEmbeddingRuleValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassParentContainerInfoValid()Z
    .locals 1

    const-string p0, "ParentContainerInfo is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassParentContainerInfoValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassParentContainerInfoValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitAttributesCalculatorParamsValid()Z
    .locals 1

    const-string p0, "Class SplitAttributesCalculatorParams is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitAttributesCalculatorParamsValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitAttributesCalculatorParamsValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitAttributesValid()Z
    .locals 1

    const-string p0, "Class SplitAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitInfoTokenValid()Z
    .locals 1

    const-string p0, "SplitInfo.Token is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitInfoTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitInfoTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitInfoValid()Z
    .locals 1

    const-string p0, "Class SplitInfo is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitInfoValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitInfoValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPairRuleBuilderLevel1Valid()Z
    .locals 1

    const-string p0, "Class SplitPairRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleBuilderLevel1Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleBuilderLevel1Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPairRuleBuilderLevel2Valid()Z
    .locals 1

    const-string p0, "Class SplitPairRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleBuilderLevel2Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleBuilderLevel2Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPairRuleValid()Z
    .locals 1

    const-string p0, "Class SplitPairRule is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPlaceholderRuleBuilderLevel1Valid()Z
    .locals 1

    const-string p0, "Class SplitPlaceholderRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleBuilderLevel1Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleBuilderLevel1Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPlaceholderRuleBuilderLevel2Valid()Z
    .locals 1

    const-string p0, "Class SplitPlaceholderRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleBuilderLevel2Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleBuilderLevel2Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPlaceholderRuleValid()Z
    .locals 1

    const-string p0, "Class SplitPlaceholderRule is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitTypeValid()Z
    .locals 1

    const-string p0, "Class SplitAttributes.SplitType is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitTypeValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitTypeValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassWindowAttributesValid()Z
    .locals 1

    const-string p0, "Class WindowAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassWindowAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassWindowAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodClearActivityStackAttributesCalculatorValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearActivityStackAttributesCalculatorValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearActivityStackAttributesCalculatorValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "clearActivityStackAttributesCalculator is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodClearEmbeddedActivityWindowInfoCallbackValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearEmbeddedActivityWindowInfoCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearEmbeddedActivityWindowInfoCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#clearEmbeddedActivityWindowInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodClearSplitInfoCallbackValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearSplitInfoCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearSplitInfoCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#clearSplitInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetActivityStackTokenValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetActivityStackTokenValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetActivityStackTokenValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "getActivityStackToken is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetDefaultSplitAttributesValid()Z
    .locals 1

    const-string p0, "SplitRule#getDefaultSplitAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetDefaultSplitAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetDefaultSplitAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetEmbeddedActivityWindowInfoValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetEmbeddedActivityWindowInfoValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetEmbeddedActivityWindowInfoValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#getEmbeddedActivityWindowInfo is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetFinishPrimaryWithPlaceholderValid()Z
    .locals 1

    const-string p0, "SplitPlaceholderRule#getFinishPrimaryWithPlaceholder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetFinishPrimaryWithPlaceholderValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetFinishPrimaryWithPlaceholderValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetLayoutDirectionValid()Z
    .locals 1

    const-string p0, "SplitRule#getLayoutDirection is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetLayoutDirectionValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetLayoutDirectionValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetParentContainerInfoValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetParentContainerInfoValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetParentContainerInfoValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#getParentContainerInfo is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetSplitAttributesValid()Z
    .locals 1

    const-string p0, "SplitInfo#getSplitAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetSplitInfoTokenValid()Z
    .locals 1

    const-string p0, "SplitInfo#getSplitInfoToken is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitInfoTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitInfoTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetSplitRatioValid()Z
    .locals 1

    const-string p0, "SplitRule#getSplitRatio is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitRatioValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitRatioValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodInvalidateTopVisibleSplitAttributesValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodInvalidateTopVisibleSplitAttributesValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodInvalidateTopVisibleSplitAttributesValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "#invalidateTopVisibleSplitAttributes is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodIsActivityEmbeddedValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsActivityEmbeddedValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsActivityEmbeddedValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#isActivityEmbedded is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodPinUnpinTopActivityStackValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodPinUnpinTopActivityStackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodPinUnpinTopActivityStackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "#pin(unPin)TopActivityStack is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodRegisterActivityStackCallbackValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodRegisterActivityStackCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodRegisterActivityStackCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "registerActivityStackCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetActivityStackAttributesCalculatorValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetActivityStackAttributesCalculatorValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetActivityStackAttributesCalculatorValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string/jumbo p0, "setActivityStackAttributesCalculator is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetEmbeddedActivityWindowInfoCallbackValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddedActivityWindowInfoCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddedActivityWindowInfoCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setEmbeddedActivityWindowInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetEmbeddingRulesValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddingRulesValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddingRulesValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setEmbeddingRules is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetSplitInfoCallbackJavaConsumerValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetSplitInfoCallbackJavaConsumerValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetSplitInfoCallbackJavaConsumerValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setSplitInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetSplitInfoCallbackWindowConsumerValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetSplitInfoCallbackWindowConsumerValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetSplitInfoCallbackWindowConsumerValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setSplitInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSplitAttributesCalculatorValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitAttributesCalculatorValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitAttributesCalculatorValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setSplitAttributesCalculator is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSplitInfoGetTokenValid()Z
    .locals 1

    const-string p0, "SplitInfo#getToken is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitInfoGetTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitInfoGetTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodUnregisterActivityStackCallbackValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUnregisterActivityStackCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUnregisterActivityStackCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string/jumbo p0, "unregisterActivityStackCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodUpdateActivityStackAttributesValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateActivityStackAttributesValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateActivityStackAttributesValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string/jumbo p0, "updateActivityStackAttributes is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodUpdateSplitAttributesValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateSplitAttributesValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateSplitAttributesValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "#updateSplitAttributes is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodUpdateSplitAttributesWithTokenValid()Z
    .locals 1

    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateSplitAttributesWithTokenValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateSplitAttributesWithTokenValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string/jumbo p0, "updateSplitAttributes is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isOverlayFeatureValid()Z
    .locals 1

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isActivityStackGetTagValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetActivityStackTokenValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassParentContainerInfoValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetParentContainerInfoValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetActivityStackAttributesCalculatorValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodClearActivityStackAttributesCalculatorValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodUpdateActivityStackAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityStackAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityStackAttributesBuilderValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityStackAttributesCalculatorParamsValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;
    .locals 2

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->canUseActivityEmbeddingComponent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->windowExtensions:Landroidx/window/extensions/WindowExtensions;

    invoke-interface {p0}, Landroidx/window/extensions/WindowExtensions;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public final hasValidVendorApiLevel1$window_release()Z
    .locals 1

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetEmbeddingRulesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodIsActivityEmbeddedValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetSplitInfoCallbackJavaConsumerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetSplitRatioValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetLayoutDirectionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityRuleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityRuleBuilderLevel1Valid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitInfoValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPairRuleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPairRuleBuilderLevel1Valid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPlaceholderRuleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPlaceholderRuleBuilderLevel1Valid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasValidVendorApiLevel2$window_release()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetSplitInfoCallbackWindowConsumerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodClearSplitInfoCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSplitAttributesCalculatorValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetFinishPrimaryWithPlaceholderValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetDefaultSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityRuleBuilderLevel2Valid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassEmbeddingRuleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitAttributesCalculatorParamsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitTypeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPairRuleBuilderLevel2Valid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPlaceholderRuleBuilderLevel2Valid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasValidVendorApiLevel3$window_release()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodInvalidateTopVisibleSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodUpdateSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSplitInfoGetTokenValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasValidVendorApiLevel5$window_release()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel3$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isActivityStackGetActivityStackTokenValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodRegisterActivityStackCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodUnregisterActivityStackCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodPinUnpinTopActivityStackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodUpdateSplitAttributesWithTokenValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetSplitInfoTokenValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassAnimationBackgroundValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityStackTokenValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassWindowAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitInfoTokenValid()Z

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

    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel5$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetEmbeddedActivityWindowInfoValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetEmbeddedActivityWindowInfoCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodClearEmbeddedActivityWindowInfoCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassEmbeddedActivityWindowInfoValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isActivityEmbeddingComponentAccessible$window_release()Z
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

    invoke-virtual {v0}, Landroidx/window/SafeWindowExtensionsProvider;->isWindowExtensionsValid$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isActivityEmbeddingComponentValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
