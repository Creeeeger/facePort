.class public final Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;
.super Lcom/android/systemui/statusbar/events/PrivacyDotViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;-><init>(Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->initialize(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-super {p0, p1, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateRotations(II)V

    return-void
.end method

.method public final innerGravity(I)I
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/16 p0, 0x35

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a corner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x33

    goto :goto_0

    :cond_2
    const/16 p0, 0x53

    goto :goto_0

    :cond_3
    const/16 p0, 0x55

    :goto_0
    return p0
.end method

.method public final needsLayout(Lcom/android/systemui/statusbar/events/ViewState;Lcom/android/systemui/statusbar/events/ViewState;)Z
    .locals 1

    iget p0, p2, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    iget v0, p1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    if-ne v0, p0, :cond_1

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    iget-boolean p1, p2, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setCameraListener(Lcom/android/systemui/CameraAvailabilityListener;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1;-><init>(Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;)V

    iget-object p0, p1, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/systemui/CameraAvailabilityListener;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p1, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStateCallback:Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

    iget-object p1, p1, Lcom/android/systemui/CameraAvailabilityListener;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final setCornerSizes(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 3

    iget-object p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-eqz p0, :cond_9

    const v0, 0x7f0702b3

    const v1, 0x7f0702b2

    iget p1, p1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_9
    return-void
.end method

.method public final shouldShowDot(Lcom/android/systemui/statusbar/events/ViewState;)Z
    .locals 0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->isDotBlocked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateRotations(II)V
    .locals 0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateRotations(II)V

    return-void
.end method
