.class public final Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$3;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;

    iget-object p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$3;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    iget-object p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->displaySwitchLatencyLogger:Lcom/android/systemui/unfold/DisplaySwitchLatencyLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromVisibleAppsUid:Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    iget-object p2, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toVisibleAppsUid:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p2

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    iget v1, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->latencyMs:I

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget v1, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFoldableDeviceState:I

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget v1, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromState:I

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget v1, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFocusedAppUid:I

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    iget v2, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromPipAppUid:I

    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeIntArray([I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromDensityDpi:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toState:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFoldableDeviceState:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFocusedAppUid:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toPipAppUid:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeIntArray([I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toDensityDpi:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->notificationCount:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->externalDisplayCount:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->throttlingLevel:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->vskinTemperatureC:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToFirstHingeAngleChangeMs:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToDeviceStateChangeMs:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onScreenTurningOnToOnDrawnMs:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    iget p0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onDrawnToOnScreenTurnedOnMs:I

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
