.class Landroid/telephony/ims/feature/MmTelFeature$1;
.super Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/feature/MmTelFeature;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/feature/MmTelFeature;

    .line 106
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;-><init>()V

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 307
    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$mgetExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 306
    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    nop

    .line 313
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeature Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    const-string v2, "MmTelFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 328
    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$mgetExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 327
    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 330
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeature Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    const-string v3, "MmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 340
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 341
    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$mgetExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 340
    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 343
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeature Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 346
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    const-string v3, "MmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 317
    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 318
    invoke-static {v1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$mgetExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 317
    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeature Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    const-string v2, "MmTelFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$21(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 307
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$23(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 328
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResultNoException$24(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 341
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsyncNoException$22(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 318
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeSms(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 280
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;III)V

    const-string v1, "acknowledgeSms"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public blacklist acknowledgeSmsReport(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 286
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;III)V

    const-string v1, "acknowledgeSmsReport"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public blacklist acknowledgeSmsWithPdu(II[B)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$macknowledgeSmsWithPdu(Landroid/telephony/ims/feature/MmTelFeature;II[B)V

    .line 370
    monitor-exit v0

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 240
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "addCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->changeAudioPath(II)V

    .line 385
    monitor-exit v0

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 253
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "changeCapabilitiesConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public blacklist changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/List;)V

    const-string v1, "changeOfferedRtpHeaderExtensionTypes"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public blacklist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 2
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;II)V

    const-string v1, "createCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public blacklist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 136
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "createCallSession"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsCallSession;

    .line 145
    .local v1, "result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 149
    return-object v1

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 185
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getEcbmInterface"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsEcbm;

    .line 194
    .local v1, "result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 198
    return-object v1

    .line 195
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getFeatureState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string v1, "getFeatureState"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 210
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "getMultiEndpointInterface"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 219
    .local v1, "result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 223
    return-object v1

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getSmsFormat()Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string/jumbo v1, "getSmsFormat"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 413
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 166
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/RemoteException;>;"
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "getUtInterface"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsUt;

    .line 175
    .local v1, "result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 179
    return-object v1

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist initImsSmsImplAdapter()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature;->initImsSmsImplAdapter()V

    .line 377
    monitor-exit v0

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isCmcEmergencyCallSupported(I)Z
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature;->isCmcEmergencyCallSupported(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$acknowledgeSms$17$android-telephony-ims-feature-MmTelFeature$1(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 280
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 281
    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III)V

    .line 280
    return-void
.end method

.method synthetic blacklist lambda$acknowledgeSmsReport$18$android-telephony-ims-feature-MmTelFeature$1(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 286
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 287
    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$macknowledgeSmsReport(Landroid/telephony/ims/feature/MmTelFeature;III)V

    .line 286
    return-void
.end method

.method synthetic blacklist lambda$addCapabilityCallback$11$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 240
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 241
    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 240
    return-void
.end method

.method synthetic blacklist lambda$changeCapabilitiesConfiguration$13$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 253
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 254
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 253
    return-void
.end method

.method synthetic blacklist lambda$changeOfferedRtpHeaderExtensionTypes$3$android-telephony-ims-feature-MmTelFeature$1(Ljava/util/List;)V
    .locals 2
    .param p1, "types"    # Ljava/util/List;

    .line 129
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V

    return-void
.end method

.method synthetic blacklist lambda$createCallProfile$2$android-telephony-ims-feature-MmTelFeature$1(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 122
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$createCallSession$4$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 141
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$getEcbmInterface$7$android-telephony-ims-feature-MmTelFeature$1(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 187
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 190
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$getFeatureState$1$android-telephony-ims-feature-MmTelFeature$1()Ljava/lang/Integer;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getMultiEndpointInterface$9$android-telephony-ims-feature-MmTelFeature$1(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 212
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 215
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$getSmsFormat$19$android-telephony-ims-feature-MmTelFeature$1()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 293
    invoke-static {v0}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$mgetSmsFormat(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/lang/String;

    move-result-object v0

    .line 292
    return-object v0
.end method

.method synthetic blacklist lambda$getUtInterface$6$android-telephony-ims-feature-MmTelFeature$1(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsUt;
    .locals 2
    .param p1, "exceptionRef"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 171
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$onSmsReady$20$android-telephony-ims-feature-MmTelFeature$1()V
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$monSmsReady(Landroid/telephony/ims/feature/MmTelFeature;)V

    return-void
.end method

.method synthetic blacklist lambda$queryCapabilityConfiguration$14$android-telephony-ims-feature-MmTelFeature$1(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 261
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method synthetic blacklist lambda$queryCapabilityStatus$10$android-telephony-ims-feature-MmTelFeature$1()Ljava/lang/Integer;
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 229
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->mCapabilities:I

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$removeCapabilityCallback$12$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 246
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 247
    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 246
    return-void
.end method

.method synthetic blacklist lambda$sendSms$16$android-telephony-ims-feature-MmTelFeature$1(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .param p6, "pdu"    # [B

    .line 274
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    .line 275
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msendSms(Landroid/telephony/ims/feature/MmTelFeature;IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 274
    return-void
.end method

.method synthetic blacklist lambda$setListener$0$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .locals 1
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 110
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msetListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    return-void
.end method

.method synthetic blacklist lambda$setSmsListener$15$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 1
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 267
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msetSmsListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method synthetic blacklist lambda$setUiTtyMode$8$android-telephony-ims-feature-MmTelFeature$1(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 203
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->setUiTtyMode(ILandroid/os/Message;)V

    return-void
.end method

.method synthetic blacklist lambda$shouldProcessCall$5$android-telephony-ims-feature-MmTelFeature$1([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 155
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->shouldProcessCall([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onSmsReady()V
    .locals 2

    .line 298
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string/jumbo v1, "onSmsReady"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public blacklist queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 261
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "queryCapabilityConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public blacklist queryCapabilityStatus()I
    .locals 2

    .line 228
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;)V

    const-string/jumbo v1, "queryCapabilityStatus"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 231
    .local v0, "result":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 234
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 246
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "removeCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    .line 420
    monitor-exit v0

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendRpSmma(Ljava/lang/String;)V
    .locals 2
    .param p1, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msendRpSmma(Landroid/telephony/ims/feature/MmTelFeature;Ljava/lang/String;)V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .param p6, "pdu"    # [B

    .line 274
    new-instance v8, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;IILjava/lang/String;Ljava/lang/String;Z[B)V

    const-string/jumbo v0, "sendSms"

    invoke-direct {p0, v8, v0}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public blacklist setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .locals 2
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 110
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public blacklist setRetryCount(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->-$$Nest$msetRetryCount(Landroid/telephony/ims/feature/MmTelFeature;II)V

    .line 356
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 2
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 267
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsSmsListener;)V

    const-string/jumbo v1, "setSmsListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncNoException(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public blacklist setUiTtyMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;ILandroid/os/Message;)V

    const-string/jumbo v1, "setUiTtyMode"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->setVideoCrtAudio(IZ)V

    .line 406
    monitor-exit v0

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist shouldProcessCall([Ljava/lang/String;)I
    .locals 2
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 154
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/feature/MmTelFeature$1;[Ljava/lang/String;)V

    const-string/jumbo v1, "shouldProcessCall"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->executeMethodAsyncForResultNoException(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 156
    .local v0, "result":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 159
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist startLocalRingBackTone(III)I
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v1, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->startLocalRingBackTone(III)I

    move-result v1

    monitor-exit v0

    return v1

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist stopLocalRingBackTone()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    iget-object v0, v0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1;->this$0:Landroid/telephony/ims/feature/MmTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature;->stopLocalRingBackTone()I

    move-result v1

    monitor-exit v0

    return v1

    .line 399
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
