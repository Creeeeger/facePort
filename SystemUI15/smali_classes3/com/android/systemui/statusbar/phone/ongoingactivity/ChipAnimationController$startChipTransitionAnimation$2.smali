.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;
.super Landroid/transition/TransitionListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $show:Z

.field public final synthetic $transitionSet:Landroid/transition/TransitionSet;

.field public final synthetic $transitionView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Landroid/transition/TransitionSet;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$show:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$transitionView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$transitionSet:Landroid/transition/TransitionSet;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    const-string/jumbo p1, "{ChipAnimationController}"

    const-string v0, "onTransitionCancel()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$transitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {p1, p0}, Landroid/transition/TransitionSet;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->hideTransitionView:Landroid/view/View;

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 7

    const-string p1, "onTransitionEnd()"

    const-string/jumbo v0, "{ChipAnimationController}"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$transitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {p1, p0}, Landroid/transition/TransitionSet;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$show:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$transitionView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->clockView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->nudgeAnimation(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$transitionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    const-string v4, "Transition View() left:"

    const-string v5, " right:"

    const-string v6, " top:"

    invoke-static {v1, v2, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom:"

    invoke-static {v1, v3, v2, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->hideTransitionView:Landroid/view/View;

    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    const-string/jumbo p1, "{ChipAnimationController}"

    const-string v0, "onTransitionStart()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$show:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;->$transitionView:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nudgeClockIfNeeded() view:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "nudgeClockIfNeeded() skip!"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "nudgeClockIfNeeded() skip! call chip is visible"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->clockView:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->nudgeAnimation(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
