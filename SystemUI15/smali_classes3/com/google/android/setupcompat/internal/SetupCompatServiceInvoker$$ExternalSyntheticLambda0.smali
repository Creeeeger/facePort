.class public final synthetic Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    iput-object p2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

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

    check-cast v0, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;

    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;->onFocusStatusChanged(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p0, "Report focusChange failed since service reference is null. Are the permission valid?"

    invoke-virtual {v2, p0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Exception occurred while "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trying report windowFocusChange to SetupWizard."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    :try_start_1
    iget-object v3, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->context:Landroid/content/Context;

    iget-wide v4, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->waitTimeInMillisForServiceConnection:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;->validateActivity(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "BindBack failed since service reference is null. Are the permissions valid?"

    invoke-virtual {v2, p0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Exception occurred while "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trying bind back to SetupWizard."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
