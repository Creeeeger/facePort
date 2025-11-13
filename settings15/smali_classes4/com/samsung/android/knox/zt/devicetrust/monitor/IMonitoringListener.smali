.class public interface abstract Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
