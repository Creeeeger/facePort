.class final Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "CarrierMessagingServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierMessagingCallbackInternal"
.end annotation


# instance fields
.field final blacklist mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$XttWpwW-8HA8YbenqyxXqsiIpVE(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->lambda$onSendSmsComplete$1(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aplMn-bk0ljoo2N2HhUSOGOP-Ws(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->lambda$onSendMultipartSmsComplete$2(I[I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ckOyxerCoNyhl607O7z5rGmPfdQ(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->lambda$onDownloadMmsComplete$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fHJhVXTxWpIBZPT9ymWBnCIljWU(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->lambda$onSendMmsComplete$3(I[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ydCHBSwgEc4fuc0B-DJR_0lFFkA(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->lambda$onFilterComplete$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    iput-object p3, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$onDownloadMmsComplete$4(I)V
    .locals 1

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onDownloadMmsComplete(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onFilterComplete$0(I)V
    .locals 1

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onReceiveSmsComplete(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSendMmsComplete$3(I[B)V
    .locals 1

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendMmsComplete(I[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onSendMultipartSmsComplete$2(I[I)V
    .locals 1

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendMultipartSmsComplete(I[I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSendSmsComplete$1(II)V
    .locals 1

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendSmsComplete(II)V

    return-void
.end method


# virtual methods
.method public blacklist onDownloadMmsComplete(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda0;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onFilterComplete(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda2;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSendMmsComplete(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda4;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSendMultipartSmsComplete(I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda1;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSendSmsComplete(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda3;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
