.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/DevicePolicyManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/DevicePolicyManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/DevicePolicyManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/DevicePolicyManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/DevicePolicyManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/DevicePolicyManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/DevicePolicyManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/DevicePolicyManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/DevicePolicyManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public isWifiBlockedByEASPolicy()Z
    .locals 3

    const-string p0, "device_policy"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowWifi(Landroid/content/ComponentName;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
