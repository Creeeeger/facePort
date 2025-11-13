.class public final Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mIsBound:Z


# instance fields
.field public final mServiceConnection:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper$1;

.field public volatile mServiceStatus:I

.field public mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

.field public mSimCardManagerServiceCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mServiceStatus:I

    new-instance v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper$1;-><init>(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mServiceConnection:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper$1;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->setServiceStatus(I)V

    sput-boolean v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mIsBound:Z

    const-string p0, "SimCardManagerServiceProvider$ServiceBindHelper"

    const-string v2, "bindService : SimCardManagerProcessService"

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerProcessService"

    const-string v3, "com.samsung.android.app.telephonyui"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static access$300(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;Landroid/content/Context;)V
    .locals 5

    const-string v0, "SimCardManagerServiceProvider$ServiceBindHelper"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mIsBound:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mServiceConnection:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper$1;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mSimCardManagerServiceCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper$2;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_1

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getServiceApi : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

    iget-object v4, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mSimCardManagerServiceCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper$2;

    check-cast v3, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub$Proxy;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub$Proxy;->unregisterSimCardManagerServiceCallback(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mSimCardManagerServiceCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper$2;

    const-string/jumbo p0, "unbindService : mSimCardManagerServiceCallback is unregister"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    const-string/jumbo p0, "unbindService : SimCardManagerProcessService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    sput-boolean v2, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mIsBound:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "Caught Exception:"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final setServiceStatus(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "serviceStatus : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mServiceStatus:I

    const-string v2, " -> "

    const-string v3, "SimCardManagerServiceProvider$ServiceBindHelper"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mServiceStatus:I

    return-void
.end method
