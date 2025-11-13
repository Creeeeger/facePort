.class public final Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCache:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$8;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/BaseWifiTracker$8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p2, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$8;

    new-instance p1, Lcom/samsung/android/wifitrackerlib/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/wifitrackerlib/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    return-void
.end method
