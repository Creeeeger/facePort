.class final Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceStateRequestWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequest:Landroid/hardware/devicestate/DeviceStateRequest;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRequest(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)Landroid/hardware/devicestate/DeviceStateRequest;
    .locals 0

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateRequest;Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;
    .param p2, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 380
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 381
    iput-object p3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 382
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$notifyRequestActive$0$android-hardware-devicestate-DeviceStateManagerGlobal$DeviceStateRequestWrapper()V
    .locals 2

    .line 389
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Callback;->onRequestActivated(Landroid/hardware/devicestate/DeviceStateRequest;)V

    return-void
.end method

.method synthetic blacklist lambda$notifyRequestCanceled$1$android-hardware-devicestate-DeviceStateManagerGlobal$DeviceStateRequestWrapper()V
    .locals 2

    .line 397
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Callback;->onRequestCanceled(Landroid/hardware/devicestate/DeviceStateRequest;)V

    return-void
.end method

.method blacklist notifyRequestActive()V
    .locals 2

    .line 385
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    if-nez v0, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method blacklist notifyRequestCanceled()V
    .locals 2

    .line 393
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    if-nez v0, :cond_0

    .line 394
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method
