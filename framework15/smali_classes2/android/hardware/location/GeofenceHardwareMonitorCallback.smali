.class public abstract Landroid/hardware/location/GeofenceHardwareMonitorCallback;
.super Ljava/lang/Object;
.source "GeofenceHardwareMonitorCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMonitoringSystemChange(IZLandroid/location/Location;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    .locals 0

    return-void
.end method
