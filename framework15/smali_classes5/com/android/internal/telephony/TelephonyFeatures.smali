.class public Lcom/android/internal/telephony/TelephonyFeatures;
.super Ljava/lang/Object;
.source "TelephonyFeatures.java"


# static fields
.field public static final blacklist DEVICE_TYPE:Ljava/lang/String;

.field public static final blacklist DUALSIM_WITH_ONE_SLOT_NR:I = 0x1

.field public static final blacklist DUALSIM_WITH_TWO_SLOT_NR:I = 0x2

.field public static final blacklist HARDWARE_TYPE:Ljava/lang/String;

.field public static final blacklist IS_EXYNOS:Z

.field public static final blacklist IS_FACTORY_BIN:Z

.field public static final blacklist IS_MTK:Z

.field public static final blacklist IS_PHONE:Z

.field public static final blacklist IS_QCOM:Z

.field public static final blacklist IS_TABLET:Z

.field public static final blacklist IS_WATCH:Z

.field public static final blacklist IS_WIFI_ONLY:Z

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyFeatures"

.field public static final blacklist NO_DUALSIM_NR_MODEL:I = 0x0

.field public static final blacklist NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING:I = 0x5

.field public static final blacklist NTC_FEATURE_BLOCK_NETMODE_CHANGE_WITH_CARRIER_CONFIG_CHANGED:I = 0xe

.field public static final blacklist NTC_FEATURE_CHECK_OPPOSITE_SLOT_NETMODE_BEFORE_CHANGE:I = 0xf

.field public static final blacklist NTC_FEATURE_CHECK_VOLTE_SUBSCRIBER_FOR_CALL_WAITING:I = 0x1b

.field public static final blacklist NTC_FEATURE_CSC_SPRINT_CHAMELEON:I = 0x2

.field public static final blacklist NTC_FEATURE_DISPLAY_RESCAN_DIALOG:I = 0xc

.field public static final blacklist NTC_FEATURE_DISPLAY_TOAST_AFTER_RTT_E911_FAILED:I = 0xb

.field public static final blacklist NTC_FEATURE_ERI_ON_AP:I = 0x4

.field public static final blacklist NTC_FEATURE_ERI_ON_CP:I = 0x3

.field public static final blacklist NTC_FEATURE_FAKE_RADIO_ON_USING_EXTENDED_PARAMETER:I = 0x17

.field public static final blacklist NTC_FEATURE_FAKE_RADIO_ON_USING_PROPERTY:I = 0x16

.field public static final blacklist NTC_FEATURE_FORCELY_SET_2G_ENABLED:I = 0x14

.field public static final blacklist NTC_FEATURE_FORCELY_SET_3G_4G_ENABLED:I = 0x15

.field public static final blacklist NTC_FEATURE_IS_3G_NOT_ALLOWED_OPERATOR:I = 0x10

.field public static final blacklist NTC_FEATURE_MAX:I = 0x1d

.field public static final blacklist NTC_FEATURE_NEED_FORCE_NETWORK_MODE:I = 0x18

.field public static final blacklist NTC_FEATURE_RESUME_HELD_CALL_AFTER_MO_FAIL:I = 0x12

.field public static final blacklist NTC_FEATURE_RESUME_HELD_CALL_IF_BG_ONLY:I = 0x13

.field public static final blacklist NTC_FEATURE_RETRY_EMERGENCY_SEARCH_IN_ALERTING:I = 0x11

.field public static final blacklist NTC_FEATURE_SET_CLIR_TO_BOTH_SIDES:I = 0xd

.field public static final blacklist NTC_FEATURE_SHOW_VOICE_AS_DATA_NETWORK_TYPE:I = 0x19

.field public static final blacklist NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING:I = 0x1

.field public static final blacklist NTC_FEATURE_SUPPORT_BIGDATA_TIANTONG:I = 0x1c

.field public static final blacklist NTC_FEATURE_SUPPORT_IMSCALL_ECBM:I = 0x8

.field public static final blacklist NTC_FEATURE_SUPPORT_IMSCALL_ONLY:I = 0x7

.field public static final blacklist NTC_FEATURE_SUPPORT_WAKELOCK_LOGGING:I = 0x1a

.field public static final blacklist NTC_FEATURE_UPDATE_ADDRESS_FOR_CALL_CONTROL:I = 0xa

.field public static final blacklist NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS:I = 0x6

.field public static final blacklist NTC_FEATURE_USE_SECOND_TTY_MODE_IN_DUAL_SIM:I = 0x9

.field public static final blacklist PRIMARY_PHONE_ID:I = 0x0

.field public static final blacklist RIL_FEATURES:Ljava/lang/String; = "onebinary satellite_carrier"

.field private static final blacklist SALES_CODE:Ljava/lang/String;

.field public static final blacklist SECONDARY_PHONE_ID:I = 0x1

.field public static final blacklist SHIP_BUILD:Z

.field private static blacklist sSimHotswapSupported:Z

.field private static blacklist sSimbasedChangeType:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->DEVICE_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->DEVICE_TYPE:Ljava/lang/String;

    const-string/jumbo v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_TABLET:Z

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->DEVICE_TYPE:Ljava/lang/String;

    const-string/jumbo v3, "watch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_TABLET:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    const-string/jumbo v0, "ro.boot.hardware"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->HARDWARE_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->HARDWARE_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->HARDWARE_TYPE:Ljava/lang/String;

    const-string v2, "exynos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->HARDWARE_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "s5e"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v3, v1

    :cond_2
    sput-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->IS_EXYNOS:Z

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->HARDWARE_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "mt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_MTK:Z

    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->carrier()Ljava/util/Optional;

    move-result-object v0

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "wifi-only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WIFI_ONLY:Z

    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "factory"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_FACTORY_BIN:Z

    sput-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->sSimHotswapSupported:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist InitializeSimbasedType()V
    .locals 6

    const-string/jumbo v0, "ro.simbased.changetype"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    new-array v2, v3, [Ljava/lang/String;

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    aput-object v1, v2, v5

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    const-string v2, "DISABLED"

    aput-object v2, v1, v4

    :goto_1
    return-void
.end method

.method public static blacklist dump(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- TelephonyFeatures.dump("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getMainOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSubOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getOperatorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getCountryName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHIP_BUILD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SALES_CODE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEVICE_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (IS_PHONE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IS_TABLET: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_TABLET:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IS_WATCH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HARDWARE_TYPE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->HARDWARE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (IS_QCOM: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", IS_EXYNOS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_EXYNOS:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", IS_MTK: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_MTK:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IS_WIFI_ONLY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WIFI_ONLY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IS_FACTORY_BIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_FACTORY_BIN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getNetworkCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->featureToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist featureToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown NTC_FEATURE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "NTC_FEATURE_SUPPORT_BIGDATA_TIANTONG"

    return-object v0

    :pswitch_1
    const-string v0, "NTC_FEATURE_CHECK_VOLTE_SUBSCRIBER_FOR_CALL_WAITING"

    return-object v0

    :pswitch_2
    const-string v0, "NTC_FEATURE_SUPPORT_WAKELOCK_LOGGING"

    return-object v0

    :pswitch_3
    const-string v0, "NTC_FEATURE_SHOW_VOICE_AS_DATA_NETWORK_TYPE"

    return-object v0

    :pswitch_4
    const-string v0, "NTC_FEATURE_NEED_FORCE_NETWORK_MODE"

    return-object v0

    :pswitch_5
    const-string v0, "NTC_FEATURE_FAKE_RADIO_ON_USING_EXTENDED_PARAMETER"

    return-object v0

    :pswitch_6
    const-string v0, "NTC_FEATURE_FAKE_RADIO_ON_USING_PROPERTY"

    return-object v0

    :pswitch_7
    const-string v0, "NTC_FEATURE_FORCELY_SET_3G_4G_ENABLED"

    return-object v0

    :pswitch_8
    const-string v0, "NTC_FEATURE_FORCELY_SET_2G_ENABLED"

    return-object v0

    :pswitch_9
    const-string v0, "NTC_FEATURE_RESUME_HELD_CALL_IF_BG_ONLY"

    return-object v0

    :pswitch_a
    const-string v0, "NTC_FEATURE_RESUME_HELD_CALL_AFTER_MO_FAIL"

    return-object v0

    :pswitch_b
    const-string v0, "NTC_FEATURE_RETRY_EMERGENCY_SEARCH_IN_ALERTING"

    return-object v0

    :pswitch_c
    const-string v0, "NTC_FEATURE_IS_3G_NOT_ALLOWED_OPERATOR"

    return-object v0

    :pswitch_d
    const-string v0, "NTC_FEATURE_CHECK_OPPOSITE_SLOT_NETMODE_BEFORE_CHANGE"

    return-object v0

    :pswitch_e
    const-string v0, "NTC_FEATURE_BLOCK_NETMODE_CHANGE_WITH_CARRIER_CONFIG_CHANGED"

    return-object v0

    :pswitch_f
    const-string v0, "NTC_FEATURE_SET_CLIR_TO_BOTH_SIDES"

    return-object v0

    :pswitch_10
    const-string v0, "NTC_FEATURE_DISPLAY_RESCAN_DIALOG"

    return-object v0

    :pswitch_11
    const-string v0, "NTC_FEATURE_DISPLAY_TOAST_AFTER_RTT_E911_FAILED"

    return-object v0

    :pswitch_12
    const-string v0, "NTC_FEATURE_UPDATE_ADDRESS_FOR_CALL_CONTROL"

    return-object v0

    :pswitch_13
    const-string v0, "NTC_FEATURE_USE_SECOND_TTY_MODE_IN_DUAL_SIM"

    return-object v0

    :pswitch_14
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ECBM"

    return-object v0

    :pswitch_15
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ONLY"

    return-object v0

    :pswitch_16
    const-string v0, "NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS"

    return-object v0

    :pswitch_17
    const-string v0, "NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING"

    return-object v0

    :pswitch_18
    const-string v0, "NTC_FEATURE_ERI_ON_AP"

    return-object v0

    :pswitch_19
    const-string v0, "NTC_FEATURE_ERI_ON_CP"

    return-object v0

    :pswitch_1a
    const-string v0, "NTC_FEATURE_CSC_SPRINT_CHAMELEON"

    return-object v0

    :pswitch_1b
    const-string v0, "NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static blacklist getCarrierGroup(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    const-string v3, "CarrierFeature_Common_CarrierGroup"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCountryName(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    const-string v3, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getMainOperatorName(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    const-string v3, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getMainOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getNetworkCode(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "CarrierFeature_Common_CarrierGroup"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNotAllowedNetworkMode(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    const-string v3, "CarrierFeature_RIL_NotAllowedNetworkMode"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNtcFeature(II)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(III)Z

    move-result v0

    return v0
.end method

.method public static blacklist getNtcFeature(III)Z
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "0"

    const-string v4, "TPE"

    const-string v5, "HKG"

    const-string v6, "DSG"

    const-string v7, "CAN"

    const-string v8, "USA"

    const-string v9, "KOR"

    const-string v10, "BMC"

    const-string v11, "CHN"

    const-string v12, "XAA"

    const-string v14, "ATT"

    const-string v15, "TMO"

    const-string v13, "USC"

    move-object/from16 v16, v7

    const-string v7, "VZW"

    move-object/from16 v17, v8

    const-string v8, "SPR"

    move-object/from16 v18, v3

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown NTC feature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v4, "tiantong"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->hasRilFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_1
    const-string v4, "26201"

    const-string v5, "50501"

    const-string v6, "23001"

    const-string v7, "24001"

    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_2
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-nez v4, :cond_8

    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WIFI_ONLY:Z

    if-nez v4, :cond_8

    return v3

    :pswitch_3
    filled-new-array {v11, v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_4
    const/16 v4, 0x4a3

    if-eq v2, v4, :cond_0

    const/16 v4, 0x6f3

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    const/16 v4, 0x797

    if-eq v2, v4, :cond_0

    const/16 v4, 0x599

    if-ne v2, v4, :cond_8

    :cond_0
    return v3

    :pswitch_5
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_6
    filled-new-array {v15, v14, v12, v10, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_7
    sget v4, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v5, 0x22

    if-ge v4, v5, :cond_8

    const-string v4, "MTR"

    const-string v5, "ASR"

    filled-new-array {v15, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_8
    sget v4, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v5, 0x21

    if-ge v4, v5, :cond_8

    const-string v4, "AIO"

    filled-new-array {v14, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_9
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "TGY"

    const-string v5, "KDI"

    filled-new-array {v7, v8, v13, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "COD"

    const-string v5, "COB"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_1
    return v3

    :pswitch_a
    return v3

    :pswitch_b
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    return v3

    :pswitch_c
    const-string v4, "XXV"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "XEV"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "45204"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNotAllowedNetworkMode(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    return v3

    :pswitch_d
    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->support_dual_rat()Ljava/util/Optional;

    move-result-object v4

    move-object/from16 v6, v18

    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_8

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    return v3

    :pswitch_e
    move-object/from16 v6, v18

    filled-new-array {v11, v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    if-le v4, v3, :cond_8

    return v3

    :cond_4
    const-string v4, "INU"

    const-string v5, "INS"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    if-le v4, v3, :cond_8

    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->support_dual_rat()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_8

    return v3

    :pswitch_f
    return v3

    :pswitch_10
    filled-new-array {v14, v15, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_11
    filled-new-array {v15, v12, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_12
    const-string v4, "LTN"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_13
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne v0, v3, :cond_8

    return v3

    :pswitch_14
    filled-new-array {v7, v13, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "ATC"

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->sim_mobility()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_5

    const-string/jumbo v6, "us"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "pr"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "vi"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v3, "No ECBM (Reason: SimMobility)"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return v3

    :pswitch_15
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->IS_TABLET:Z

    if-eqz v4, :cond_8

    const-string v4, "APP"

    filled-new-array {v14, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_16
    filled-new-array {v11, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v4

    const-string v5, "CarrierFeature_RIL_DisableEons"

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v4

    const-string v5, "CarrierFeature_RIL_ReferEonsWithoutLac"

    invoke-virtual {v4, v0, v5, v6, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    return v3

    :pswitch_17
    filled-new-array {v7, v8, v13}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_18
    filled-new-array {v8, v13, v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_19
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :pswitch_1a
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "BST"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "XAS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "SPRPRE"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    return v3

    :pswitch_1b
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :cond_8
    :goto_0
    const/4 v3, 0x0

    return v3

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static blacklist getOperatorType(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    const-string v3, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getOperatorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSalesCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getSimbasedChangeType()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeSimbasedType()V

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->sSimbasedChangeType:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist getSubOperatorName(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    const-string v3, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getSubOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public static blacklist hasRilFeature(Ljava/lang/String;)Z
    .locals 6

    const-string/jumbo v0, "onebinary satellite_carrier"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v2
.end method

.method public static blacklist isChnGlobalModel()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isChnGlobalModel(I)Z
    .locals 3

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HKG"

    const-string v1, "TPE"

    const-string v2, "CHN"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs blacklist isCountrySpecific(I[Ljava/lang/String;)Z
    .locals 6

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static blacklist isGCFMode(I)Z
    .locals 2

    const-string v0, "GCF"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.radio.gcfmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isGlobalModel(I)Z
    .locals 2

    const-string v0, "GLB"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static blacklist isKorSimInKorDevice(I)Z
    .locals 3

    const-string v0, "KOR"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ril.simtype"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist isLatinSubOperator(I)Z
    .locals 4

    const-string v0, "IUS"

    const-string v1, "MNX"

    const-string v2, "LTN"

    const-string v3, "ICE"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist isMainOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 6

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static varargs blacklist isNetworkCodeSpecific(I[Ljava/lang/String;)Z
    .locals 6

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static blacklist isOneTray()Z
    .locals 6

    const-string v0, "2"

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    return v3

    :cond_1
    const-string/jumbo v0, "ril.simslottype1"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ril.simslottype2"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v2
.end method

.method public static varargs blacklist isSalesCodeSpecific([Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static blacklist isSimHotswapSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->sSimHotswapSupported:Z

    return v0
.end method

.method public static varargs blacklist isSubOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 6

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static blacklist isSupportTiantong()Z
    .locals 1

    const-string/jumbo v0, "tiantong"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->hasRilFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUsaGlobalModel(I)Z
    .locals 2

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "USA"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist needSecSimOnOffEx()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    const-string v0, "SM-M205F"

    const-string/jumbo v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM-M305F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist needToCheckEmergencyNumberForEachSlot(I)Z
    .locals 4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getLastNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "th"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "il"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist supportDualLte()Z
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
