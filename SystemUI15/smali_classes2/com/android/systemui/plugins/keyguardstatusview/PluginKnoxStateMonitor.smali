.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginKnoxStateMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# virtual methods
.method public abstract isLockscreenAllDisabled()Z
.end method

.method public abstract isLockscreenBatteryInfoEnabled()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbc4
    .end annotation
.end method

.method public abstract isLockscreenClockEnabled()Z
.end method

.method public abstract isLockscreenDateEnabled()Z
.end method

.method public abstract isLockscreenOwnerInfoEnabled()Z
.end method

.method public abstract isStatusBarHidden()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbd6
    .end annotation
.end method
