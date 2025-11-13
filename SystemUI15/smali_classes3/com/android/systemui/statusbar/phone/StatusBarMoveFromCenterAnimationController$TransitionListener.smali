.class public final Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->moveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->isOnHomeActivity:Ljava/lang/Boolean;

    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->moveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    return-void
.end method

.method public final onTransitionStarted()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->currentActivityTypeProvider:Lcom/android/systemui/unfold/util/CurrentActivityTypeProvider;

    check-cast v0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    iget-object v0, v0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->_isHomeActivity:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->isOnHomeActivity:Ljava/lang/Boolean;

    return-void
.end method
