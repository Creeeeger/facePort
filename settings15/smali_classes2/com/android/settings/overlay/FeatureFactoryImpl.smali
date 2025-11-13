.class public final Lcom/android/settings/overlay/FeatureFactoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static _appContext:Landroid/content/Context;

.field public static _factory:Lcom/android/settings/overlay/FeatureFactoryImpl;


# instance fields
.field public final a11ySettingsMetricsFeatureProvider$delegate:Lkotlin/Lazy;

.field public final accessibilityMetricsFeatureProvider$delegate:Lkotlin/Lazy;

.field public final accessibilitySearchFeatureProvider$delegate:Lkotlin/Lazy;

.field public final accountFeatureProvider$delegate:Lkotlin/Lazy;

.field public final advancedVpnFeatureProvider$delegate:Lkotlin/Lazy;

.field public final applicationFeatureProvider$delegate:Lkotlin/Lazy;

.field public final backupFeatureProvider$delegate:Lkotlin/Lazy;

.field public final batterySettingsFeatureProvider$delegate:Lkotlin/Lazy;

.field public final batteryStatusFeatureProvider$delegate:Lkotlin/Lazy;

.field public final biometricsRepositoryProvider$delegate:Lkotlin/Lazy;

.field public final bluetoothFeatureProvider$delegate:Lkotlin/Lazy;

.field public final contextualCardFeatureProvider$delegate:Lkotlin/Lazy;

.field public final dashboardFeatureProvider$delegate:Lkotlin/Lazy;

.field public final dataUsageFeatureProvider$delegate:Lkotlin/Lazy;

.field public final displayFeatureProvider$delegate:Lkotlin/Lazy;

.field public final dockUpdaterFeatureProvider$delegate:Lkotlin/Lazy;

.field public final enterprisePrivacyFeatureProvider$delegate:Lkotlin/Lazy;

.field public final faceFeatureProvider$delegate:Lkotlin/Lazy;

.field public final fastPairFeatureProvider$delegate:Lkotlin/Lazy;

.field public final fingerprintFeatureProvider$delegate:Lkotlin/Lazy;

.field public final keyboardSettingsFeatureProvider$delegate:Lkotlin/Lazy;

.field public final localeFeatureProvider$delegate:Lkotlin/Lazy;

.field public final metricsFeatureProvider$delegate:Lkotlin/Lazy;

.field public final panelFeatureProvider$delegate:Lkotlin/Lazy;

.field public final powerUsageFeatureProvider$delegate:Lkotlin/Lazy;

.field public final privateSpaceLoginFeatureProvider$delegate:Lkotlin/Lazy;

.field public final searchFeatureProvider$delegate:Lkotlin/Lazy;

.field public final secDynamicActionBarFeatureProvider$delegate:Lkotlin/Lazy;

.field public final secDynamicMenuFeatureProvider$delegate:Lkotlin/Lazy;

.field public final secSimFeatureProvider$delegate:Lkotlin/Lazy;

.field public final securityFeatureProvider$delegate:Lkotlin/Lazy;

.field public final securitySettingsFeatureProvider$delegate:Lkotlin/Lazy;

.field public final slicesFeatureProvider$delegate:Lkotlin/Lazy;

.field public final stylusFeatureProvider$delegate:Lkotlin/Lazy;

.field public final suggestionFeatureProvider$delegate:Lkotlin/Lazy;

.field public final syncAcrossDevicesFeatureProvider$delegate:Lkotlin/Lazy;

.field public final userFeatureProvider$delegate:Lkotlin/Lazy;

.field public final wifiFeatureProvider$delegate:Lkotlin/Lazy;

.field public final wifiTrackerLibProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$contextualCardFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$contextualCardFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->contextualCardFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$metricsFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$metricsFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->metricsFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$powerUsageFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$powerUsageFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->powerUsageFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$batteryStatusFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$batteryStatusFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->batteryStatusFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$batterySettingsFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$batterySettingsFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->batterySettingsFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$dashboardFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$dashboardFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->dashboardFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$dockUpdaterFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$dockUpdaterFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->dockUpdaterFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$applicationFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$applicationFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->applicationFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$localeFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$localeFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->localeFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$enterprisePrivacyFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$enterprisePrivacyFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->enterprisePrivacyFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$searchFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$searchFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->searchFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$securityFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$securityFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->securityFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$suggestionFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$suggestionFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->suggestionFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$userFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$userFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->userFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$slicesFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$slicesFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->slicesFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$accountFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$accountFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->accountFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$panelFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$panelFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->panelFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$bluetoothFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$bluetoothFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->bluetoothFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$faceFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$faceFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->faceFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$fingerprintFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$fingerprintFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->fingerprintFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$biometricsRepositoryProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$biometricsRepositoryProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->biometricsRepositoryProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$wifiTrackerLibProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$wifiTrackerLibProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->wifiTrackerLibProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$securitySettingsFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$securitySettingsFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->securitySettingsFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$accessibilitySearchFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$accessibilitySearchFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->accessibilitySearchFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$accessibilityMetricsFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$accessibilityMetricsFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->accessibilityMetricsFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$advancedVpnFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$advancedVpnFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->advancedVpnFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$wifiFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$wifiFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->wifiFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$keyboardSettingsFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$keyboardSettingsFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->keyboardSettingsFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$stylusFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$stylusFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->stylusFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$fastPairFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$fastPairFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->fastPairFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$privateSpaceLoginFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$privateSpaceLoginFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->privateSpaceLoginFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$displayFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$displayFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->displayFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$syncAcrossDevicesFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$syncAcrossDevicesFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->syncAcrossDevicesFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$dataUsageFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$dataUsageFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->dataUsageFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$secDynamicActionBarFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$secDynamicActionBarFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->secDynamicActionBarFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$secDynamicMenuFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$secDynamicMenuFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->secDynamicMenuFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$secSimFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$secSimFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->secSimFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$backupFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$backupFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->backupFeatureProvider$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$gtsFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$gtsFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$a11ySettingsMetricsFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$a11ySettingsMetricsFeatureProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->a11ySettingsMetricsFeatureProvider$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->a11ySettingsMetricsFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method public final getApplicationFeatureProvider()Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->applicationFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    return-object p0
.end method

.method public final getBatterySettingsFeatureProvider()Lcom/android/settings/fuelgauge/BatterySettingsFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->batterySettingsFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/BatterySettingsFeatureProviderImpl;

    return-object p0
.end method

.method public final getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->bluetoothFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;

    return-object p0
.end method

.method public final getDashboardFeatureProvider()Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->dashboardFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    return-object p0
.end method

.method public final getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->dataUsageFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    return-object p0
.end method

.method public final getEnterprisePrivacyFeatureProvider()Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->enterprisePrivacyFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    return-object p0
.end method

.method public final getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->faceFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    return-object p0
.end method

.method public final getFingerprintFeatureProvider()Lcom/android/settings/biometrics/fingerprint/FingerprintFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->fingerprintFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint/FingerprintFeatureProviderImpl;

    return-object p0
.end method

.method public final getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->metricsFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    return-object p0
.end method

.method public final getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->powerUsageFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    return-object p0
.end method

.method public final getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->searchFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/search/SearchFeatureProviderImpl;

    return-object p0
.end method

.method public final getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->secSimFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    return-object p0
.end method

.method public final getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->securityFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;

    return-object p0
.end method

.method public final getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->slicesFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;

    return-object p0
.end method

.method public final getSuggestionFeatureProvider()Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->suggestionFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;

    return-object p0
.end method

.method public final getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->wifiFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    return-object p0
.end method

.method public final getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->wifiTrackerLibProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;

    return-object p0
.end method
