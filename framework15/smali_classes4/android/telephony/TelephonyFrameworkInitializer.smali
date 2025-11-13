.class public Landroid/telephony/TelephonyFrameworkInitializer;
.super Ljava/lang/Object;
.source "TelephonyFrameworkInitializer.java"


# static fields
.field static final blacklist ENABLE_CHECKING_TELEPHONY_FEATURES:J = 0x13b44eb3L

.field private static volatile blacklist sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;
    .locals 1

    sget-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    return-object v0
.end method

.method private static blacklist hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->minimalTelephonyManagersConditionalOnFeatures()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ro.vendor.api_level"

    sget v2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x316a4

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    const-wide/32 v2, 0x13b44eb3

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1

    new-instance v0, Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$2(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 1

    const-string v0, "android.hardware.telephony.subscription"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/telephony/TelephonyFrameworkInitializer;->supportCmcCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/telephony/CarrierConfigManager;

    invoke-direct {v0, p0}, Landroid/telephony/CarrierConfigManager;-><init>(Landroid/content/Context;)V

    :goto_1
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$3(Landroid/content/Context;)Landroid/telephony/euicc/EuiccManager;
    .locals 1

    const-string v0, "android.hardware.telephony.euicc"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$4(Landroid/content/Context;)Landroid/telephony/euicc/EuiccCardManager;
    .locals 1

    const-string v0, "android.hardware.telephony.euicc"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/euicc/EuiccCardManager;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/EuiccCardManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$5(Landroid/content/Context;)Landroid/telephony/ims/ImsManager;
    .locals 1

    const-string v0, "android.hardware.telephony.ims"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/ims/ImsManager;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$6(Landroid/content/Context;)Landroid/telephony/SmsManager;
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$7(Landroid/content/Context;)Landroid/telephony/satellite/SatelliteManager;
    .locals 1

    const-string v0, "android.hardware.telephony.satellite"

    invoke-static {p0, v0}, Landroid/telephony/TelephonyFrameworkInitializer;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/satellite/SatelliteManager;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .locals 4

    const-string/jumbo v0, "registerServiceWrappers start"

    const-string v1, "TelephonyFrameworkInitializer"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v3, "phone"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/SubscriptionManager;

    new-instance v2, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string/jumbo v3, "telephony_subscription_service"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/CarrierConfigManager;

    new-instance v2, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "carrier_config"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/euicc/EuiccManager;

    new-instance v2, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda3;-><init>()V

    const-string v3, "euicc"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/euicc/EuiccCardManager;

    new-instance v2, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "euicc_card"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/ims/ImsManager;

    new-instance v2, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda5;-><init>()V

    const-string/jumbo v3, "telephony_ims"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/SmsManager;

    new-instance v2, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda6;-><init>()V

    const-string/jumbo v3, "sms"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/satellite/SatelliteManager;

    new-instance v2, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda7;-><init>()V

    const-string/jumbo v3, "satellite"

    invoke-static {v3, v0, v2}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-string/jumbo v0, "registerServiceWrappers finish"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist setTelephonyServiceManager(Landroid/os/TelephonyServiceManager;)V
    .locals 2

    sget-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "setTelephonyServiceManager called twice!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TelephonyServiceManager;

    sput-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    return-void
.end method

.method private static blacklist supportCmcCall(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.mdecservice"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v3

    return v2

    :cond_0
    return v2
.end method
