.class public final Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/Features;


# static fields
.field public static final VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

.field public final mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.debug.subdisplay_test_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public final isEnabled(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "SF_EFFECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_BLUR:Z

    goto/16 :goto_2

    :cond_0
    const-string v0, "CAPTURED_BLUR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_CAPTURED_BLUR:Z

    goto/16 :goto_2

    :cond_1
    const-string v0, "NAV_BAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto/16 :goto_2

    :cond_2
    const-string v0, "SAFETY_CARE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_2

    :cond_3
    const-string v0, "SCOVER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isCoverSupported()Z

    move-result v0

    goto/16 :goto_2

    :cond_4
    const-string v0, "DATA_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;->isDataModeSupportedSalesCode()Z

    move-result v0

    goto/16 :goto_2

    :cond_5
    const-string v0, "DEMO_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isShopDemo()Z

    move-result v0

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    const-string/jumbo v0, "ril.product_code"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x38

    if-eq v4, v5, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x39

    if-ne v0, v3, :cond_14

    goto :goto_0

    :cond_7
    const-string v0, "LOCK_DOWN_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_0
    move v0, v2

    goto/16 :goto_2

    :cond_9
    const-string v0, "FORCE_RESTART_MESSAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;->isForceRestartMessageSupportedSalesCode()Z

    move-result v0

    goto/16 :goto_2

    :cond_a
    const-string v0, "FINGERPRINT_IN_DISPLAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_14

    goto :goto_0

    :cond_b
    const-string v0, "SUPPORT_SIDE_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FUNCTION_KEY_MENU"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_2

    :cond_c
    const-string v0, "POWER_OFF_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;->isBrazilianCountryISO()Z

    move-result v0

    goto :goto_2

    :cond_d
    const-string v0, "FRONT_LARGE_COVER_DISPLAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "LARGESCREEN"

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    :cond_e
    const-string v0, "FRONT_COVER_DISPLAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_f
    const-string v0, "DESKTOP_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_0

    :cond_10
    const-string v0, "KNOX_SDK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const-string v0, "KNOX_CONTAINER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const-string v0, "KNOX_DEVICE_MANAGER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const-string v0, "RESERVE_BATTERY_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_14
    :goto_1
    move v0, v1

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GlobalActionFeatures"

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
