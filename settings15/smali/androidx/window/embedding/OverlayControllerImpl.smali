.class public Landroidx/window/embedding/OverlayControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/window/RequiresWindowSdkExtension;
    version = 0x6
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J&\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016J7\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u001a2\u0008\u0010&\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0001\u00a2\u0006\u0002\u0008-J\u0016\u0010.\u001a\u00020\u001f2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u001a00H\u0003J\u0017\u00101\u001a\u0004\u0018\u00010\u000c2\u0006\u0010 \u001a\u00020\u001aH\u0011\u00a2\u0006\u0002\u00082J\u0016\u00103\u001a\u00020\u001f2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016J\u001d\u00104\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000cH\u0010\u00a2\u0006\u0002\u00086J\u0018\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017*\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0002J\u0014\u00108\u001a\u000209*\u00020\u000c2\u0006\u0010:\u001a\u00020;H\u0002J\u000c\u0010<\u001a\u00020\u0015*\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000RB\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n2\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n8@@@X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R.\u0010\u0012\u001a \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u00160\u00138\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00180\u00138\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000c0\u00138\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000c0\u001d8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Landroidx/window/embedding/OverlayControllerImpl;",
        "",
        "embeddingExtension",
        "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;",
        "adapter",
        "Landroidx/window/embedding/EmbeddingAdapter;",
        "(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;)V",
        "globalLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "value",
        "Lkotlin/Function1;",
        "Landroidx/window/embedding/OverlayAttributesCalculatorParams;",
        "Landroidx/window/embedding/OverlayAttributes;",
        "overlayAttributesCalculator",
        "getOverlayAttributesCalculator$window_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setOverlayAttributesCalculator$window_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "overlayInfoToActivityStackCallbackMap",
        "Landroid/util/ArrayMap;",
        "Landroidx/core/util/Consumer;",
        "Landroidx/window/embedding/OverlayInfo;",
        "Landroidx/window/extensions/core/util/function/Consumer;",
        "",
        "Landroidx/window/extensions/embedding/ActivityStack;",
        "overlayTagToContainerMap",
        "",
        "overlayTagToCurrentAttributesMap",
        "overlayTagToDefaultAttributesMap",
        "",
        "addOverlayInfoCallback",
        "",
        "overlayTag",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "overlayInfoCallback",
        "calculateOverlayAttributes",
        "tag",
        "initialOverlayAttrs",
        "windowMetrics",
        "Landroidx/window/layout/WindowMetrics;",
        "configuration",
        "Landroid/content/res/Configuration;",
        "windowLayoutInfo",
        "Landroidx/window/layout/WindowLayoutInfo;",
        "calculateOverlayAttributes$window_release",
        "cleanUpDismissedOverlayContainerRecords",
        "lastOverlayTags",
        "",
        "getUpdatedOverlayAttributes",
        "getUpdatedOverlayAttributes$window_release",
        "removeOverlayInfoCallback",
        "updateOverlayAttributes",
        "overlayAttributes",
        "updateOverlayAttributes$window_release",
        "getOverlayContainers",
        "toActivityStackAttributes",
        "Landroidx/window/extensions/embedding/ActivityStackAttributes;",
        "parentContainerInfo",
        "Landroidx/window/extensions/embedding/ParentContainerInfo;",
        "toOverlayInfo",
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
.field private final adapter:Landroidx/window/embedding/EmbeddingAdapter;

.field private final embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

.field private final globalLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private overlayAttributesCalculator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final overlayInfoToActivityStackCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/core/util/Consumer;",
            "Landroidx/window/extensions/core/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/ActivityStack;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final overlayTagToContainerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/window/extensions/embedding/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private final overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/window/embedding/OverlayAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final overlayTagToDefaultAttributesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/window/embedding/OverlayAttributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$25U6kU3enU_9mX7tazgcEqX1Sds(Landroidx/window/embedding/OverlayControllerImpl;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->_init_$lambda$6(Landroidx/window/embedding/OverlayControllerImpl;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jBORjL7LuJGeUgoSIhohDOzbHZU(Landroidx/window/embedding/OverlayControllerImpl;Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;)Landroidx/window/extensions/embedding/ActivityStackAttributes;
    .locals 0

    invoke-static {p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->_init_$lambda$3(Landroidx/window/embedding/OverlayControllerImpl;Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;)Landroidx/window/extensions/embedding/ActivityStackAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ntOYpMkbsop3lIkY7Rd2KVvvMsQ(Ljava/lang/String;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/core/util/Consumer;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/window/embedding/OverlayControllerImpl;->addOverlayInfoCallback$lambda$11$lambda$10(Ljava/lang/String;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/core/util/Consumer;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;)V
    .locals 1

    const-string v0, "embeddingExtension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayInfoToActivityStackCallbackMap:Landroid/util/ArrayMap;

    sget-object p2, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p2}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    new-instance p2, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/window/embedding/OverlayControllerImpl;)V

    invoke-interface {p1, p2}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->setActivityStackAttributesCalculator(Landroidx/window/extensions/core/util/function/Function;)V

    new-instance p2, Landroidx/window/embedding/ActivityWindowInfoCallbackController$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/window/embedding/OverlayControllerImpl;)V

    invoke-interface {p1, p2, v0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->registerActivityStackCallback(Ljava/util/concurrent/Executor;Landroidx/window/extensions/core/util/function/Consumer;)V

    return-void
.end method

.method private static final _init_$lambda$3(Landroidx/window/embedding/OverlayControllerImpl;Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;)Landroidx/window/extensions/embedding/ActivityStackAttributes;
    .locals 11

    const-string v0, "parentContainerInfo.windowMetrics"

    const-string/jumbo v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getParentContainerInfo()Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object v2

    const-string v3, "params.parentContainerInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/window/layout/util/DensityCompatHelper;->Companion:Landroidx/window/layout/util/DensityCompatHelper$Companion;

    invoke-virtual {v3}, Landroidx/window/layout/util/DensityCompatHelper$Companion;->getInstance()Landroidx/window/layout/util/DensityCompatHelper;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const-string v5, "parentContainerInfo.configuration"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/res/Configuration;Landroid/view/WindowMetrics;)F

    move-result v3

    sget-object v4, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v3}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->translateWindowMetrics$window_release(Landroid/view/WindowMetrics;F)Landroidx/window/layout/WindowMetrics;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getActivityStackTag()Ljava/lang/String;

    move-result-object v6

    const-string v5, "params.activityStackTag"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->INSTANCE:Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "params.launchOptions"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getOverlayAttributes$window_release(Landroid/os/Bundle;)Landroidx/window/embedding/OverlayAttributes;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getParentContainerInfo()Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    const-string v8, "params.parentContainerInfo.windowMetrics"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v3}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->translateWindowMetrics$window_release(Landroid/view/WindowMetrics;F)Landroidx/window/layout/WindowMetrics;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getParentContainerInfo()Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    const-string p1, "params.parentContainerInfo.configuration"

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowLayoutInfo()Landroidx/window/extensions/layout/WindowLayoutInfo;

    move-result-object v3

    const-string v4, "parentContainerInfo.windowLayoutInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object v10

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroidx/window/embedding/OverlayControllerImpl;->calculateOverlayAttributes$window_release(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;Landroidx/window/layout/WindowMetrics;Landroid/content/res/Configuration;Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/embedding/OverlayAttributes;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroidx/window/embedding/OverlayControllerImpl;->toActivityStackAttributes(Landroidx/window/embedding/OverlayAttributes;Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/extensions/embedding/ActivityStackAttributes;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static final _init_$lambda$6(Landroidx/window/embedding/OverlayControllerImpl;Ljava/util/List;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "overlayTagToContainerMap.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    const-string v3, "activityStacks"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->getOverlayContainers(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/extensions/embedding/ActivityStack;

    new-instance v5, Lkotlin/Pair;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/ActivityStack;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v2, v3}, Lkotlin/collections/MapsKt__MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    invoke-direct {p0, v1}, Landroidx/window/embedding/OverlayControllerImpl;->cleanUpDismissedOverlayContainerRecords(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static final addOverlayInfoCallback$lambda$11$lambda$10(Ljava/lang/String;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/core/util/Consumer;Ljava/util/List;)V
    .locals 3

    const-string v0, "$overlayTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$overlayInfoCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStacks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/ActivityStack;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x1

    if-gt p3, v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p1, Landroidx/window/embedding/OverlayInfo;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3, p3}, Landroidx/window/embedding/OverlayInfo;-><init>(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;Landroidx/window/embedding/ActivityStack;)V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/extensions/embedding/ActivityStack;

    invoke-direct {p1, p0}, Landroidx/window/embedding/OverlayControllerImpl;->toOverlayInfo(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/OverlayInfo;

    move-result-object p1

    :goto_1
    invoke-interface {p2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There must be at most one overlay ActivityStack with "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final cleanUpDismissedOverlayContainerRecords(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "overlayTagToContainerMap.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {v3, v2}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->getActivityStackToken(Ljava/lang/String;)Landroidx/window/extensions/embedding/ActivityStack$Token;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final getOverlayContainers(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/window/extensions/embedding/ActivityStack;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/ActivityStack;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/ActivityStack;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final toActivityStackAttributes(Landroidx/window/embedding/OverlayAttributes;Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/extensions/embedding/ActivityStackAttributes;
    .locals 3

    new-instance v0, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;

    invoke-direct {v0}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;-><init>()V

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds;->Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;

    invoke-virtual {p1}, Landroidx/window/embedding/OverlayAttributes;->getBounds()Landroidx/window/embedding/EmbeddingBounds;

    move-result-object p1

    iget-object v2, p0, Landroidx/window/embedding/OverlayControllerImpl;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {v2, p2}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/embedding/ParentContainerInfo;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->translateEmbeddingBounds$window_release(Landroidx/window/embedding/EmbeddingBounds;Landroidx/window/embedding/ParentContainerInfo;)Landroidx/window/core/Bounds;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;->setRelativeBounds(Landroid/graphics/Rect;)Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingAdapter;->translateWindowAttributes$window_release()Landroidx/window/extensions/embedding/WindowAttributes;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;->setWindowAttributes(Landroidx/window/extensions/embedding/WindowAttributes;)Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;->build()Landroidx/window/extensions/embedding/ActivityStackAttributes;

    move-result-object p0

    const-string p1, "Builder()\n            .s\u2026s())\n            .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final toOverlayInfo(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/OverlayInfo;
    .locals 4

    new-instance v0, Landroidx/window/embedding/OverlayInfo;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/embedding/OverlayAttributes;

    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/window/embedding/OverlayInfo;-><init>(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;Landroidx/window/embedding/ActivityStack;)V

    return-object v0
.end method


# virtual methods
.method public addOverlayInfoCallback(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "overlayTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayInfoCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v1, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0, p3}, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/core/util/Consumer;)V

    iget-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayInfoToActivityStackCallbackMap:Landroid/util/ArrayMap;

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {p0, p2, v1}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->registerActivityStackCallback(Ljava/util/concurrent/Executor;Landroidx/window/extensions/core/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final calculateOverlayAttributes$window_release(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;Landroidx/window/layout/WindowMetrics;Landroid/content/res/Configuration;Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/embedding/OverlayAttributes;
    .locals 8

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowMetrics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowLayoutInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->getUpdatedOverlayAttributes$window_release(Ljava/lang/String;)Landroidx/window/embedding/OverlayAttributes;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t retrieve overlay attributes from launch options"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object p2, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/window/embedding/OverlayControllerImpl;->getOverlayAttributesCalculator$window_release()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v7, Landroidx/window/embedding/OverlayAttributesCalculatorParams;

    move-object v0, v7

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/window/embedding/OverlayAttributesCalculatorParams;-><init>(Landroidx/window/layout/WindowMetrics;Landroid/content/res/Configuration;Landroidx/window/layout/WindowLayoutInfo;Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;)V

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/window/embedding/OverlayAttributes;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p3

    :cond_3
    :goto_1
    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final getOverlayAttributesCalculator$window_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayAttributesCalculator:Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public getUpdatedOverlayAttributes$window_release(Ljava/lang/String;)Landroidx/window/embedding/OverlayAttributes;
    .locals 1

    const-string v0, "overlayTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/embedding/OverlayAttributes;

    return-object p0
.end method

.method public removeOverlayInfoCallback(Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "overlayInfoCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayInfoToActivityStackCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/window/extensions/core/util/function/Consumer;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {p0, p1}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->unregisterActivityStackCallback(Landroidx/window/extensions/core/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final setOverlayAttributesCalculator$window_release(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayAttributesCalculator:Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public updateOverlayAttributes$window_release(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;)V
    .locals 4

    const-string v0, "overlayTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayAttributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/ActivityStack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/ActivityStack;->getActivityStackToken()Landroidx/window/extensions/embedding/ActivityStack$Token;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {v1, p1}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->getActivityStackToken(Ljava/lang/String;)Landroidx/window/extensions/embedding/ActivityStack$Token;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {v2, v1}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->getParentContainerInfo(Landroidx/window/extensions/embedding/ActivityStack$Token;)Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2, v3}, Landroidx/window/embedding/OverlayControllerImpl;->toActivityStackAttributes(Landroidx/window/embedding/OverlayAttributes;Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/extensions/embedding/ActivityStackAttributes;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->updateActivityStackAttributes(Landroidx/window/extensions/embedding/ActivityStack$Token;Landroidx/window/extensions/embedding/ActivityStackAttributes;)V

    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
