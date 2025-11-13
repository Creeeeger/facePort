.class public Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;
.super Ljava/lang/Object;
.source "SamsungGlobalActionsAnimatorFSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;,
        Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SamsungGlobalActionsAnimatorFSM"


# instance fields
.field private final blacklist mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

.field private blacklist mIsPortrait:Z

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public blacklist mState:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

.field private blacklist mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    return-void
.end method


# virtual methods
.method public blacklist handleAnimationEvent(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mState:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mState:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->setListViewPort()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->setListViewLand()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->initializeSelectedActionView()V

    goto/16 :goto_3

    :cond_3
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->isShowConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->cancelShowConfirmAnimation()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissSafeModeAnimation()V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :cond_5
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :cond_6
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :pswitch_1
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->setListViewPort()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->setListViewLand()V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->initializeSelectedActionView()V

    goto/16 :goto_3

    :cond_8
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->isShowConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->cancelShowConfirmAnimation()V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissConfirmAnimation()V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :cond_a
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startSetSafeModeAnimation()V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :cond_b
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :cond_c
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    :pswitch_2
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_e

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewPort()V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewLand()V

    goto :goto_3

    :cond_e
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->isHideConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->cancelHideConfirmAnimation()V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->isSafeModeConfirm()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startShowSafeModeAnimation()V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startShowConfirmAnimation()V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    :cond_11
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    :cond_12
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SHOW:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_14

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewPort()V

    goto :goto_2

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewLand()V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startShowAnimation()V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    :cond_14
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    return-void
.end method

.method public blacklist setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungGlobalActionsAnimatorFSM"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mState:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    return-void
.end method
