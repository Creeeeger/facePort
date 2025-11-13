.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public currentSignalStrength:I

.field public currentState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

.field public isTransition:Z

.field public previousState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

.field public targetSignalStrength:I

.field public updateCallback:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;

.field public final updatePeriod:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;->NO_SERVICE:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->previousState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->updatePeriod:J

    return-void
.end method


# virtual methods
.method public final updateSignalOneLevelPerSec(IIZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->updateCallback:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->previousState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    if-eqz p3, :cond_1

    sget-object p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;->IN_SERVICE:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;->NO_SERVICE:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    :goto_0
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->isTransition:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSignalOneLevelPerSec state transition="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " prev="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cur="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", max="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MobileSignalTransitionManager"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->previousState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p3, v5, :cond_5

    if-eq p3, v4, :cond_2

    goto/16 :goto_4

    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->isTransition:Z

    iput v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentSignalStrength:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->updateCallback:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->updateCallback:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object p2, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->bgHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1$postUpdate$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1$postUpdate$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->isTransition:Z

    goto/16 :goto_4

    :cond_5
    iget-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    iget-wide v6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->updatePeriod:J

    const-string/jumbo v1, "updateSignalOneLevelPerSec "

    if-eq p3, v5, :cond_9

    if-eq p3, v4, :cond_6

    goto :goto_2

    :cond_6
    iput v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->targetSignalStrength:I

    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentSignalStrength:I

    const-string p3, " -> 0 no service"

    invoke-static {p1, v1, p3, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentSignalStrength:I

    iget p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->targetSignalStrength:I

    if-eq p1, p3, :cond_8

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;->IN_SERVICE:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentState:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager$TransitionSignalState;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->isTransition:Z

    goto :goto_2

    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->updateCallback:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->bgHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1$postUpdate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1$postUpdate$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    invoke-virtual {p1, p2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_9
    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->targetSignalStrength:I

    iget p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentSignalStrength:I

    const-string v4, " -> "

    const-string v8, " in service"

    invoke-static {p3, p1, v1, v4, v8}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentSignalStrength:I

    iget p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->targetSignalStrength:I

    if-ne p1, p3, :cond_a

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->isTransition:Z

    return-void

    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->isTransition:Z

    if-nez p1, :cond_b

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->isTransition:Z

    :cond_b
    :goto_2
    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentSignalStrength:I

    iget p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->targetSignalStrength:I

    if-ge p1, p3, :cond_c

    if-ge p1, p2, :cond_c

    add-int/2addr p1, v5

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentSignalStrength:I

    goto :goto_3

    :cond_c
    if-le p1, p3, :cond_d

    if-lez p1, :cond_d

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentSignalStrength:I

    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->updateCallback:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->currentSignalStrength:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileSignalTransitionManager;->updateCallback:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->bgHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1$postUpdate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$signalLevelUpdate$1$mSignalUpdateCallback$1$postUpdate$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    invoke-virtual {p1, p2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void
.end method
