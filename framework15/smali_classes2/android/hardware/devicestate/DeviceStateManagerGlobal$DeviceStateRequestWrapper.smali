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
.method public static synthetic blacklist $r8$lambda$AvuoSy4ZoxMw0x2eoajUl9CARE0(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->lambda$notifyRequestCanceled$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U72DUahuGtn2AaWKs-CAIdEF3uI(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->lambda$notifyRequestActive$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequest(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)Landroid/hardware/devicestate/DeviceStateRequest;
    .locals 0

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateRequest;Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->validateRequestWrapperParameters(Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    iput-object p3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$notifyRequestActive$0()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Callback;->onRequestActivated(Landroid/hardware/devicestate/DeviceStateRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyRequestCanceled$1()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Callback;->onRequestCanceled(Landroid/hardware/devicestate/DeviceStateRequest;)V

    return-void
.end method

.method private blacklist validateRequestWrapperParameters(Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must be supplied with executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must be supplied with callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method blacklist notifyRequestActive()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist notifyRequestCanceled()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
