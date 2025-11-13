.class public Lcom/samsung/android/globalactions/util/SystemConditionChecker;
.super Ljava/lang/Object;
.source "SystemConditionChecker.java"

# interfaces
.implements Lcom/samsung/android/globalactions/util/ConditionChecker;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SystemConditionChecker"


# instance fields
.field private final blacklist mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final blacklist mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0
    .param p1, "utilFactory"    # Lcom/samsung/android/globalactions/util/UtilFactory;
    .param p2, "features"    # Lcom/samsung/android/globalactions/presentation/features/Features;
    .param p3, "logWrapper"    # Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 18
    iput-object p2, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 19
    iput-object p3, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 20
    return-void
.end method

.method private blacklist isEnabled(Lcom/samsung/android/globalactions/util/SystemConditions;)Z
    .locals 2
    .param p1, "facadeEnum"    # Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 24
    sget-object v0, Lcom/samsung/android/globalactions/util/SystemConditionChecker$1;->$SwitchMap$com$samsung$android$globalactions$util$SystemConditions:[I

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/util/SystemConditions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    return v0

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isRepairMode()Z

    move-result v0

    return v0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/ActivityManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/ActivityManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ActivityManagerWrapper;->isInLockTaskMode()Z

    move-result v0

    return v0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isBikeMode()Z

    move-result v0

    return v0

    .line 118
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    return v0

    .line 116
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->isDesktopModeDualView()Z

    move-result v0

    return v0

    .line 114
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->isDesktopModeStandalone()Z

    move-result v0

    return v0

    .line 112
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;->isDOProvisioningMode()Z

    move-result v0

    return v0

    .line 110
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;->isValidVersion()Z

    move-result v0

    return v0

    .line 108
    :pswitch_8
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 106
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isPowerOffUnlockNotRequired()Z

    move-result v0

    return v0

    .line 104
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isPowerOffUnlockOnlyLockscreenRequired()Z

    move-result v0

    return v0

    .line 102
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isPowerOffUnlockAlwaysRequired()Z

    move-result v0

    return v0

    .line 100
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SemReserveBatteryWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SemReserveBatteryWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SemReserveBatteryWrapper;->isReserveBatteryMode()Z

    move-result v0

    return v0

    .line 98
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isEmergencyModeUserAgreement()Z

    move-result v0

    return v0

    .line 96
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isPasswordChangeEnforced()Z

    move-result v0

    return v0

    .line 94
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "CAPTURED_BLUR"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 92
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "SF_EFFECT"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 90
    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->hasTelephonyRadio()Z

    move-result v0

    return v0

    .line 88
    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "SAFETY_CARE"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 86
    :pswitch_13
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->isFOTAAvailableForGlobalActions()Z

    move-result v0

    return v0

    .line 84
    :pswitch_14
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isShopDemo()Z

    move-result v0

    return v0

    .line 82
    :pswitch_15
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isUltraPowerSavingMode()Z

    move-result v0

    return v0

    .line 80
    :pswitch_16
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ThemeChecker;->isWhiteTheme()Z

    move-result v0

    return v0

    .line 78
    :pswitch_17
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;->isVoiceAssistantMode()Z

    move-result v0

    return v0

    .line 76
    :pswitch_18
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->isStrongAuthForLockDown()Z

    move-result v0

    return v0

    .line 74
    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->isCurrentUserSecure()Z

    move-result v0

    return v0

    .line 72
    :pswitch_1a
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isDeviceOwner()Z

    move-result v0

    return v0

    .line 70
    :pswitch_1b
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isLockDownInPowerMenu()Z

    move-result v0

    return v0

    .line 68
    :pswitch_1c
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/UserManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/UserManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/UserManagerWrapper;->isAllowedSafeBoot()Z

    move-result v0

    return v0

    .line 66
    :pswitch_1d
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->hasAnySim()Z

    move-result v0

    return v0

    .line 64
    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/TSafeLockUtil;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/TSafeLockUtil;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/TSafeLockUtil;->isTSafeLock()Z

    move-result v0

    return v0

    .line 62
    :pswitch_1f
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;->isTabletDevice()Z

    move-result v0

    return v0

    .line 60
    :pswitch_20
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;->isDomesticOtaMode()Z

    move-result v0

    return v0

    .line 58
    :pswitch_21
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isLockNetworkAndSecurityOn()Z

    move-result v0

    return v0

    .line 56
    :pswitch_22
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isAirplaneMode()Z

    move-result v0

    return v0

    .line 54
    :pswitch_23
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isMissingPhoneLock()Z

    move-result v0

    return v0

    .line 52
    :pswitch_24
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isBugReportMode()Z

    move-result v0

    return v0

    .line 50
    :pswitch_25
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->isModifying()Z

    move-result v0

    return v0

    .line 48
    :pswitch_26
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->isEmergencyMode()Z

    move-result v0

    return v0

    .line 46
    :pswitch_27
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isMinimalBatteryUse()Z

    move-result v0

    return v0

    .line 44
    :pswitch_28
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->canSetMode()Z

    move-result v0

    return v0

    .line 42
    :pswitch_29
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;->isATTFOTAPackageAvailable()Z

    move-result v0

    return v0

    .line 40
    :pswitch_2a
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;->isKidsHomeMode()Z

    move-result v0

    return v0

    .line 38
    :pswitch_2b
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->isRMMLocked()Z

    move-result v0

    return v0

    .line 36
    :pswitch_2c
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->isCarrierLockPlusEnabled()Z

    move-result v0

    return v0

    .line 34
    :pswitch_2d
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->isFMMLocked()Z

    move-result v0

    return v0

    .line 32
    :pswitch_2e
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->isSecureKeyguard()Z

    move-result v0

    return v0

    .line 30
    :pswitch_2f
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;->isLogoutEnabled()Z

    move-result v0

    return v0

    .line 28
    :pswitch_30
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;->isEncryptionStatusActive()Z

    move-result v0

    return v0

    .line 26
    :pswitch_31
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->isDataEnabled()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist isEnabled(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "name"    # Ljava/lang/Object;

    .line 133
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 135
    .local v0, "time":Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/globalactions/util/SystemConditions;->valueOf(Ljava/lang/String;)Lcom/samsung/android/globalactions/util/SystemConditions;

    move-result-object v1

    .line 136
    .local v1, "condition":Lcom/samsung/android/globalactions/util/SystemConditions;
    invoke-direct {p0, v1}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->isEnabled(Lcom/samsung/android/globalactions/util/SystemConditions;)Z

    move-result v2

    .line 138
    .local v2, "ret":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 140
    .local v3, "current":Ljava/lang/Long;
    iget-object v4, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v5, "SystemConditionChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/util/SystemConditions;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return v2

    .line 143
    .end local v0    # "time":Ljava/lang/Long;
    .end local v1    # "condition":Lcom/samsung/android/globalactions/util/SystemConditions;
    .end local v2    # "ret":Z
    .end local v3    # "current":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method
