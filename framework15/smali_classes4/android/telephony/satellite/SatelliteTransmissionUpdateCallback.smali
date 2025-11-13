.class public interface abstract Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
.super Ljava/lang/Object;
.source "SatelliteTransmissionUpdateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onReceiveDatagramStateChanged(III)V
.end method

.method public abstract whitelist onSatellitePositionChanged(Landroid/telephony/satellite/PointingInfo;)V
.end method

.method public blacklist onSendDatagramRequested(I)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onSendDatagramStateChanged(III)V
.end method

.method public abstract blacklist onSendDatagramStateChanged(IIII)V
.end method
