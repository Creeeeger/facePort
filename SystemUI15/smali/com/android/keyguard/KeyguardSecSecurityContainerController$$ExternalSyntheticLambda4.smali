.class public final synthetic Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mCallback:Lcom/android/keyguard/DualDarInnerLockScreenController$4;

    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    iget-object v5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_0

    const-string v1, "DualDarInnerLockScreenController"

    const-string v2, "Something went wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d015e

    invoke-virtual {v1, v10, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d015d

    invoke-virtual {v1, v10, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5, v1, v10, v2}, Lcom/android/keyguard/KeyguardInputViewController$Factory;->create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    check-cast v4, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;

    invoke-virtual {v4, v8}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;->onSecurityModeChanged(Z)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d0160

    invoke-virtual {v1, v10, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d015f

    invoke-virtual {v1, v10, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    :goto_1
    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5, v1, v10, v2}, Lcom/android/keyguard/KeyguardInputViewController$Factory;->create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    check-cast v4, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;->onSecurityModeChanged(Z)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/android/keyguard/DualDarInnerLockScreenController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$2;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    new-instance v2, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v7, v9, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v4, v9, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v4, v9, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v6, v9, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->reset$1()V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardInputViewController;->onResume(I)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->startAppearAnimation()V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutMargins(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, v0, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchDualDarInnerLockScreenState(IZ)V

    :cond_5
    return-void
.end method
