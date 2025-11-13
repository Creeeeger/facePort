.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# virtual methods
.method public abstract getClockSidePadding()I
.end method

.method public abstract getClockSidePadding(Z)I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ff
    .end annotation
.end method

.method public abstract getShortCutSidePadding()I
.end method

.method public abstract getShortCutSidePadding(Z)I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3fe
    .end annotation
.end method

.method public abstract getSidePaddingWhenIndisplayFP()I
.end method

.method public abstract getTabletClockSidePadding(IIZ)I
.end method

.method public abstract needToSidePaddingForClock()Z
.end method
