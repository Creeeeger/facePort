.class public final synthetic Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    iput p2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    iget v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    :try_start_0
    iget-object v3, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->context:Landroid/content/Context;

    iget-wide v4, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->waitTimeInMillisForServiceConnection:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    check-cast v0, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;

    invoke-virtual {v0, v1, p0, v3}, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;->logMetric(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "logMetric failed since service reference is null. Are the permissions valid?"

    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception occurred while trying to log metric = ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
