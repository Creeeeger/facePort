.class public final Landroid/hardware/camera2/extension/RequestProcessor;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/RequestProcessor$Request;,
        Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;,
        Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RequestProcessor"


# instance fields
.field private final blacklist mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

.field private final blacklist mVendorId:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/IRequestProcessorImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    iput-wide p2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    return-void
.end method


# virtual methods
.method public whitelist abortCaptures()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->abortCaptures()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setRepeating(Landroid/hardware/camera2/extension/RequestProcessor$Request;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-wide v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/Request;

    new-instance v5, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v5, v0, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return v1

    :cond_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v4, 0x3

    const-string v5, "Failed to set the repeating request"

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public whitelist stopRepeating()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->stopRepeating()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist submit(Landroid/hardware/camera2/extension/RequestProcessor$Request;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-wide v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/Request;

    new-instance v5, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v5, v0, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return v1

    :cond_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v4, 0x3

    const-string v5, "Failed to submit capture request"

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public whitelist submitBurst(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    invoke-static {v0, v1, p1}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v3, p1, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v0, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    nop

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    const-string v4, "Failed to submit burst request"

    invoke-direct {v2, v3, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
