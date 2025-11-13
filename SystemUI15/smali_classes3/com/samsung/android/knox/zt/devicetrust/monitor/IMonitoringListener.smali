.class public interface abstract Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract checkUrlReputation(Ljava/lang/String;)I
.end method

.method public abstract onEvent(ILandroid/os/Bundle;)V
.end method

.method public abstract onEventGeneralized(ILjava/lang/String;)V
.end method

.method public abstract onEventSimplified(ILjava/lang/String;)V
.end method

.method public abstract onSignal(Ljava/lang/String;)I
.end method

.method public abstract onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V
.end method
