.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public isDualAPConfiguration()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWifiSharingLiteSupported()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result p0

    return p0
.end method

.method public isWifiSharingSupported()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result p0

    return p0
.end method
