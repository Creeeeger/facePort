.class public final Lcom/android/wifitrackerlib/WifiTrackerInjector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mInstantHotspotEnableProperty:I

.field public final mIsDemoMode:Z

.field public final mNoAttributionAnnotationPackages:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;

.field public mVerboseLoggingDisabledOverride:Z

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mInstantHotspotEnableProperty:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mVerboseLoggingDisabledOverride:Z

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mIsDemoMode:Z

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mUserManager:Landroid/os/UserManager;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mNoAttributionAnnotationPackages:Ljava/util/Set;

    const v2, 0x7f13153d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mNoAttributionAnnotationPackages:Ljava/util/Set;

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "vendor.wifiap.ih.enable"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mInstantHotspotEnableProperty:I

    return-void
.end method


# virtual methods
.method public final isSharedConnectivityFeatureEnabled()Z
    .locals 4

    const-string/jumbo v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-boolean v2, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iget p0, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mInstantHotspotEnableProperty:I

    if-ltz p0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    :cond_1
    const-string p0, "Instant Hotspot isDeviceConfigEnabled "

    const-string v1, " rollout:"

    invoke-static {p0, v1, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v1, "wifi"

    const-string/jumbo v3, "shared_connectivity_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WifiTrackerInjector"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method
