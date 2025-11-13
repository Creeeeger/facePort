.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;
.super Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final context:Landroid/content/Context;

.field public final deviceEntryIconViewId:I

.field public final deviceEntryIconViewModel:Ldagger/Lazy;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final notificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/biometrics/AuthController;Landroid/view/WindowManager;Landroid/content/Context;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Landroid/view/WindowManager;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->authController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->windowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->notificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p8, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->deviceEntryIconViewModel:Ldagger/Lazy;

    const p1, 0x7f0a0371

    iput p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->deviceEntryIconViewId:I

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 9

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->deviceEntryIconViewModel:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isUdfpsSupported="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultDeviceEntrySection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget v3, v2, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070750

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sget-object v7, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    const/16 v8, 0x24

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->udfpsLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/SensorLocation;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/systemui/biometrics/shared/model/SensorLocation;->naturalCenterX:I

    int-to-float v3, v1

    iget v4, v0, Lcom/android/systemui/biometrics/shared/model/SensorLocation;->scale:F

    mul-float/2addr v3, v4

    iget v5, v0, Lcom/android/systemui/biometrics/shared/model/SensorLocation;->naturalCenterY:I

    int-to-float v6, v5

    mul-float/2addr v6, v4

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "udfpsLocation="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", scaledLocation=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "), unusedAuthController="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceEntrySection"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Point;

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    iget v0, v0, Lcom/android/systemui/biometrics/shared/model/SensorLocation;->naturalRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->centerIcon$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/graphics/Point;FLandroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v6, v1

    float-to-int v1, v6

    add-int/2addr v4, v7

    int-to-float v2, v4

    mul-float/2addr v2, v3

    sub-float/2addr v5, v2

    float-to-int v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    int-to-float v1, v7

    mul-float/2addr v1, v3

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->centerIcon$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/graphics/Point;FLandroidx/constraintlayout/widget/ConstraintSet;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public final centerIcon$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/graphics/Point;FLandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p1, Landroid/graphics/Point;->x:I

    float-to-int p2, p2

    sub-int v2, v1, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int v3, p1, p2

    add-int/2addr v1, p2

    add-int/2addr p1, p2

    invoke-virtual {v0, v2, v3, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->deviceEntryIconViewId:I

    invoke-virtual {p3, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    invoke-virtual {p3, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget v6, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget v6, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x6

    const/4 v5, 0x6

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->deviceEntryIconViewModel:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->notificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    const p2, 0x7f0a0577

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const v1, 0x7f0a00d8

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget p3, v1, p3

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eqz p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p2, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;->deviceEntryIconViewId:I

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/ui/view/layout/sections/ExtensionsKt;->removeView(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    return-void
.end method
