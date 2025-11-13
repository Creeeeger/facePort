.class public abstract Landroid/hardware/devicestate/DeviceStateManagerInternal;
.super Ljava/lang/Object;
.source "DeviceStateManagerInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist displayEnabled()V
.end method

.method public abstract blacklist getSupportedStateIdentifiers()[I
.end method

.method public abstract blacklist requestTentModeIfNeeded()V
.end method

.method public abstract blacklist setTableModeEnabled(Z)V
.end method

.method public abstract blacklist updateFoldingSensorState(Z)V
.end method
