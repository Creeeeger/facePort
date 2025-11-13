.class Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;
.super Lcom/android/ims/internal/IImsMultiEndpoint$Stub;
.source "ImsMultiEndpointImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;


# direct methods
.method public static synthetic blacklist $r8$lambda$64XAm4fkezTMJT4W_ezGWtW1U7k(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->lambda$requestImsExternalCallStateInfo$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pUAeGQ53zl_R1JJg-uuP_DAOfyA(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->lambda$setListener$0(Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;-><init>()V

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsMultiEndpointImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiEndpointImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$2(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestImsExternalCallStateInfo$1()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->requestImsExternalCallStateInfo()V

    return-void
.end method

.method private synthetic blacklist lambda$setListener$0(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MultiEndpointImplBase"

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsExternalCallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "setListener: discarding dead Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsExternalCallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/ims/internal/IImsExternalCallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "setListener is being called when there is already an active listener"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist requestImsExternalCallStateInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;)V

    const-string/jumbo v1, "requestImsExternalCallStateInfo"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
