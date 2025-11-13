.class public final Lcom/android/keyguard/DualDarInnerLockScreenController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBaseView:Lcom/android/keyguard/KeyguardInputView;

.field public mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

.field public final mCallback:Lcom/android/keyguard/DualDarInnerLockScreenController$4;

.field public final mContext:Landroid/content/Context;

.field public final mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

.field public final mHandler:Landroid/os/Handler;

.field public mIsImeShown:Z

.field public mIsPassword:Z

.field public final mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNavigationBarHeight:I

.field public final mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

.field public final mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static -$$Nest$mdismissInnerLockScreen(Lcom/android/keyguard/DualDarInnerLockScreenController;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getMainUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->hide()V

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/DualDarKeyguardSecurityCallback;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    new-instance v0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$1;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$4;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mCallback:Lcom/android/keyguard/DualDarInnerLockScreenController$4;

    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object p3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iput-object p4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object p6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p8, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p9, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    iput-object p10, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    new-instance v1, Lcom/android/keyguard/DualDarInnerLockScreenController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$3;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;->onSecurityModeChanged(Z)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchDualDarInnerLockScreenState(IZ)V

    :cond_1
    return-void
.end method

.method public final updateLayoutMargins(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz v1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    const v2, 0x10502c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07053f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v1

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    if-eq v0, v5, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    :goto_1
    move v8, v4

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    move-object v9, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutParams(IIILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V

    goto/16 :goto_7

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_7

    move v6, v4

    move v7, v6

    move v8, v7

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v1

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v3

    if-eq v0, v5, :cond_c

    if-eq v0, v2, :cond_a

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v0

    xor-int/2addr v0, v5

    and-int/2addr v0, v3

    iget-boolean v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    if-eqz v2, :cond_8

    move v1, v4

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    iget v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    :goto_3
    move v8, v1

    move v6, v4

    move v7, v6

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    iget v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    :goto_4
    iget v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    move v7, v0

    move v6, v1

    :goto_5
    move v8, v4

    goto :goto_6

    :cond_c
    iget v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    move v6, v0

    move v7, v6

    goto :goto_5

    :goto_6
    move-object v5, p0

    move-object v9, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutParams(IIILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public final updateLayoutParams(IIILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V
    .locals 4

    if-nez p5, :cond_0

    const-string p0, "DualDarInnerLockScreenController"

    const-string/jumbo p1, "updateLayoutParams securityViewFlipper is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const p0, 0x7f070597

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    goto :goto_3

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_6

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSmartViewDisplayWithFitToAspectRatio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    const/4 v2, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-boolean p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    invoke-static {p4, p0}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    move-result p0

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eqz v0, :cond_4

    move p0, v3

    goto :goto_2

    :cond_4
    move p0, v2

    :goto_2
    iput p0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    :cond_6
    :goto_3
    invoke-virtual {v1, p1, v3, p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
