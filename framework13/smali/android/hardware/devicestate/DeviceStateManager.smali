.class public final Landroid/hardware/devicestate/DeviceStateManager;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;,
        Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    }
.end annotation


# static fields
.field public static final blacklist INVALID_DEVICE_STATE:I = -0x1

.field public static final blacklist MAXIMUM_DEVICE_STATE:I = 0xff

.field public static final blacklist MINIMUM_DEVICE_STATE:I


# instance fields
.field private final blacklist mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    move-result-object v0

    .line 59
    .local v0, "global":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    if-eqz v0, :cond_0

    .line 63
    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 64
    return-void

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get instance of global device state manager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist cancelStateRequest()V
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->cancelStateRequest()V

    .line 115
    return-void
.end method

.method public blacklist getSupportedStates()[I
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getSupportedStates()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 127
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p2, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 128
    return-void
.end method

.method public blacklist requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .locals 1
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 99
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 100
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 135
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 136
    return-void
.end method
