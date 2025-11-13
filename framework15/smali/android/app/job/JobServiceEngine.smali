.class public abstract Landroid/app/job/JobServiceEngine;
.super Ljava/lang/Object;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobServiceEngine$JobInterface;,
        Landroid/app/job/JobServiceEngine$JobHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_EXECUTE_JOB:I = 0x0

.field private static final blacklist MSG_GET_TRANSFERRED_DOWNLOAD_BYTES:I = 0x3

.field private static final blacklist MSG_GET_TRANSFERRED_UPLOAD_BYTES:I = 0x4

.field private static final blacklist MSG_INFORM_OF_NETWORK_CHANGE:I = 0x8

.field private static final greylist-max-o MSG_JOB_FINISHED:I = 0x2

.field private static final blacklist MSG_SET_NOTIFICATION:I = 0x7

.field private static final greylist-max-o MSG_STOP_JOB:I = 0x1

.field private static final blacklist MSG_UPDATE_ESTIMATED_NETWORK_BYTES:I = 0x6

.field private static final blacklist MSG_UPDATE_TRANSFERRED_NETWORK_BYTES:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "JobServiceEngine"


# instance fields
.field private final greylist-max-o mBinder:Landroid/app/job/IJobService;

.field greylist-max-o mHandler:Landroid/app/job/JobServiceEngine$JobHandler;


# direct methods
.method public constructor whitelist <init>(Landroid/app/Service;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/job/JobServiceEngine$JobInterface;

    invoke-direct {v0, p0}, Landroid/app/job/JobServiceEngine$JobInterface;-><init>(Landroid/app/job/JobServiceEngine;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    new-instance v0, Landroid/app/job/JobServiceEngine$JobHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobServiceEngine$JobHandler;-><init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    return-void
.end method


# virtual methods
.method public final whitelist getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    invoke-interface {v0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J
    .locals 2

    const-wide/32 v0, 0xf38aa29

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J
    .locals 2

    const-wide/32 v0, 0xf38aa29

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onNetworkChanged(Landroid/app/job/JobParameters;)V
    .locals 2

    const-string v0, "JobServiceEngine"

    const-string/jumbo v1, "onNetworkChanged() not implemented. Must override in a subclass."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract whitelist onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract whitelist onStopJob(Landroid/app/job/JobParameters;)Z
.end method

.method public whitelist setNotification(Landroid/app/job/JobParameters;ILandroid/app/Notification;I)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "notification"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateEstimatedNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-wide p3, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    iput-wide p5, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    iget-object v1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateTransferredNetworkBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;JJ)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-wide p3, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    iput-wide p5, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    iget-object v1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
