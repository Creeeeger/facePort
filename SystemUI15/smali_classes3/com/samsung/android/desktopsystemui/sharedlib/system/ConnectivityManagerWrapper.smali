.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public setAirplaneMode(Z)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void
.end method
