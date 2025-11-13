.class public final Lcom/android/systemui/CscRune;
.super Lcom/android/systemui/Rune;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static KEYGUARD_DCM_LIVE_UX:Z

.field public static LOCKUI_BOTTOM_USIM_TEXT:Z

.field public static LOCKUI_HELP_TEXT_FOR_CHN:Z

.field public static LOCKUI_LGU_USIM_TEXT:Z

.field public static SECURITY_DIRECT_CALL_TO_ECC:Z

.field public static SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

.field public static SECURITY_EMERGENCY_BUTTON_KOR:Z

.field public static SECURITY_KOR_USIM_TEXT:Z

.field public static SECURITY_KTT_USIM_TEXT:Z

.field public static SECURITY_LGU_USIM_TEXT:Z

.field public static SECURITY_SIM_PERM_DISABLED:Z

.field public static SECURITY_SKT_USIM_TEXT:Z

.field public static SECURITY_USE_CDMA_CARD_TEXT:Z

.field public static SECURITY_VZW_INSTRUCTION:Z

.field public static SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

.field public static VALUE_CONFIG_CARRIER_EMERGENCY_POLICY:Ljava/lang/String;

.field public static VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

.field public static VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigCarrierTextPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigCarrierSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigEmergencyCallPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_EMERGENCY_POLICY:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v1, "UseDCMSimLockText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    invoke-static {}, Lcom/android/systemui/CscRune;->isDisplayUsimText()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_EMERGENCY_BUTTON_KOR:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_EMERGENCY_POLICY:Ljava/lang/String;

    const-string v1, "DisableEmergencyCallWhenOffline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_EMERGENCY_POLICY:Ljava/lang/String;

    const-string v1, "DirectCall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    invoke-static {}, Lcom/android/systemui/CscRune;->isDisplayUsimText()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v1, "UseSKTSimText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_SKT_USIM_TEXT:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v1, "UseKTTSimText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_KTT_USIM_TEXT:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v1, "UseLGTSimText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_LGU_USIM_TEXT:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v2, "UseCdmaCardText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string v2, "SupportSimPermanentDisable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string v2, "FactoryResetProtectionWarning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_VZW_INSTRUCTION:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_LGU_USIM_TEXT:Z

    invoke-static {}, Lcom/android/systemui/CscRune;->isDisplayUsimText()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string v1, "UseSamsungAccountAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_HELP_TEXT_FOR_CHN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    return-void
.end method

.method public static isDisplayUsimText()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/CscRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    const-string v1, "DisplayUsimText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
