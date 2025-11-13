.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;


# instance fields
.field public final animRect:Landroid/graphics/Rect;

.field public animationDirection:I

.field public final animationWindowView:Landroid/widget/FrameLayout;

.field public chipBounds:Landroid/graphics/Rect;

.field public final chipMinWidth:I

.field public final contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public final context:Landroid/content/Context;

.field public currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

.field public dotMarginStart:I

.field public dotSize:I

.field public final indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public isChipAnimationStarted:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final themedContext:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    iput-object p6, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iput-object p7, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p8, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p9, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070c51

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipMinWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070c58

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d0b

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotMarginStart:I

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    new-instance p3, Landroid/view/ContextThemeWrapper;

    const p4, 0x7f140614

    invoke-direct {p3, p1, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->themedContext:Landroid/view/ContextThemeWrapper;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d052c

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->themedContext:Landroid/view/ContextThemeWrapper;

    if-nez p1, :cond_0

    move-object p1, p4

    :cond_0
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07148f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p5, -0x1

    invoke-direct {p3, p5, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p1, 0x800035

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    move-object p1, p4

    :cond_1
    iget-object p2, p2, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_2

    move-object p1, p4

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_3

    move-object p1, p4

    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;)V

    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->addCallback(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move-object p4, p1

    :goto_0
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;)V

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p10, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static final access$updateAnimatedViewBoundsHeight(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v2

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->updateCurrentAnimatedView()V

    return-void
.end method

.method public static final access$updateAnimatedViewBoundsWidth(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int p1, v1, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->updateCurrentAnimatedView()V

    return-void
.end method

.method public static synthetic getChipBounds$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInitialized$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getBatteryBounds()Landroid/graphics/Rect;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryMeterView()Landroid/view/View;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils;->Companion:Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;->getBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-direct {v1, v3, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public final getBatteryMeterView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a0163

    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    xor-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    xor-int/2addr p1, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logHideChipByKeyguard(Z)V

    :cond_3
    return-void
.end method

.method public final onSystemEventAnimationBegin(ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 10

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {p2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->isClosed()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->headsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isPopStyleDetail()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible$1()Z

    move-result v0

    if-eqz v0, :cond_0

    move p2, v2

    :cond_0
    if-eqz p2, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->isChipAnimationStarted:Z

    new-instance p2, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgress:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgress:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :cond_2
    check-cast v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    new-instance v9, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {v9}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v7

    const/4 v4, 0x1

    move-object v3, v1

    move-object v5, v0

    move v6, p0

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getCombinedBackgroundAndChargingTextAnimator(ZLandroid/graphics/Rect;FZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object p1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v3

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getBatteryBackgroundAnimator(FLandroid/graphics/Rect;ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v4

    invoke-virtual {v1, p0, v0, v2, v4}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getBatteryLevelTextAnimator(FLandroid/graphics/Rect;ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v5

    invoke-virtual {v1, p0, v0, v2, v5}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getChargingIconAnimator(FLandroid/graphics/Rect;ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object p0

    filled-new-array {p1, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v9, p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    return-object p2

    :cond_3
    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    return-object p0

    :cond_4
    const/4 p1, 0x0

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p2

    sget-object v2, Lcom/android/systemui/util/animation/AnimationUtil;->Companion:Lcom/android/systemui/util/animation/AnimationUtil$Companion;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p2, v1}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v4, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$alphaIn$1$1;

    invoke-direct {v4, p0, p2}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$alphaIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p2, v4}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getContentView()Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_5
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v4, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$contentAlphaIn$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$contentAlphaIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipMinWidth:I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const/16 v1, 0x17

    invoke-virtual {v2, v1}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_BAR_X_MOVE_IN:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onSystemEventAnimationFinish(ZZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->isClosed()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->headsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isPopStyleDetail()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible$1()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    :cond_0
    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->isChipAnimationStarted:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v3, v1, :cond_2

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    return-object p0

    :cond_2
    if-nez v3, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->isChipAnimationStarted:Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    new-instance p1, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    iget-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz p3, :cond_4

    check-cast p3, Landroid/view/View;

    goto :goto_1

    :cond_4
    move-object p3, v1

    :goto_1
    check-cast p3, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v3

    iget v9, v3, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    new-instance v10, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {v10}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v7

    const/4 v4, 0x0

    move-object v3, p3

    move-object v5, v0

    move v6, v9

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getCombinedBackgroundAndChargingTextAnimator(ZLandroid/graphics/Rect;FZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object p2

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v3

    invoke-virtual {p3, v9, v0, v2, v3}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getBatteryBackgroundAnimator(FLandroid/graphics/Rect;ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v4

    invoke-virtual {p3, v9, v0, v2, v4}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getBatteryLevelTextAnimator(FLandroid/graphics/Rect;ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v4

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v5

    invoke-virtual {p3, v9, v0, v2, v5}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getChargingIconAnimator(FLandroid/graphics/Rect;ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object p3

    filled-new-array {p2, v3, v4, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v10, p2}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz p2, :cond_5

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    :cond_5
    check-cast v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object p2, v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgress:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p2, v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgress:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_3

    :cond_6
    iget p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipMinWidth:I

    const/4 p3, 0x6

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object v3

    sget-object p1, Lcom/android/systemui/util/animation/AnimationUtil;->Companion:Lcom/android/systemui/util/animation/AnimationUtil$Companion;

    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object v5, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_WIDTH_TO_DOT_KEYFRAME_1:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v5, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$width1$1$1;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$width1$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v3, v5}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    iget v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotSize:I

    filled-new-array {p2, v5}, [I

    move-result-object p2

    invoke-static {p2}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p1, v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const/16 v4, 0x14

    invoke-virtual {p1, v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_WIDTH_TO_DOT_KEYFRAME_2:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {p2, v4}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v4, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$width2$1$1;

    invoke-direct {v4, p0, p2}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$width2$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p2, v4}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    iget v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotSize:I

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v5, v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    filled-new-array {v0, v4}, [I

    move-result-object v0

    invoke-static {v0}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object v0

    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object p3, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_HEIGHT_TO_DOT_KEYFRAME_1:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v0, p3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance p3, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;

    invoke-direct {p3, p0, v0, v5}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    invoke-virtual {v0, p3}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    iget p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotSize:I

    filled-new-array {v4, p3}, [I

    move-result-object p3

    invoke-static {p3}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object v6

    const/16 p3, 0xe

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const/16 p3, 0xf

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object p3, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_HEIGHT_TO_DOT_KEYFRAME_2:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v6, p3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance p3, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height2$1$1;

    invoke-direct {p3, p0, v6, v5}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height2$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    invoke-virtual {v6, p3}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    iget p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotSize:I

    filled-new-array {v2, p3}, [I

    move-result-object p3

    invoke-static {p3}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object v7

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_MOVE_TO_DOT:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v7, v4}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v5, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$moveOut$1$1;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$moveOut$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v7, v5}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarPaddingTop()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v8

    int-to-float v8, v9

    div-float/2addr v8, v5

    sub-float/2addr v1, v8

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const/16 p3, 0x1a

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {v8, v4}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$moveOutY$1$1;

    invoke-direct {p1, p0, v8}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$moveOutY$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v8, p1}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    move-object v4, p2

    move-object v5, v0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/util/animation/AnimationUtil;->Companion:Lcom/android/systemui/util/animation/AnimationUtil$Companion;

    invoke-virtual {v2, p3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2, p3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance p3, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationDefault$alphaOut$1$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationDefault$alphaOut$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p1, p3}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-array p3, v0, [F

    fill-array-data p3, :array_1

    invoke-static {p3}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p3

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p3, v1}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationDefault$contentAlphaOut$1$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationDefault$contentAlphaOut$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p3, v0}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    filled-new-array {v0, p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object p2

    const/16 v0, 0x17

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_BAR_X_MOVE_OUT:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationDefault$moveOut$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationDefault$moveOut$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p2, v0}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    move-object p1, v0

    :goto_3
    new-instance p2, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationFinish$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationFinish$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->addListener(Landroidx/core/animation/AnimatorListenerAdapter;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final prepareChipAnimation(Lkotlin/jvm/functions/Function1;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForCurrentRotation()Landroid/graphics/Insets;

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070d0b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotMarginStart:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c58

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotSize:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Try to remove existing animationView="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SystemEventChipAnimationController"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v6, :cond_2

    move-object v6, v1

    :cond_2
    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->themedContext:Landroid/view/ContextThemeWrapper;

    if-nez v5, :cond_4

    move-object v5, v1

    :cond_4
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v5, :cond_5

    move-object v5, v1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, p1

    check-cast v6, Landroid/view/View;

    const/4 v7, -0x2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p2, :cond_6

    move-object p2, v1

    :cond_6
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sget-object v8, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils;->Companion:Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;

    iget-object v9, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v9, :cond_7

    move-object v9, v1

    :cond_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;->getBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    :goto_1
    sub-int/2addr p2, v8

    goto :goto_2

    :cond_8
    sget-object p2, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils;->Companion:Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v8, :cond_9

    move-object v8, v1

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;->getBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :goto_2
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v7, 0x800035

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_5

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p2, :cond_b

    move-object p2, v1

    :cond_b
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p2

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    if-eqz p2, :cond_c

    iget-object p2, v8, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftPadding()I

    move-result p2

    iget v8, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotMarginStart:I

    :goto_3
    sub-int/2addr p2, v8

    goto :goto_4

    :cond_c
    iget-object p2, v8, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightPadding()I

    move-result p2

    iget v8, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotMarginStart:I

    goto :goto_3

    :goto_4
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v7, 0x800015

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    :goto_5
    invoke-virtual {v5, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    invoke-virtual {v6, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v5, :cond_d

    move-object v5, v1

    :cond_d
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    const/high16 v7, -0x80000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v8, :cond_e

    goto :goto_6

    :cond_e
    move-object v1, v8

    :goto_6
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v6, v5, v1}, Landroid/view/View;->measure(II)V

    instance-of v1, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v7, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils;->Companion:Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryMeterView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;->getBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v7

    div-int/2addr v8, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/2addr v7, v2

    sub-int/2addr v8, v7

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_f
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->updateChipBounds(Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    if-ne v0, v2, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    :goto_7
    invoke-virtual {v6, p2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {v6, p2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result v0

    xor-int/2addr v0, v3

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_8

    :cond_11
    const/16 v0, 0x8

    :goto_8
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    if-eqz p2, :cond_12

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logHideChipByKeyguard(Z)V

    :cond_12
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0, p0, v3}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipCreateRemove(IZ)V

    return-void
.end method

.method public final updateChipBounds(Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;Landroid/graphics/Rect;)V
    .locals 6

    instance-of v0, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object p2, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils;->Companion:Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryMeterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;->getBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    if-ne v3, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v1, p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v1

    move v5, v1

    move v1, p1

    move p1, v5

    :goto_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, v0, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    goto :goto_5

    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    iget v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    if-ne v3, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, v4, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotMarginStart:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v1, p1

    goto :goto_4

    :cond_5
    iget-object v1, v4, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftPadding()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotMarginStart:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v1

    move v5, v1

    move v1, p1

    move p1, v5

    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateCurrentAnimatedView()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->setBoundsForAnimation(IIII)V

    :cond_0
    return-void
.end method
