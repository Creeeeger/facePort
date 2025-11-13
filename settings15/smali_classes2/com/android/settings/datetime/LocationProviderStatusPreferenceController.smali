.class public Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/app/time/TimeManager$TimeZoneDetectorListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

.field private final mTimeManager:Landroid/app/time/TimeManager;


# direct methods
.method public static synthetic $r8$lambda$0y0SC4TVxO3JW_Stq0CEqcgrNKs(Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const-class p2, Landroid/app/time/TimeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/time/TimeManager;

    iput-object p2, p0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Landroid/app/time/TimeManager;->addTimeZoneDetectorListener(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    return-void
.end method

.method private getLtzpStatusToReport()Landroid/service/timezone/TimeZoneProviderStatus;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {p0}, Landroid/app/time/TimeManager;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getDetectorStatus()Landroid/app/time/TimeZoneDetectorStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneDetectorStatus;->getLocationTimeZoneAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->getPrimaryProviderReportedStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->getSecondaryProviderReportedStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {v0, p0}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->pickWorstLtzpStatus(Landroid/service/timezone/TimeZoneProviderStatus;Landroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static hasLocationTimeZoneNoTelephonyFallback(Landroid/app/time/TimeZoneDetectorStatus;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/time/TimeZoneDetectorStatus;->getLocationTimeZoneAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneDetectorStatus;->getTelephonyTimeZoneAlgorithmStatus()Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->getAlgorithmStatus()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->getStatus()I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->launchLocationSettings()V

    return-void
.end method

.method private launchLocationSettings()V
    .locals 3

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private static pickWorstLtzpStatus(Landroid/service/timezone/TimeZoneProviderStatus;Landroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderStatus;
    .locals 2

    invoke-static {p0}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->scoreLtzpStatus(Landroid/service/timezone/TimeZoneProviderStatus;)I

    move-result v0

    invoke-static {p1}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->scoreLtzpStatus(Landroid/service/timezone/TimeZoneProviderStatus;)I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static scoreLtzpStatus(Landroid/service/timezone/TimeZoneProviderStatus;)I
    .locals 2

    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderStatus;->getLocationDetectionDependencyStatus()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderStatus;->getLocationDetectionDependencyStatus()I

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/BannerMessagePreference;

    iput-object p1, p0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v0, 0x7f141521

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonText$1(I)V

    new-instance v0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {v0}, Landroid/app/time/TimeManager;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getDetectorStatus()Landroid/app/time/TimeZoneDetectorStatus;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilities;->isUseLocationEnabled()Z

    move-result v0

    const v2, 0x7f14151c

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->hasLocationTimeZoneNoTelephonyFallback(Landroid/app/time/TimeZoneDetectorStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->getLtzpStatusToReport()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderStatus;->getLocationDetectionDependencyStatus()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14151d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14151b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14151e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
