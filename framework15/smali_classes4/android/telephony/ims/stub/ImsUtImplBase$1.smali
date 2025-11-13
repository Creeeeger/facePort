.class Landroid/telephony/ims/stub/ImsUtImplBase$1;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsUtImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mUtListener:Landroid/telephony/ims/ImsUtListener;

.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/ImsUtImplBase;


# direct methods
.method public static synthetic blacklist $r8$lambda$2K-3YuEDiqqgpPX-OF3WC76paAA(Landroid/telephony/ims/stub/ImsUtImplBase$1;IILjava/lang/String;II)Ljava/lang/Integer;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallForward$10(IILjava/lang/String;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$32eqQlAiVyuXt34qAL8-akHlf5U(Landroid/telephony/ims/stub/ImsUtImplBase$1;ILjava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCallForward$2(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$3LJhq5N9ekIFVt_oeITgKappFAc(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallBarring$9(II[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$7V9pkwnY6TNziYSD8ZzgBVyVGBY(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCLIR$12(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$7nKt3ZHzvZw3yyB5eAApcNcpNHo(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCOLR$6()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8BEuQpFFiVxM96R5ytk5LNWbd7M(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCLIP$5()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9kZ5_Kj1mtH2CPpeuIlzXOKWfSI(Landroid/telephony/ims/stub/ImsUtImplBase$1;Lcom/android/ims/internal/IImsUtListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$setListener$16(Lcom/android/ims/internal/IImsUtListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CGaDfSEx9vdLsV6AyTjbG3F5hfM(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCOLP$15(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$EG9DyUn5CryIN_c5TZ2mjtWyVkE(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallBarringForServiceClass$18(II[Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$J1DeUhNggZnO1xOCTizdEjIkciU(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCLIR$4()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$JhYlQcqYcqG_iShx5x9YO6QYFTY(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCallBarring$1(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$M7WXR3nicKFf5oZEmAfYgIOSqqc(Landroid/telephony/ims/stub/ImsUtImplBase$1;ZI)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallWaiting$11(ZI)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$TA3oupEHyNuzgXdxvcoInDHjgTI(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCallWaiting$3()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$TJ6cH17ghhNxP-L9BWaxgaWpxT8(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCLIP$13(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$UPN7rxnTKRR-tgmAp2ackw53NqE(Landroid/telephony/ims/stub/ImsUtImplBase$1;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCOLP$7()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ZtbMpY9Iv-ILFB6sXA7nIuEQuxY(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCOLR$14(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$bIqTUf33J1IU3PjVgV_Vlhu6BUU(Landroid/telephony/ims/stub/ImsUtImplBase$1;Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$transact$8(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$dGJJT6sOhrOrlFrtIX3DqCB_-7s(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$close$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sMCI9eyWA_HxI4p0JAUuh4eEDnA(Landroid/telephony/ims/stub/ImsUtImplBase$1;II)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$queryCallBarringForServiceClass$17(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$u5nBIgB7uUR9FTcxdc15xvEeujc(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallBarringWithPassword$19(II[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/stub/ImsUtImplBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsUtImplBase Binder - "

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

    const-string v2, "ImsUtImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
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

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsUtImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsUtImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private synthetic blacklist lambda$close$0()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->close()V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$20(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$21(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCLIP$5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCLIP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCLIR$4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCLIR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCOLP$7()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCOLP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCOLR$6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCOLR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCallBarring$1(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallBarring(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCallBarringForServiceClass$17(II)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallBarringForServiceClass(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCallForward$2(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallForward(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$queryCallWaiting$3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallWaiting()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setListener$16(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    const/4 v1, 0x0

    const-string v2, "ImsUtImplBase"

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsUtListener;->getListenerInterface()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "setListener: discarding dead Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsUtListener;->getListenerInterface()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    if-nez v0, :cond_3

    new-instance v0, Landroid/telephony/ims/ImsUtListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsUtListener;-><init>(Lcom/android/ims/internal/IImsUtListener;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "setListener is being called when there is already an active listener"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/telephony/ims/ImsUtListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsUtListener;-><init>(Lcom/android/ims/internal/IImsUtListener;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    :goto_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->setListener(Landroid/telephony/ims/ImsUtListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$transact$8(Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->transact(Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateCLIP$13(Z)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCLIP(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateCLIR$12(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCLIR(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateCOLP$15(Z)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCOLP(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateCOLR$14(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCOLR(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateCallBarring$9(II[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateCallBarringForServiceClass$18(II[Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateCallBarringWithPassword$19(II[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;
    .locals 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateCallForward$10(IILjava/lang/String;II)Ljava/lang/Integer;
    .locals 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateCallWaiting$11(ZI)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallWaiting(ZI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist isUssdEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryCLIP()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCLIP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCLIR()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCLIR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCOLP()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCOLP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCOLR()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCOLR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCallBarring(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo v1, "queryCallBarring"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCallBarringForServiceClass(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II)V

    const-string/jumbo v1, "queryCallBarringForServiceClass"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCallForward(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;ILjava/lang/String;)V

    const-string/jumbo v1, "queryCallForward"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist queryCallWaiting()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCallWaiting"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Lcom/android/ims/internal/IImsUtListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist transact(Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Landroid/os/Bundle;)V

    const-string/jumbo v1, "transact"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCLIP(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)V

    const-string/jumbo v1, "updateCLIP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCLIR(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo v1, "updateCLIR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCOLP(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)V

    const-string/jumbo v1, "updateCOLP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCOLR(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo v1, "updateCOLR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallBarring(II[Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;)V

    const-string/jumbo v1, "updateCallBarring"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda17;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;I)V

    const-string/jumbo v0, "updateCallBarringForServiceClass"

    invoke-direct {p0, v6, v0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "updateCallBarringWithPassword"

    invoke-direct {p0, v7, v0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallForward(IILjava/lang/String;II)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;IILjava/lang/String;II)V

    const-string/jumbo v0, "updateCallForward"

    invoke-direct {p0, v7, v0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist updateCallWaiting(ZI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;ZI)V

    const-string/jumbo v1, "updateCallWaiting"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
