.class public interface abstract Lcom/android/systemui/power/data/repository/PowerRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static updateWakefulness$default(Lcom/android/systemui/power/data/repository/PowerRepository;Lcom/android/systemui/power/shared/model/WakefulnessState;Lcom/android/systemui/power/shared/model/WakeSleepReason;Lcom/android/systemui/power/shared/model/WakeSleepReason;ZI)V
    .locals 1

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    iget-object p1, p1, Lcom/android/systemui/power/shared/model/WakefulnessModel;->internalWakefulnessState:Lcom/android/systemui/power/shared/model/WakefulnessState;

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    iget-object p2, p2, Lcom/android/systemui/power/shared/model/WakefulnessModel;->lastWakeReason:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    move-object p3, p0

    check-cast p3, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p3, p3, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    iget-object p3, p3, Lcom/android/systemui/power/shared/model/WakefulnessModel;->lastSleepReason:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, p0

    check-cast p4, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p4, p4, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p4, p4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    iget-boolean p4, p4, Lcom/android/systemui/power/shared/model/WakefulnessModel;->powerButtonLaunchGestureTriggered:Z

    :cond_3
    check-cast p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->_wakefulness:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p5, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/android/systemui/power/shared/model/WakefulnessModel;-><init>(Lcom/android/systemui/power/shared/model/WakefulnessState;Lcom/android/systemui/power/shared/model/WakeSleepReason;Lcom/android/systemui/power/shared/model/WakeSleepReason;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
