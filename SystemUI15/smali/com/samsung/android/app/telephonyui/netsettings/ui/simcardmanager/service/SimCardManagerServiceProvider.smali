.class public final Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INTERNAL_URI:Landroid/net/Uri;

.field public static final INVALID_VARIABLE:I

.field public static mContext:Landroid/content/Context;

.field public static final mHandler:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$1;

.field public static mIsRemainCallbackCall:Z

.field public static mIsServiceClose:Z

.field public static volatile sInstance:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

.field public static volatile sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

.field public static sSimCardManagerServiceCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.app.telephonyui.internal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sSimCardManagerServiceCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsServiceClose:Z

    sput-boolean v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->INVALID_VARIABLE:I

    new-instance v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$1;

    invoke-direct {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mHandler:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getServiceApi()Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

    return-void
.end method

.method public static getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.app.telephonyui"

    const-string v1, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerProcessService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.telephonyui"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sticky_value"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "SimCardManagerServiceProvider"

    const-string v1, "getServiceApi - startService !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "SimCardManagerServiceProvider"

    const-string v0, "getServiceApi - startService Fail !!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sInstance:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    if-nez p0, :cond_2

    const-class p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sInstance:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    invoke-direct {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sInstance:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    sget-object p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mHandler:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$1;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    sput-boolean v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    :cond_3
    sget-object p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sInstance:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    return-object p0
.end method

.method public static getServiceApi()Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;
    .locals 4

    sget-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    iget v0, v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mServiceStatus:I

    if-nez v0, :cond_3

    :cond_0
    const-class v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    iget v1, v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mServiceStatus:I

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    sget-object v2, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getServiceApi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    const-string v3, "SimCardManagerServiceProvider$ServiceBindHelper"

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isServiceRunningCheck(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerProcessService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SimCardManagerServiceProvider"

    const-string v0, "SimCardManagerProcessService already is Running !!! "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final GetCurrentVoiceCall()I
    .locals 7

    sget p0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->INVALID_VARIABLE:I

    const-string v0, "SimCardManagerServiceProvider"

    const-string v1, "GetCurrentVoiceCall: = "

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getServiceApi()Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub$Proxy;

    invoke-virtual {v2}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub$Proxy;->GetCurrentVoiceCall()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string v2, "GetCurrentVoiceCall: service is not running."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "getCurrentVoiceCall"

    sget-object v3, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mContext:Landroid/content/Context;

    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v2, v6, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "bundle is null : getCurrentVoiceCall"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catch_1
    const-string v1, "GetCurrentVoiceCall: exception occurred."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isDefaultDataSlotAllowed(I)Z
    .locals 6

    const-string p0, "SimCardManagerServiceProvider"

    const-string v0, "isDefaultDataSlotAllowed: = "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getServiceApi()Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub$Proxy;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub$Proxy;->isDefaultDataSlotAllowed(I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string v2, "isDefaultDataSlotAllowed: service is not running."

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "isDefaultDataSlotAllowed"

    sget-object v3, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mContext:Landroid/content/Context;

    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget v5, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->INVALID_VARIABLE:I

    if-eq p1, v5, :cond_0

    const-string v5, "selectItem"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v3, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v2, v5, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "bundle is null : isDefaultDataSlotAllowed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :catch_1
    const-string p1, "isDefaultDataSlotAllowed: exception occurred."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
