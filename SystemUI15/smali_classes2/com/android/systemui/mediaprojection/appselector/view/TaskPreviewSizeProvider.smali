.class public final Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final listeners:Ljava/util/ArrayList;

.field public final size:Landroid/graphics/Rect;

.field public final windowMetricsProvider:Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->windowMetricsProvider:Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProvider;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->calculateSize()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final calculateSize()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->windowMetricsProvider:Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProvider;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProviderImpl;

    iget-object v1, v1, Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProviderImpl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast v0, Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProviderImpl;

    iget-object p0, v0, Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProviderImpl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    sub-int p0, v2, p0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float p0, p0

    int-to-float v1, v2

    div-float/2addr p0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->scale(F)V

    return-object v0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->calculateSize()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;

    invoke-interface {p1}, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;->onTaskSizeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDestroy$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
