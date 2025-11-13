.class public final synthetic Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/Callable;

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$executeWithCleanIdentity$0(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Callable;)V

    return-void
.end method
