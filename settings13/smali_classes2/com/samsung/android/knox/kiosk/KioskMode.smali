.class public Lcom/samsung/android/knox/kiosk/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    .line 215
    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;
    .locals 3

    .line 250
    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 252
    new-instance v2, Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/kiosk/KioskMode;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getService()Lcom/samsung/android/knox/kiosk/IKioskMode;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    if-nez v0, :cond_0

    const-string v0, "kioskmode"

    .line 220
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    return-object p0
.end method


# virtual methods
.method public getBlockedEdgeScreen()I
    .locals 2

    .line 1879
    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1880
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1883
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with Kiosk mode service"

    .line 1885
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
