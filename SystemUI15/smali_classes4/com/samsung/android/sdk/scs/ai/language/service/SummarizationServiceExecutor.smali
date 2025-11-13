.class public Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;
.super Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final deathRecipient:Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor$1;

.field public summarizationService:Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;->deathRecipient:Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor$1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getServiceIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intellivoiceservice.SummarizationService"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.intellivoiceservice"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "SummarizationService"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub;->$r8$clinit:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.sivs.ai.sdkcommon.language.ISummarizationService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy;

    invoke-direct {v0, p2}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;->summarizationService:Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService;

    :try_start_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;->deathRecipient:Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor$1;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p2, "RemoteException"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final onDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;->summarizationService:Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService;

    return-void
.end method
