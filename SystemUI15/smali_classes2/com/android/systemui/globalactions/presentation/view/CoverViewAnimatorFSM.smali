.class public final Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public mState:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

.field public final mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V

    return-void
.end method


# virtual methods
.method public final handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleAnimationEvent() Event : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mState:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverViewAnimatorFSM"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mState:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissConfirmAnimation()V

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->MAIN:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->MAIN:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startToastAnimation()V

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->MAIN:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startShowConfirmAnimation()V

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startToastAnimation()V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startDismissAnimation(Z)V

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;->startShowAnimation()V

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->MAIN:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final setState(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverViewAnimatorFSM"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->mState:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    return-void
.end method
