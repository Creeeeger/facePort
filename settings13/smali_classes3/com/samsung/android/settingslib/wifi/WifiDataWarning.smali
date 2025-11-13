.class public Lcom/samsung/android/settingslib/wifi/WifiDataWarning;
.super Ljava/lang/Object;
.source "WifiDataWarning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/wifi/WifiDataWarning$WifiDataWarningReceiver;
    }
.end annotation


# static fields
.field private static mReceiver:Lcom/samsung/android/settingslib/wifi/WifiDataWarning$WifiDataWarningReceiver;

.field private static sInstance:Lcom/samsung/android/settingslib/wifi/WifiDataWarning;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSemShowOnce:Z


# direct methods
.method static bridge synthetic -$$Nest$mhandleBroadcast(Lcom/samsung/android/settingslib/wifi/WifiDataWarning;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->registerReceiver()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settingslib/wifi/WifiDataWarning;
    .locals 2

    const-class v0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->sInstance:Lcom/samsung/android/settingslib/wifi/WifiDataWarning;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;

    invoke-direct {v1, p0}, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->sInstance:Lcom/samsung/android/settingslib/wifi/WifiDataWarning;

    .line 56
    :cond_0
    sget-object p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->sInstance:Lcom/samsung/android/settingslib/wifi/WifiDataWarning;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBroadcast action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiDataWarning"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "networkInfo"

    .line 70
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mSemShowOnce:Z

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 76
    iget-boolean p2, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mSemShowOnce:Z

    if-eqz p2, :cond_3

    .line 77
    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->showCHNDataChargeWarningToast(Landroid/content/Context;)V

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mSemShowOnce:Z

    :cond_3
    :goto_2
    return-void
.end method

.method private declared-synchronized registerReceiver()V
    .locals 3

    monitor-enter p0

    .line 43
    :try_start_0
    sget-object v0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mReceiver:Lcom/samsung/android/settingslib/wifi/WifiDataWarning$WifiDataWarningReceiver;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    new-instance v1, Lcom/samsung/android/settingslib/wifi/WifiDataWarning$WifiDataWarningReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settingslib/wifi/WifiDataWarning$WifiDataWarningReceiver;-><init>(Lcom/samsung/android/settingslib/wifi/WifiDataWarning;Lcom/samsung/android/settingslib/wifi/WifiDataWarning$WifiDataWarningReceiver-IA;)V

    sput-object v1, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mReceiver:Lcom/samsung/android/settingslib/wifi/WifiDataWarning$WifiDataWarningReceiver;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mReceiver:Lcom/samsung/android/settingslib/wifi/WifiDataWarning$WifiDataWarningReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "WifiDataWarning"

    const-string v1, "registerReceiver"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
