.class public interface abstract Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;
.super Ljava/lang/Object;
.source "ConnectionInfoRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InfoUpdatedCallback"
.end annotation


# virtual methods
.method public abstract allConnectionInfoUpdated()V
.end method

.method public abstract scanResultInfoUpdated()V
.end method

.method public abstract tcpMonitorInfoUpdated()V
.end method

.method public abstract wifiInfoUpdated()V
.end method
