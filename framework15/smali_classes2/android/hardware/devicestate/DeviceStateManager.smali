.class public final Landroid/hardware/devicestate/DeviceStateManager;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;,
        Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SHOW_REAR_DISPLAY_OVERLAY:Ljava/lang/String; = "com.android.intent.action.SHOW_REAR_DISPLAY_OVERLAY"

.field public static final blacklist EXTRA_ORIGINAL_DEVICE_BASE_STATE:Ljava/lang/String; = "original_device_base_state"

.field public static final blacklist INVALID_DEVICE_STATE_IDENTIFIER:I = -0x1

.field public static final blacklist MAXIMUM_DEVICE_STATE_IDENTIFIER:I = 0x2710

.field public static final blacklist MINIMUM_DEVICE_STATE_IDENTIFIER:I


# instance fields
.field private final blacklist mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get instance of global device state manager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist cancelBaseStateOverride()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->cancelBaseStateOverride()V

    return-void
.end method

.method public blacklist cancelStateRequest()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->cancelStateRequest()V

    return-void
.end method

.method public whitelist getSupportedDeviceStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getSupportedDeviceStates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p2, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist requestBaseStateOverride(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->requestBaseStateOverride(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    return-void
.end method

.method public blacklist requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    return-void
.end method

.method public whitelist unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method
