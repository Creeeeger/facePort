.class public interface abstract Lcom/android/systemui/controls/ControlsMetricsLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public drag(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_DRAG:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    check-cast p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;

    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    return-void
.end method

.method public refreshBegin(IZ)V
    .locals 2

    check-cast p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;

    iget-object v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceId:I

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_BEGIN:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    return-void
.end method

.method public refreshEnd(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_END:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    check-cast p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;

    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    return-void
.end method

.method public touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_TOUCH:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    check-cast p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;

    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    return-void
.end method
