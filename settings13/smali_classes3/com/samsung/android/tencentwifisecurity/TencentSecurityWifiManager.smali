.class public Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
.super Ljava/lang/Object;
.source "TencentSecurityWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;,
        Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z

.field private static final projection:[Ljava/lang/String;

.field private static final sEvaluationScreens:[Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;


# instance fields
.field private friendContext:Landroid/content/Context;

.field private final mBoundContexts:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mConn:Landroid/content/ServiceConnection;

.field private mConnApBssid:Ljava/lang/String;

.field private mConnApSecurity:I

.field private mConnApSsid:Ljava/lang/String;

.field private mEvaluationCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;

.field private mInManagerNetwork:Z

.field private mIsTencentWifiSecurityEnabled:Z

.field private mLastDialog:Landroid/app/AlertDialog;

.field private mSecurityAps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiEvaluationService:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

.field private observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

.field private resolver:Landroid/content/ContentResolver;

.field private showTwsDialog:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBoundContexts(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mBoundContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConn(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnApBssid(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApBssid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnApSecurity(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSecurity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnApSsid(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSsid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEvaluationCallback(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mEvaluationCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTencentWifiSecurityEnabled(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mIsTencentWifiSecurityEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEvaluationService(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mWifiEvaluationService:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowTwsDialog(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmWifiEvaluationService(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mWifiEvaluationService:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    return-void
.end method

.method static bridge synthetic -$$Nest$misEvaluationContextValid(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isEvaluationContextValid(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAccessPointSecurity(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->setAccessPointSecurity(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetWifiSecurityConfig(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->setWifiSecurityConfig(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiSecurity(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->updateWifiSecurity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 58
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    const-string v0, "com.android.settings.SubSettings"

    const-string v1, "com.android.settings.Settings$WifiSettingsActivity"

    const-string v2, "com.samsung.android.settings.wifi.WifiPickerDialog"

    .line 67
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->sEvaluationScreens:[Ljava/lang/String;

    const-string v0, "content://com.samsung.tencentwifi.security.provider/item/1"

    .line 74
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_dialog"

    const-string v3, "_enabletws"

    const-string v4, "_ssid"

    const-string v5, "_bssid"

    const-string v6, "_security"

    .line 76
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->projection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    .line 94
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    .line 95
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    const-string v1, "-"

    .line 100
    iput-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSsid:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApBssid:Ljava/lang/String;

    const/4 v1, -0x1

    .line 102
    iput v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSecurity:I

    .line 105
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mBoundContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 118
    new-instance v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$1;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V

    iput-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mEvaluationCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;

    .line 127
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mWifiEvaluationService:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    .line 128
    new-instance v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private dimissDialog()V
    .locals 2

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mLastDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mLastDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TencentSecurityWifiManager"

    const-string v1, "Exception in dimissDialog"

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mLastDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
    .locals 2

    const-class v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->sInstance:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;-><init>()V

    sput-object v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->sInstance:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    .line 115
    :cond_0
    sget-object v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->sInstance:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isEvaluationContextValid(Landroid/content/Context;)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 285
    :cond_0
    sget-object v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->sEvaluationScreens:[Ljava/lang/String;

    array-length v1, v0

    move v2, p0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "TencentSecurityWifiManager"

    const-string v0, "Evaluation conetext not valid"

    .line 288
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isWifiSecurityPackageExist(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    .line 295
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.samsung.android.tencentwifisecurity"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 301
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is WifiSecurity Package Exist = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TencentSecurityWifiManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private registerObserver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    :try_start_0
    const-string v0, "com.samsung.android.tencentwifisecurity"

    const/4 v1, 0x2

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->friendContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    .line 155
    new-instance p1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/os/Handler;Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver-IA;)V

    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    .line 156
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    if-eqz p0, :cond_0

    sget-object p2, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setAccessPointSecurity(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 430
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "TencentSecurityWifiManager"

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 436
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 437
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 438
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 439
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 441
    new-instance v5, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;

    invoke-direct {v5, p0, v0, v1, v4}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-boolean v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$SecurityApInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "set AP Security, mSecurityAps size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const-string p0, "set AP Security, size is different"

    .line 431
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private setWifiSecurityConfig(ZZ)V
    .locals 5

    .line 409
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 411
    sget-object v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->projection:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    const-string v3, "enable"

    const-string v4, "disable"

    if-eqz p1, :cond_0

    move-object p1, v3

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 412
    aget-object p1, v1, p1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 419
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 421
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 424
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 425
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method

.method private showTencentWifiWarningDialog(Landroid/content/Context;)V
    .locals 5

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    .line 314
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->dimissDialog()V

    const-string v3, "TencentSecurityWifiManager"

    const-string v4, "show Tencent Wifi Warning Dialog"

    .line 315
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 318
    sget v0, Lcom/android/wifitrackerlib/R$string;->wifi_security_check_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 321
    sget v4, Lcom/android/wifitrackerlib/R$string;->tencent_wifi_detection_warning_title:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 322
    sget v4, Lcom/android/wifitrackerlib/R$string;->tencent_wifi_detection_warning_content:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 324
    sget v0, Lcom/android/wifitrackerlib/R$string;->tencent_wifi_detection_warning_confirm_buttom:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/content/Context;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    sget v0, Lcom/android/wifitrackerlib/R$string;->tencent_wifi_detection_warning_disagree_buttom:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$4;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 353
    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mLastDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private unregisterObserver()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->observer:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private updateWifiSecurity()V
    .locals 8

    const-string v0, "enable"

    .line 368
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 373
    :cond_0
    :try_start_0
    sget-object v4, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->projection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id asc"

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 375
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 376
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    .line 380
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    .line 381
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 382
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 383
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 387
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    const/4 v4, 0x2

    .line 388
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mIsTencentWifiSecurityEnabled:Z

    const/4 v0, 0x3

    .line 389
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSsid:Ljava/lang/String;

    const/4 v0, 0x4

    .line 390
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApBssid:Ljava/lang/String;

    const/4 v0, 0x5

    .line 392
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "safe"

    .line 393
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSecurity:I

    goto :goto_0

    :cond_3
    const-string v4, "risk"

    .line 395
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    iput v3, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSecurity:I

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    .line 398
    iput v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSecurity:I

    .line 400
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 402
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 404
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 405
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method


# virtual methods
.method public checkApSecurityState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 263
    iget-boolean v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mIsTencentWifiSecurityEnabled:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 266
    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApBssid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected Ap, ssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    sget-boolean p1, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->DBG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " security:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSecurity:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TencentSecurityWifiManager"

    .line 267
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConnApSecurity:I

    return p0

    :cond_2
    return v1
.end method

.method public isWifiSecurityEnabled()Z
    .locals 0

    .line 243
    iget-boolean p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mIsTencentWifiSecurityEnabled:Z

    return p0
.end method

.method public setInManagerNetwork(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mInManagerNetwork:Z

    return-void
.end method

.method public startWifiSecurityDetection(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TencentSecurityWifiManager"

    const-string v1, "start detection"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityPackageExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mIsTencentWifiSecurityEnabled:Z

    if-nez p0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.VIEW_DETECTION_RESULT"

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 238
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startWifiSecurityEvaluation(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8

    const-string v0, "TencentSecurityWifiManager"

    const-string v1, "startWifiSecurityEvaluation"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 171
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, -0x2

    const-string v7, "user_setup_complete"

    invoke-static {v5, v7, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eq v5, v3, :cond_1

    move v4, v3

    .line 173
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v2, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityPackageExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.android.settings"

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mBoundContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 181
    invoke-virtual {p0, v2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->stopWifiSecurityEvaluation(Landroid/content/Context;)V

    goto :goto_1

    .line 184
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->registerObserver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 186
    iget-object p2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->updateWifiSecurity()V

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start Evaluation, mIsTencentWifiSecurityEnabled:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mIsTencentWifiSecurityEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showTwsDialog:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-boolean p2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTwsDialog:Z

    if-eqz p2, :cond_4

    .line 191
    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTencentWifiWarningDialog(Landroid/content/Context;)V

    goto :goto_2

    .line 192
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mWifiEvaluationService:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    if-nez p2, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isEvaluationContextValid(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 193
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.tencentwifisecurity"

    const-string v2, "com.samsung.android.tencentwifisecurity.WifiEvaluationService"

    .line 194
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 197
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mBoundContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string p0, "startWifiSecurityEvaluation bind fail"

    .line 199
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public stopWifiSecurityEvaluation(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TencentSecurityWifiManager"

    const-string v1, "stopWifiSecurityEvaluation"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->dimissDialog()V

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 208
    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityPackageExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isEvaluationContextValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mBoundContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->unregisterObserver()V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mSecurityAps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mWifiEvaluationService:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    if-eqz v1, :cond_1

    .line 218
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;->stopSecurityEvaluation()V

    .line 219
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mWifiEvaluationService:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    iget-object v2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mEvaluationCallback:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;->unregisterEvaluationCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;)V

    .line 220
    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Ignore IllegalArgumentException in unbinding service"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 222
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mWifiEvaluationService:Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    .line 227
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->mBoundContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void
.end method
