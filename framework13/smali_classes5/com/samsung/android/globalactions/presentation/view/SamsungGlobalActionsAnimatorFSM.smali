.class public Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;
.super Ljava/lang/Object;
.source "SamsungGlobalActionsAnimatorFSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;,
        Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;
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
    .param p1, "animator"    # Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;
    .param p2, "logWrapper"    # Lcom/samsung/android/globalactions/util/LogWrapper;
    .param p3, "stateController"    # Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 39
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist handleAnimationEvent(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-eq v0, v1, :cond_1

    .line 49
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mState:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    if-eq v0, v1, :cond_1

    .line 50
    :cond_0
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$1;->$SwitchMap$com$samsung$android$globalactions$presentation$view$SamsungGlobalActionsAnimatorFSM$State:[I

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mState:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 118
    :pswitch_0
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_3

    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->setListViewPort()V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->setListViewLand()V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->initializeSelectedActionView()V

    goto/16 :goto_3

    .line 125
    :cond_3
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->isShowConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->cancelShowConfirmAnimation()V

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissSafeModeAnimation()V

    .line 130
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    .line 131
    :cond_5
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_6

    .line 132
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    .line 133
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    .line 134
    :cond_6
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_14

    .line 135
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    .line 136
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    .line 93
    :pswitch_1
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_8

    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_7

    .line 95
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->setListViewPort()V

    goto :goto_1

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->setListViewLand()V

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->initializeSelectedActionView()V

    goto/16 :goto_3

    .line 100
    :cond_8
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_a

    .line 101
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->isShowConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->cancelShowConfirmAnimation()V

    .line 104
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissConfirmAnimation()V

    .line 105
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    .line 106
    :cond_a
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_b

    .line 107
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startSetSafeModeAnimation()V

    .line 108
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    .line 109
    :cond_b
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_c

    .line 110
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    .line 111
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    .line 112
    :cond_c
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_14

    .line 113
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    .line 114
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto/16 :goto_3

    .line 67
    :pswitch_2
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_e

    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_d

    .line 69
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewPort()V

    goto/16 :goto_3

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewLand()V

    goto :goto_3

    .line 73
    :cond_e
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->isHideConfirmAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 75
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->cancelHideConfirmAnimation()V

    .line 77
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->isSafeModeConfirm()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startShowSafeModeAnimation()V

    .line 79
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    .line 81
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startShowConfirmAnimation()V

    .line 82
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    .line 84
    :cond_11
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_12

    .line 85
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    .line 86
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    .line 87
    :cond_12
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_14

    .line 88
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    .line 89
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    goto :goto_3

    .line 56
    :pswitch_3
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SHOW:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    if-ne p1, v0, :cond_14

    .line 57
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    if-eqz v0, :cond_13

    .line 58
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewPort()V

    goto :goto_2

    .line 60
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->showMainViewLand()V

    .line 62
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startShowAnimation()V

    .line 63
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V

    .line 142
    :cond_14
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setOrientation(Z)V
    .locals 0
    .param p1, "isPortrait"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mIsPortrait:Z

    .line 146
    return-void
.end method

.method public blacklist setState(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    .line 43
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

    .line 44
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->mState:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$State;

    .line 45
    return-void
.end method
