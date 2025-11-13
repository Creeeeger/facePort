.class public Lcom/samsung/android/cover/CoverManager;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;,
        Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;,
        Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;,
        Lcom/samsung/android/cover/CoverManager$CoverStateListener;,
        Lcom/samsung/android/cover/CoverManager$StateListener;
    }
.end annotation


# static fields
.field public static final greylist COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final greylist COVER_MODE_NONE:I = 0x0

.field public static final greylist COVER_MODE_SVIEW:I = 0x1

.field private static final greylist FEATURE_COVER:Ljava/lang/String; = "com.sec.feature.cover"

.field private static final greylist FEATURE_COVER_CLEAR:Ljava/lang/String; = "com.sec.feature.cover.clearcover"

.field private static final greylist FEATURE_COVER_CLEAR_CAMERA_VIEW:Ljava/lang/String; = "com.sec.feature.cover.clearcameraviewcover"

.field private static final greylist FEATURE_COVER_CLEAR_SIDE_VIEW:Ljava/lang/String; = "com.sec.feature.cover.clearsideviewcover"

.field private static final greylist FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field private static final greylist FEATURE_COVER_LED_BACK:Ljava/lang/String; = "com.sec.feature.cover.ledbackcover"

.field private static final greylist FEATURE_COVER_MINI_SVIEW_WALLET:Ljava/lang/String; = "com.sec.feature.cover.minisviewwalletcover"

.field private static final greylist FEATURE_COVER_NEON:Ljava/lang/String; = "com.sec.feature.cover.neoncover"

.field private static final greylist FEATURE_COVER_NFCLED:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field private static final greylist FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field private static final greylist TAG:Ljava/lang/String; = "CoverManager"

.field private static greylist sIsClearCameraViewCoverSystemFeatureEnabled:Z

.field private static greylist sIsClearCoverSystemFeatureEnabled:Z

.field private static greylist sIsClearSideViewCoverSystemFeatureEnabled:Z

.field private static greylist sIsCoverSystemFeatureEnabled:Z

.field private static greylist sIsFilpCoverSystemFeatureEnabled:Z

.field private static greylist sIsLEDBackCoverSystemFeatureEnabled:Z

.field private static greylist sIsMiniSviewWalletCoverFeatureEnabled:Z

.field private static greylist sIsNeonCoverSystemFeatureEnabled:Z

.field private static greylist sIsNfcLedCoverSystemFeatureEnabled:Z

.field private static greylist sIsSViewCoverSystemFeatureEnabled:Z

.field private static greylist sIsSystemFeatureQueried:Z


# instance fields
.field private greylist mContext:Landroid/content/Context;

.field private final greylist mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/cover/CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/cover/LedSystemEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mService:Lcom/samsung/android/cover/ICoverManager;

.field private final greylist mToken:Landroid/os/IBinder;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    .line 131
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsCoverSystemFeatureEnabled:Z

    .line 137
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 143
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 149
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    .line 155
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 161
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    .line 167
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    .line 173
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    .line 179
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsMiniSviewWalletCoverFeatureEnabled:Z

    .line 185
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsClearCameraViewCoverSystemFeatureEnabled:Z

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 187
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mToken:Landroid/os/IBinder;

    .line 245
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->initSystemFeature()V

    .line 247
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Lcom/samsung/android/cover/ICoverManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/cover/ICoverManager;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 187
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mToken:Landroid/os/IBinder;

    .line 257
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 259
    return-void
.end method

.method private declared-synchronized greylist getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 421
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 422
    if-nez v0, :cond_0

    .line 423
    const-string v0, "CoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local p0    # "this":Lcom/samsung/android/cover/CoverManager;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist initSystemFeature()V
    .locals 2

    .line 265
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 267
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsCoverSystemFeatureEnabled:Z

    .line 268
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 269
    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 270
    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 271
    const-string v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    .line 272
    const-string v1, "com.sec.feature.cover.neoncover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    .line 273
    const-string v1, "com.sec.feature.cover.clearsideviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    .line 274
    const-string v1, "com.sec.feature.cover.ledbackcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    .line 275
    const-string v1, "com.sec.feature.cover.minisviewwalletcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsMiniSviewWalletCoverFeatureEnabled:Z

    .line 276
    const-string v1, "com.sec.feature.cover.clearcameraviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsClearCameraViewCoverSystemFeatureEnabled:Z

    .line 277
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    .line 279
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist addLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 894
    const-string v0, "CoverManager"

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 896
    const-string v1, "addLedNotification : This device does not support NFC Led cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void

    .line 900
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    .line 904
    if-nez p1, :cond_1

    .line 905
    const-string v1, "addLedNotification : Null notification data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void

    .line 909
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 911
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_2

    .line 912
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverManager;->addLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 913
    :catch_0
    move-exception v2

    .line 914
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "addLedNotification in sendData to NFC : "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 915
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    nop

    .line 916
    :goto_1
    return-void

    .line 901
    .end local v1    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist disableCoverManager(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .line 740
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 741
    .local v0, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_0

    .line 742
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/cover/ICoverManager;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v0    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_0
    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CoverManager"

    const-string v2, "RemoteException in disalbeCoverManager : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist disableLcdOffByCover(Lcom/samsung/android/cover/CoverManager$StateListener;)Z
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 1285
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CoverManager"

    if-nez v0, :cond_0

    .line 1286
    const-string v0, "disableLcdOffByCover : This device does not support cover"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return v1

    .line 1290
    :cond_0
    if-nez p1, :cond_1

    .line 1291
    const-string v0, "disableLcdOffByCover : listener cannot be null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    return v1

    .line 1294
    :cond_1
    const-string v0, "disableLcdOffByCover"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v0, 0x0

    .line 1299
    .local v0, "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1300
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1301
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cover/CoverListenerDelegate;

    .line 1302
    .local v4, "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1303
    move-object v0, v4

    .line 1304
    goto :goto_1

    .line 1306
    .end local v4    # "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_2
    goto :goto_0

    .line 1308
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 1309
    new-instance v3, Lcom/samsung/android/cover/CoverListenerDelegate;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5}, Lcom/samsung/android/cover/CoverListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V

    move-object v0, v3

    .line 1313
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 1314
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_5

    .line 1315
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1316
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    .local v4, "cm":Landroid/content/ComponentName;
    invoke-interface {v3, v0, v4}, Lcom/samsung/android/cover/ICoverManager;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1318
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    const/4 v1, 0x1

    return v1

    .line 1324
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    .end local v4    # "cm":Landroid/content/ComponentName;
    :cond_5
    goto :goto_2

    .line 1322
    :catch_0
    move-exception v3

    .line 1323
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return v1
.end method

.method public greylist enableLcdOffByCover(Lcom/samsung/android/cover/CoverManager$StateListener;)Z
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 1339
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CoverManager"

    if-nez v0, :cond_0

    .line 1340
    const-string v0, "enableLcdOffByCover : This device does not support cover"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return v1

    .line 1344
    :cond_0
    if-nez p1, :cond_1

    .line 1345
    const-string v0, "enableLcdOffByCover : listener cannot be null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return v1

    .line 1349
    :cond_1
    const-string v0, "enableLcdOffByCover"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v0, 0x0

    .line 1354
    .local v0, "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1355
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1356
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cover/CoverListenerDelegate;

    .line 1357
    .local v4, "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1358
    move-object v0, v4

    .line 1359
    goto :goto_1

    .line 1361
    .end local v4    # "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_2
    goto :goto_0

    .line 1363
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 1364
    const-string v3, "enableLcdOffByCover: Matching listener not found, cannot enable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    return v1

    .line 1369
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 1370
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_5

    .line 1371
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .local v4, "cm":Landroid/content/ComponentName;
    invoke-interface {v3, v0, v4}, Lcom/samsung/android/cover/ICoverManager;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1374
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    const/4 v1, 0x1

    return v1

    .line 1380
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    .end local v4    # "cm":Landroid/content/ComponentName;
    :cond_5
    goto :goto_2

    .line 1378
    :catch_0
    move-exception v3

    .line 1379
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1382
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return v1
.end method

.method public greylist getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 5

    .line 672
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CoverManager"

    if-nez v0, :cond_0

    .line 673
    const-string v0, "getCoverState : This device is not supported cover"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-object v1

    .line 676
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_3

    .line 680
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 681
    .local v0, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_2

    .line 682
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    .line 683
    .local v3, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v3, :cond_1

    .line 684
    return-object v3

    .line 686
    :cond_1
    const-string v4, "getCoverState : coverState is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v0    # "svc":Lcom/samsung/android/cover/ICoverManager;
    .end local v3    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_2
    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in getCoverState: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 677
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist isCoverManagerDisabled()Z
    .locals 4

    .line 726
    const/4 v0, 0x0

    .line 728
    .local v0, "disabled":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 729
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    .line 730
    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverManager;->isCoverManagerDisabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 734
    .end local v1    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_0
    goto :goto_0

    .line 732
    :catch_0
    move-exception v1

    .line 733
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in isCoverManagerDisabled : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method greylist isSupportClearCameraViewCover()Z
    .locals 1

    .line 378
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsClearCameraViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportClearCover()Z
    .locals 1

    .line 318
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportClearSideViewCover()Z
    .locals 1

    .line 348
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportCover()Z
    .locals 1

    .line 288
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsCoverSystemFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportFlipCover()Z
    .locals 1

    .line 298
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportLEDBackCover()Z
    .locals 1

    .line 358
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportMiniSviewWalletCover()Z
    .locals 1

    .line 368
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsMiniSviewWalletCoverFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportNeonCover()Z
    .locals 1

    .line 338
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportNfcLedCover()Z
    .locals 1

    .line 328
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportSViewCover()Z
    .locals 1

    .line 308
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method greylist isSupportTypeOfCover(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 389
    packed-switch p1, :pswitch_data_0

    .line 410
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 408
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsClearCameraViewCoverSystemFeatureEnabled:Z

    return v0

    .line 406
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsMiniSviewWalletCoverFeatureEnabled:Z

    return v0

    .line 400
    :pswitch_3
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    return v0

    .line 404
    :pswitch_4
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    return v0

    .line 398
    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    return v0

    .line 396
    :pswitch_6
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    return v0

    .line 402
    :pswitch_7
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    return v0

    .line 394
    :pswitch_8
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return v0

    .line 391
    :pswitch_9
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public greylist registerCoverPowerKeyListener(Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    .line 1152
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v0

    const-string v1, "CoverManager"

    if-nez v0, :cond_0

    .line 1153
    const-string/jumbo v0, "registerCoverPowerKeyListener : This device does not support cover"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-void

    .line 1157
    :cond_0
    const-string/jumbo v0, "registerCoverPowerKeyListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportFlipCover()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1159
    const-string/jumbo v0, "registerLedSystemListener : This device does not support Flip cover"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-void

    .line 1163
    :cond_1
    if-nez p1, :cond_2

    .line 1164
    const-string/jumbo v0, "registerCoverPowerKeyListener : listener is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void

    .line 1168
    :cond_2
    const/4 v0, 0x0

    .line 1169
    .local v0, "powerKeyEventListener":Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
    const/4 v2, 0x0

    .line 1171
    .local v2, "hasDelegate":Z
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1172
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;

    .line 1174
    .local v4, "delegate":Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1175
    move-object v0, v4

    .line 1176
    const/4 v2, 0x1

    .line 1177
    goto :goto_1

    .line 1179
    .end local v4    # "delegate":Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
    :cond_3
    goto :goto_0

    .line 1181
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;>;"
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 1182
    new-instance v3, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5}, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;Landroid/os/Handler;Landroid/content/Context;)V

    move-object v0, v3

    .line 1186
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 1187
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_6

    .line 1188
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1189
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    .local v4, "cm":Landroid/content/ComponentName;
    if-eqz v0, :cond_6

    .line 1191
    const/16 v5, 0xa

    invoke-interface {v3, v5, v0, v4}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 1192
    if-nez v2, :cond_6

    .line 1193
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    .end local v4    # "cm":Landroid/content/ComponentName;
    :cond_6
    goto :goto_2

    .line 1197
    :catch_0
    move-exception v3

    .line 1198
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in registerCoverPowerKeyListener: "

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1200
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public greylist registerLedSystemListener(Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    .line 1013
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v0

    const-string v1, "CoverManager"

    if-nez v0, :cond_0

    .line 1014
    const-string/jumbo v0, "registerLedSystemListener : This device does not support cover"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void

    .line 1018
    :cond_0
    const-string/jumbo v0, "registerLedSystemListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    const-string/jumbo v0, "registerLedSystemListener : This device does not support NFC Led cover"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-void

    .line 1024
    :cond_1
    if-nez p1, :cond_2

    .line 1025
    const-string/jumbo v0, "registerLedSystemListener : listener is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void

    .line 1029
    :cond_2
    const/4 v0, 0x0

    .line 1030
    .local v0, "ledSystemEventListener":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    const/4 v2, 0x0

    .line 1032
    .local v2, "hasDelegate":Z
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1033
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/LedSystemEventListenerDelegate;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1034
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;

    .line 1035
    .local v4, "delegate":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1036
    move-object v0, v4

    .line 1037
    const/4 v2, 0x1

    .line 1038
    goto :goto_1

    .line 1040
    .end local v4    # "delegate":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    :cond_3
    goto :goto_0

    .line 1042
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/LedSystemEventListenerDelegate;>;"
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 1043
    new-instance v3, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;Landroid/os/Handler;Landroid/content/Context;)V

    move-object v0, v3

    .line 1047
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 1048
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_6

    .line 1049
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1050
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    .local v4, "cm":Landroid/content/ComponentName;
    if-eqz v0, :cond_6

    .line 1052
    const/4 v5, 0x4

    invoke-interface {v3, v5, v0, v4}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 1053
    if-nez v2, :cond_6

    .line 1054
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    .end local v4    # "cm":Landroid/content/ComponentName;
    :cond_6
    goto :goto_2

    .line 1058
    :catch_0
    move-exception v3

    .line 1059
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in registerLedSystemListener: "

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public greylist registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 517
    const-string v0, "CoverManager"

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    const-string/jumbo v1, "registerListener : This device is not supported cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 523
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_6

    .line 527
    if-nez p1, :cond_1

    .line 528
    const-string/jumbo v1, "registerListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void

    .line 532
    :cond_1
    const/4 v1, 0x0

    .line 533
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    const/4 v2, 0x0

    .line 535
    .local v2, "hasDelegate":Z
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 536
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverStateListenerDelegate;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 537
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cover/CoverStateListenerDelegate;

    .line 538
    .local v4, "delegate":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 539
    move-object v1, v4

    .line 540
    const/4 v2, 0x1

    .line 541
    goto :goto_1

    .line 543
    .end local v4    # "delegate":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    :cond_2
    goto :goto_0

    .line 545
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverStateListenerDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 546
    new-instance v3, Lcom/samsung/android/cover/CoverStateListenerDelegate;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5}, Lcom/samsung/android/cover/CoverStateListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$CoverStateListener;Landroid/os/Handler;Landroid/content/Context;)V

    move-object v1, v3

    .line 550
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 551
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_5

    .line 552
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 553
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .local v4, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_5

    .line 555
    const/4 v5, 0x2

    invoke-interface {v3, v1, v4, v5}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 557
    if-nez v2, :cond_5

    .line 558
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    .end local v4    # "cm":Landroid/content/ComponentName;
    :cond_5
    goto :goto_2

    .line 562
    :catch_0
    move-exception v3

    .line 563
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in registerListener: "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 524
    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    .end local v2    # "hasDelegate":Z
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 461
    const-string v0, "CoverManager"

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    const-string/jumbo v1, "registerListener : This device is not supported cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void

    .line 467
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_6

    .line 471
    if-nez p1, :cond_1

    .line 472
    const-string/jumbo v1, "registerListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 476
    :cond_1
    const/4 v1, 0x0

    .line 477
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    const/4 v2, 0x0

    .line 479
    .local v2, "hasDelegate":Z
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 480
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cover/CoverListenerDelegate;

    .line 482
    .local v4, "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 483
    move-object v1, v4

    .line 484
    const/4 v2, 0x1

    .line 485
    goto :goto_1

    .line 487
    .end local v4    # "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_2
    goto :goto_0

    .line 489
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 490
    new-instance v3, Lcom/samsung/android/cover/CoverListenerDelegate;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5}, Lcom/samsung/android/cover/CoverListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V

    move-object v1, v3

    .line 494
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 495
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_5

    .line 496
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .local v4, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_5

    .line 499
    invoke-interface {v3, v1, v4}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 500
    if-nez v2, :cond_5

    .line 501
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    .end local v4    # "cm":Landroid/content/ComponentName;
    :cond_5
    goto :goto_2

    .line 505
    :catch_0
    move-exception v3

    .line 506
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in registerListener: "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 468
    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    .end local v2    # "hasDelegate":Z
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist registerNfcTouchListener(ILcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .line 801
    const-string v0, "CoverManager"

    const-string/jumbo v1, "registerNfcTouchListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 803
    const-string/jumbo v1, "registerNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void

    .line 807
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_6

    .line 811
    if-nez p2, :cond_1

    .line 812
    const-string/jumbo v1, "registerNfcTouchListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-void

    .line 816
    :cond_1
    const/4 v1, 0x0

    .line 817
    .local v1, "nfcTouchListener":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    const/4 v2, 0x0

    .line 819
    .local v2, "hasDelegate":Z
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 820
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 821
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;

    .line 822
    .local v4, "delegate":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 823
    move-object v1, v4

    .line 824
    const/4 v2, 0x1

    .line 825
    goto :goto_1

    .line 827
    .end local v4    # "delegate":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    :cond_2
    goto :goto_0

    .line 829
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 830
    new-instance v3, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p2, v4, v5}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;Landroid/content/Context;)V

    move-object v1, v3

    .line 834
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 835
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_5

    .line 836
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 837
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    .local v4, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_5

    .line 839
    invoke-interface {v3, p1, v1, v4}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 840
    if-nez v2, :cond_5

    .line 841
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    .end local v4    # "cm":Landroid/content/ComponentName;
    :cond_5
    goto :goto_2

    .line 845
    :catch_0
    move-exception v3

    .line 846
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in registerNfcTouchListener: "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 808
    .end local v1    # "nfcTouchListener":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    .end local v2    # "hasDelegate":Z
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 919
    const-string v0, "CoverManager"

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 921
    const-string/jumbo v1, "removeLedNotification : This device does not support NFC Led cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return-void

    .line 925
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    .line 929
    if-nez p1, :cond_1

    .line 930
    const-string/jumbo v1, "removeLedNotification : Null notification data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void

    .line 934
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 936
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_2

    .line 937
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverManager;->removeLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 938
    :catch_0
    move-exception v2

    .line 939
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "removeLedNotification in sendData to NFC : "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 940
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    nop

    .line 941
    :goto_1
    return-void

    .line 926
    .end local v1    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist sendDataToCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .line 696
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 698
    .local v0, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_0

    .line 699
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendData : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 702
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 703
    :goto_1
    return-void
.end method

.method public greylist sendDataToNfcLedCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .line 706
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 708
    .local v0, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_0

    .line 709
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToNfcLedCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendData to NFC : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 712
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 713
    :goto_1
    return-void
.end method

.method public greylist sendPowerKeyToCover()V
    .locals 4

    .line 716
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 718
    .local v0, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_0

    .line 719
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v1

    .line 721
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendPowerKeyToCover() : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 722
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 723
    :goto_1
    return-void
.end method

.method public greylist sendSystemEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 953
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v0

    const-string v1, "CoverManager"

    if-nez v0, :cond_0

    .line 954
    const-string/jumbo v0, "sendSystemEvent : This device does not support cover"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void

    .line 958
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v0

    if-nez v0, :cond_1

    .line 959
    const-string/jumbo v0, "sendSystemEvent : This device does not support NFC Led cover"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void

    .line 963
    :cond_1
    if-nez p1, :cond_2

    .line 964
    const-string/jumbo v0, "sendSystemEvent : Null system event data!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-void

    .line 968
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 970
    .local v0, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_3

    .line 971
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverManager;->sendSystemEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 972
    :catch_0
    move-exception v2

    .line 973
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "sendSystemEvent in sendData to NFC : "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 974
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    nop

    .line 975
    :goto_1
    return-void
.end method

.method public greylist setCoverModeToWindow(Landroid/view/Window;I)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "coverMode"    # I

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportSViewCover()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    const-string v0, "CoverManager"

    const-string/jumbo v1, "setSViewCoverModeToWindow : This device is not supported s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void

    .line 444
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 447
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 448
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_1

    .line 449
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 450
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 452
    :cond_1
    return-void

    .line 445
    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist unregisterCoverPowerKeyListener(Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    .line 1209
    const-string v0, "CoverManager"

    const-string/jumbo v1, "unregisterCoverPowerKeyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1211
    const-string/jumbo v1, "unregisterCoverPowerKeyListener : This device does not support cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return-void

    .line 1215
    :cond_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportFlipCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1217
    const-string/jumbo v1, "unregisterCoverPowerKeyListener : This device does not support Flip Cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void

    .line 1221
    :cond_1
    if-nez p1, :cond_2

    .line 1222
    const-string/jumbo v1, "unregisterCoverPowerKeyListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return-void

    .line 1226
    :cond_2
    const/4 v1, 0x0

    .line 1228
    .local v1, "powerKeyEventListener":Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager;->mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1229
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;

    .line 1231
    .local v3, "delegate":Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1232
    move-object v1, v3

    .line 1233
    goto :goto_1

    .line 1235
    .end local v3    # "delegate":Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
    :cond_3
    goto :goto_0

    .line 1237
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;>;"
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 1238
    return-void

    .line 1242
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 1243
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_6

    .line 1244
    invoke-interface {v2, v1}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1245
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_6
    goto :goto_2

    .line 1248
    :catch_0
    move-exception v2

    .line 1249
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in unregisterCoverPowerKeyListener: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1251
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public greylist unregisterLedSystemEventListener(Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    .line 1072
    const-string v0, "CoverManager"

    const-string/jumbo v1, "unregisterLedSystemEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1074
    const-string/jumbo v1, "unregisterLedSystemEventListener : This device does not support cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return-void

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1079
    const-string/jumbo v1, "unregisterLedSystemEventListener : This device does not support NFC Led cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void

    .line 1083
    :cond_1
    if-nez p1, :cond_2

    .line 1084
    const-string/jumbo v1, "unregisterLedSystemEventListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    return-void

    .line 1088
    :cond_2
    const/4 v1, 0x0

    .line 1090
    .local v1, "ledSystemEventListener":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1091
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/LedSystemEventListenerDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1092
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;

    .line 1093
    .local v3, "delegate":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1094
    move-object v1, v3

    .line 1095
    goto :goto_1

    .line 1097
    .end local v3    # "delegate":Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
    :cond_3
    goto :goto_0

    .line 1099
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/LedSystemEventListenerDelegate;>;"
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 1100
    return-void

    .line 1104
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 1105
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_6

    .line 1106
    invoke-interface {v2, v1}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1107
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_6
    goto :goto_2

    .line 1110
    :catch_0
    move-exception v2

    .line 1111
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in unregisterLedSystemEventListener: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public greylist unregisterListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 623
    const-string v0, "CoverManager"

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    const-string/jumbo v1, "unregisterListener : This device is not supported cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    .line 629
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_6

    .line 633
    if-nez p1, :cond_1

    .line 634
    const-string/jumbo v1, "unregisterListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 638
    :cond_1
    const/4 v1, 0x0

    .line 640
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 641
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverStateListenerDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 642
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cover/CoverStateListenerDelegate;

    .line 643
    .local v3, "delegate":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 644
    move-object v1, v3

    .line 645
    goto :goto_1

    .line 647
    .end local v3    # "delegate":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    :cond_2
    goto :goto_0

    .line 649
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverStateListenerDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 650
    return-void

    .line 654
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 655
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_5

    .line 656
    invoke-interface {v2, v1}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 657
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_5
    goto :goto_2

    .line 660
    :catch_0
    move-exception v2

    .line 661
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 630
    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverStateListenerDelegate;
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 574
    const-string v0, "CoverManager"

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    const-string/jumbo v1, "unregisterListener : This device is not supported cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 580
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_6

    .line 584
    if-nez p1, :cond_1

    .line 585
    const-string/jumbo v1, "unregisterListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 589
    :cond_1
    const/4 v1, 0x0

    .line 591
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 592
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 593
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cover/CoverListenerDelegate;

    .line 594
    .local v3, "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 595
    move-object v1, v3

    .line 596
    goto :goto_1

    .line 598
    .end local v3    # "delegate":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_2
    goto :goto_0

    .line 600
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverListenerDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 601
    return-void

    .line 605
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 606
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_5

    .line 607
    invoke-interface {v2, v1}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 608
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_5
    goto :goto_2

    .line 611
    :catch_0
    move-exception v2

    .line 612
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 581
    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverListenerDelegate;
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist unregisterNfcTouchListener(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .line 851
    const-string v0, "CoverManager"

    const-string/jumbo v1, "unregisterNfcTouchListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 853
    const-string/jumbo v1, "unregisterNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void

    .line 857
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_6

    .line 861
    if-nez p1, :cond_1

    .line 862
    const-string/jumbo v1, "unregisterNfcTouchListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void

    .line 866
    :cond_1
    const/4 v1, 0x0

    .line 868
    .local v1, "nfcTouchListener":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 869
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 870
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;

    .line 871
    .local v3, "delegate":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 872
    move-object v1, v3

    .line 873
    goto :goto_1

    .line 875
    .end local v3    # "delegate":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    :cond_2
    goto :goto_0

    .line 877
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 878
    return-void

    .line 882
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 883
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_5

    .line 884
    invoke-interface {v2, v1}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 885
    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_5
    goto :goto_2

    .line 888
    :catch_0
    move-exception v2

    .line 889
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 858
    .end local v1    # "nfcTouchListener":Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CoverManager only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
