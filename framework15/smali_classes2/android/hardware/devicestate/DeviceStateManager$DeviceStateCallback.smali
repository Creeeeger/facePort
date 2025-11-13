.class public interface abstract Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceStateCallback"
.end annotation


# virtual methods
.method public abstract whitelist onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
.end method

.method public whitelist onSupportedStatesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
