.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mLocationManager:Landroid/location/LocationManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public setLocationEnabledForUser(ZI)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p2}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method
