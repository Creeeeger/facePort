.class public final Lcom/android/systemui/shade/NotificationPanelView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAlphaPaint:Landroid/graphics/Paint;

.field public mCurrentPanelAlpha:I

.field public mDozing:Z

.field public mOnConfigurationChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

.field public mRtlChangeListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

.field public mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    sget p2, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mOnConfigurationChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->loadDimens()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens$5()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "KeyguardEditModeController"

    const-string v3, "onConfigurationChanged "

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->initPreviewValues(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->onPanelConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_2
    sget-boolean p1, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRes()V

    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_CONTINUITY_LOCKSCREEN_VI:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContinuityLockScreenContainerController:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->updateLayout$2()V

    :cond_4
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mCurrentPanelAlpha:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    sget-object v0, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NPV"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/shade/TouchLogger$Companion;->logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mDozing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mRtlChangeListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOldLayoutDirection:I

    :cond_0
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    sget p0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    const/4 p0, 0x1

    return p0
.end method
