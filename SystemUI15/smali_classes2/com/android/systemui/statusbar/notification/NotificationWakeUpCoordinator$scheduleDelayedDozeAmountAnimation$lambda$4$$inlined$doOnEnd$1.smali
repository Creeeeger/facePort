.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroidx/core/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountAnimator:Landroidx/core/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;->onDelayedDozeAmountAnimationRunning()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroidx/core/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroidx/core/animation/Animator;)V
    .locals 0

    return-void
.end method
