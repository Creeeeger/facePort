.class public Lcom/android/internal/telephony/TelephonyFeatures;
.super Ljava/lang/Object;
.source "TelephonyFeatures.java"


# static fields
.field public static final blacklist DUALSIM_WITH_ONE_SLOT_NR:I = 0x1

.field public static final blacklist DUALSIM_WITH_TWO_SLOT_NR:I = 0x2

.field public static final blacklist IS_PHONE:Z

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyFeatures"

.field public static final blacklist MULTI_SIM_CONFIG:Ljava/lang/String;

.field public static final blacklist NO_DUALSIM_NR_MODEL:I = 0x0

.field public static final blacklist NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING:I = 0x5

.field public static final blacklist NTC_FEATURE_BLOCK_NETMODE_CHANGE_WITH_CARRIER_CONFIG_CHANGED:I = 0xe

.field public static final blacklist NTC_FEATURE_CHECK_OPPOSITE_SLOT_NETMODE_BEFORE_CHANGE:I = 0xf

.field public static final blacklist NTC_FEATURE_CSC_SPRINT_CHAMELEON:I = 0x2

.field public static final blacklist NTC_FEATURE_DISPLAY_RESCAN_DIALOG:I = 0xc

.field public static final blacklist NTC_FEATURE_DISPLAY_TOAST_AFTER_RTT_E911_FAILED:I = 0xb

.field public static final blacklist NTC_FEATURE_ERI_ON_AP:I = 0x4

.field public static final blacklist NTC_FEATURE_ERI_ON_CP:I = 0x3

.field public static final blacklist NTC_FEATURE_FORCELY_SET_2G_ENABLED:I = 0x14

.field public static final blacklist NTC_FEATURE_IS_3G_NOT_ALLOWED_OPERATOR:I = 0x10

.field public static final blacklist NTC_FEATURE_MAX:I = 0x15

.field public static final blacklist NTC_FEATURE_RESUME_HELD_CALL_AFTER_MO_FAIL:I = 0x12

.field public static final blacklist NTC_FEATURE_RESUME_HELD_CALL_IF_BG_ONLY:I = 0x13

.field public static final blacklist NTC_FEATURE_RETRY_EMERGENCY_SEARCH_IN_ALERTING:I = 0x11

.field public static final blacklist NTC_FEATURE_SET_CLIR_TO_BOTH_SIDES:I = 0xd

.field public static final blacklist NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING:I = 0x1

.field public static final blacklist NTC_FEATURE_SUPPORT_IMSCALL_ECBM:I = 0x8

.field public static final blacklist NTC_FEATURE_SUPPORT_IMSCALL_ONLY:I = 0x7

.field public static final blacklist NTC_FEATURE_UPDATE_ADDRESS_FOR_CALL_CONTROL:I = 0xa

.field public static final blacklist NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS:I = 0x6

.field public static final blacklist NTC_FEATURE_USE_SECOND_TTY_MODE_IN_DUAL_SIM:I = 0x9

.field public static final blacklist PRIMARY_PHONE_ID:I = 0x0

.field private static final blacklist PROJECT_SIM_NUM:I

.field public static final blacklist SALES_CODE:Ljava/lang/String;

.field public static final blacklist SECONDARY_PHONE_ID:I = 0x1

.field public static final blacklist SHIP_BUILD:Z

.field private static blacklist mNetworkCode:Ljava/lang/String;

.field private static blacklist mNetworkCode2:Ljava/lang/String;

.field private static blacklist mSalesCode:Ljava/lang/String;

.field private static blacklist mSimHotswapSupported:Z

.field private static blacklist mSimbasedChangeType:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 55
    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    .line 56
    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    .line 57
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ro.csc.omcnw_code"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    .line 58
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_config()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    .line 59
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    .line 109
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    .line 110
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ro.csc.omcnw_code2"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    .line 112
    sput-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    .line 113
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist InitializeSimbasedType()V
    .locals 7

    .line 119
    const-string/jumbo v0, "ro.simbased.changetype"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "changeType":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    .line 121
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    array-length v6, v2

    if-ge v6, v3, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    aget-object v1, v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    .line 127
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    new-array v2, v3, [Ljava/lang/String;

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    .line 123
    aput-object v1, v2, v5

    .line 124
    const-string v1, "DISABLED"

    aput-object v1, v2, v4

    .line 129
    :goto_1
    return-void
.end method

.method public static blacklist dump(I)V
    .locals 3
    .param p0, "phoneId"    # I

    .line 511
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

    .line 512
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

    .line 513
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

    .line 514
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

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCountryName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IS_PHONE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 517
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

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MULTI_SIM_CONFIG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSalesCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 520
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

    .line 521
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getNtcFeature("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->featureToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist featureToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ntcFeature"    # I

    .line 527
    packed-switch p0, :pswitch_data_0

    .line 572
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

    .line 567
    :pswitch_0
    const-string v0, "NTC_FEATURE_FORCELY_SET_2G_ENABLED"

    return-object v0

    .line 565
    :pswitch_1
    const-string v0, "NTC_FEATURE_RESUME_HELD_CALL_IF_BG_ONLY"

    return-object v0

    .line 563
    :pswitch_2
    const-string v0, "NTC_FEATURE_RESUME_HELD_CALL_AFTER_MO_FAIL"

    return-object v0

    .line 561
    :pswitch_3
    const-string v0, "NTC_FEATURE_RETRY_EMERGENCY_SEARCH_IN_ALERTING"

    return-object v0

    .line 559
    :pswitch_4
    const-string v0, "NTC_FEATURE_IS_3G_NOT_ALLOWED_OPERATOR"

    return-object v0

    .line 557
    :pswitch_5
    const-string v0, "NTC_FEATURE_CHECK_OPPOSITE_SLOT_NETMODE_BEFORE_CHANGE"

    return-object v0

    .line 555
    :pswitch_6
    const-string v0, "NTC_FEATURE_BLOCK_NETMODE_CHANGE_WITH_CARRIER_CONFIG_CHANGED"

    return-object v0

    .line 553
    :pswitch_7
    const-string v0, "NTC_FEATURE_SET_CLIR_TO_BOTH_SIDES"

    return-object v0

    .line 551
    :pswitch_8
    const-string v0, "NTC_FEATURE_DISPLAY_RESCAN_DIALOG"

    return-object v0

    .line 549
    :pswitch_9
    const-string v0, "NTC_FEATURE_DISPLAY_TOAST_AFTER_RTT_E911_FAILED"

    return-object v0

    .line 547
    :pswitch_a
    const-string v0, "NTC_FEATURE_UPDATE_ADDRESS_FOR_CALL_CONTROL"

    return-object v0

    .line 545
    :pswitch_b
    const-string v0, "NTC_FEATURE_USE_SECOND_TTY_MODE_IN_DUAL_SIM"

    return-object v0

    .line 543
    :pswitch_c
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ECBM"

    return-object v0

    .line 541
    :pswitch_d
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ONLY"

    return-object v0

    .line 539
    :pswitch_e
    const-string v0, "NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS"

    return-object v0

    .line 537
    :pswitch_f
    const-string v0, "NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING"

    return-object v0

    .line 535
    :pswitch_10
    const-string v0, "NTC_FEATURE_ERI_ON_AP"

    return-object v0

    .line 533
    :pswitch_11
    const-string v0, "NTC_FEATURE_ERI_ON_CP"

    return-object v0

    .line 531
    :pswitch_12
    const-string v0, "NTC_FEATURE_CSC_SPRINT_CHAMELEON"

    return-object v0

    .line 529
    :pswitch_13
    const-string v0, "NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static blacklist getCountryName(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .line 149
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getMainOperatorName(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .line 134
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getMainOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getNetworkCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 158
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static blacklist getNtcFeature(II)Z
    .locals 16
    .param p0, "phoneId"    # I
    .param p1, "ntcFeature"    # I

    .line 162
    move/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "0"

    const-string v3, "BMC"

    const-string v4, "ATT"

    const-string v5, "DSG"

    const-string v6, "TMO"

    const-string v7, "CAN"

    const-string v8, "USA"

    const-string v9, "KOR"

    const-string v10, "CHN"

    const-string v11, "XAA"

    const-string v13, "USC"

    const-string v14, "VZW"

    const-string v15, "SPR"

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown NTC feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 274
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v3, 0x21

    if-ge v2, v3, :cond_8

    const-string v2, "APP"

    const-string v3, "AIO"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 275
    return v12

    .line 267
    :pswitch_1
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TGY"

    const-string v3, "KDI"

    filled-new-array {v14, v15, v13, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "COD"

    const-string v3, "COB"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 270
    :cond_0
    return v12

    .line 265
    :pswitch_2
    return v12

    .line 260
    :pswitch_3
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 261
    return v12

    .line 255
    :pswitch_4
    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    const-string v3, "XXV"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    const-string v3, "XEV"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    const-string v2, "45204"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 256
    return v12

    .line 249
    :pswitch_5
    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->support_dual_rat()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v12, v2, :cond_8

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 251
    return v12

    .line 239
    :pswitch_6
    sget v3, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    if-le v3, v12, :cond_2

    const-string v4, "HKG"

    const-string v5, "TPE"

    filled-new-array {v10, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    return v12

    .line 241
    :cond_2
    if-le v3, v12, :cond_8

    const-string v3, "INU"

    const-string v4, "INS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 242
    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->support_dual_rat()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 243
    .local v2, "dualrat":I
    if-eq v2, v12, :cond_4

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 246
    .end local v2    # "dualrat":I
    :cond_3
    goto/16 :goto_1

    .line 244
    .restart local v2    # "dualrat":I
    :cond_4
    :goto_0
    return v12

    .line 237
    .end local v2    # "dualrat":I
    :pswitch_7
    return v12

    .line 232
    :pswitch_8
    filled-new-array {v4, v6, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 233
    return v12

    .line 227
    :pswitch_9
    filled-new-array {v6, v11, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 228
    return v12

    .line 222
    :pswitch_a
    const-string v2, "LTN"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 223
    return v12

    .line 217
    :pswitch_b
    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne v0, v12, :cond_8

    .line 218
    return v12

    .line 206
    :pswitch_c
    filled-new-array {v14, v13, v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 207
    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->sim_mobility()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 208
    .local v2, "isSimMobility":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "simCountry":Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string/jumbo v4, "us"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "pr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "vi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 210
    const-string v4, "No ECBM (Reason: SimMobility)"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 214
    .end local v2    # "isSimMobility":Z
    .end local v3    # "simCountry":Ljava/lang/String;
    goto/16 :goto_1

    .line 212
    .restart local v2    # "isSimMobility":Z
    .restart local v3    # "simCountry":Ljava/lang/String;
    :cond_5
    return v12

    .line 200
    .end local v2    # "isSimMobility":Z
    .end local v3    # "simCountry":Ljava/lang/String;
    :pswitch_d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 201
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Softphone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 202
    return v12

    .line 192
    :pswitch_e
    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 193
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    const-string v3, "CarrierFeature_RIL_DisableEons"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v12}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_8

    .line 194
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    const-string v3, "CarrierFeature_RIL_ReferEonsWithoutLac"

    invoke-virtual {v2, v0, v3, v4, v12}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 195
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 196
    :cond_6
    return v12

    .line 187
    :pswitch_f
    filled-new-array {v14, v15, v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 188
    return v12

    .line 182
    :pswitch_10
    filled-new-array {v15, v13, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 183
    return v12

    .line 176
    :pswitch_11
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 177
    return v12

    .line 169
    :pswitch_12
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 170
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 171
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XAS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPRPRE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 172
    :cond_7
    return v12

    .line 164
    :pswitch_13
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 165
    return v12

    .line 283
    :cond_8
    :goto_1
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .param p0, "phoneId"    # I

    .line 144
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getOperatorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getPropertyMultiSimBased(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 471
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    if-nez p1, :cond_1

    .line 479
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 472
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const-string v0, "Property is wrong"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSalesCode()Ljava/lang/String;
    .locals 1

    .line 154
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getSimbasedChangeType()Ljava/lang/String;
    .locals 2

    .line 464
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 465
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeSimbasedType()V

    .line 467
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist getSubOperatorName(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .line 139
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getSubOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 499
    .local p1, "prop":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 500
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    if-ltz p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 501
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public static blacklist isChnGlobalModel()Z
    .locals 1

    .line 291
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isChnGlobalModel(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 295
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

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
    .param p0, "phoneId"    # I
    .param p1, "countries"    # [Ljava/lang/String;

    .line 329
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "country":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 332
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    const/4 v1, 0x1

    return v1

    .line 331
    .end local v4    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 336
    :cond_1
    return v2
.end method

.method public static blacklist isGCFMode(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 420
    const-string/jumbo v0, "persist.radio.gcfmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "gcfMode":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static blacklist isGlobalModel(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 299
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "numeric"    # [Ljava/lang/String;

    .line 372
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "iccOperatorNumeric":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 375
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    const/4 v1, 0x1

    return v1

    .line 374
    .end local v4    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :cond_1
    return v2
.end method

.method public static blacklist isKorSimInKorDevice(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 487
    const-string v0, "KOR"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 488
    return v1

    .line 491
    :cond_0
    const-string/jumbo v0, "ril.simtype"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "simType":Ljava/lang/String;
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

    .line 495
    :cond_1
    return v1

    .line 493
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static varargs blacklist isMainOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "mainOperators"    # [Ljava/lang/String;

    .line 307
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "mainOperator":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 310
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    const/4 v1, 0x1

    return v1

    .line 309
    .end local v4    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    :cond_1
    return v2
.end method

.method public static varargs blacklist isNetworkCodeSpecific(I[Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "networkCodes"    # [Ljava/lang/String;

    .line 351
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 352
    .local v3, "x":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_0

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    return v4

    .line 354
    :cond_0
    if-eq p0, v4, :cond_1

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    return v4

    .line 351
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_2
    return v1
.end method

.method public static blacklist isNotAllowedMOCall(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 362
    const-string/jumbo v0, "ro.boot.carrierid"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "carrierId":Ljava/lang/String;
    const-string v1, "AIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "52001"

    const-string v2, "52003"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    const-string v1, "Non AIS carrier. BLOCKED MO Call"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 366
    const/4 v1, 0x1

    return v1

    .line 368
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isOneTray()Z
    .locals 3

    .line 453
    const-string v0, "1"

    .line 454
    .local v0, "trayCount":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    const-string/jumbo v1, "ril.simslottype2"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "sim2Path":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    const/4 v2, 0x1

    return v2

    .line 460
    .end local v1    # "sim2Path":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static varargs blacklist isSalesCodeSpecific([Ljava/lang/String;)Z
    .locals 6
    .param p0, "salesCodes"    # [Ljava/lang/String;

    .line 340
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "salesCode":Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 343
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    const/4 v1, 0x1

    return v1

    .line 342
    .end local v4    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_1
    return v2
.end method

.method public static blacklist isSimHotswapSupported()Z
    .locals 1

    .line 303
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    return v0
.end method

.method public static varargs blacklist isSubOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "subOperators"    # [Ljava/lang/String;

    .line 318
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "subOperator":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 321
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    const/4 v1, 0x1

    return v1

    .line 320
    .end local v4    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    :cond_1
    return v2
.end method

.method public static blacklist isUsaGlobalModel(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 287
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .param p0, "msg"    # Ljava/lang/String;

    .line 507
    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public static blacklist needSecSimOnOffEx()Z
    .locals 4

    .line 410
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 411
    const-string/jumbo v0, "ro.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SM-M205F"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM-M305F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist needToCheckVolteSubscriber(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 383
    const-string v0, "23001"

    const-string v1, "24001"

    const-string v2, "26201"

    const-string v3, "50501"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x1

    return v0

    .line 387
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist needToRunLteRoaming(I)Z
    .locals 9
    .param p0, "phoneId"    # I

    .line 391
    const-string v0, "SKT"

    const-string v1, "KTT"

    const-string v2, "LGT"

    const-string v3, "KOO"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 392
    return v5

    .line 395
    :cond_0
    const-string/jumbo v4, "ril.simtype"

    const-string v6, ""

    invoke-static {p0, v4, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, "simType":Ljava/lang/String;
    const-string v6, "2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 398
    :cond_1
    const-string v1, "3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 399
    :cond_2
    const-string v2, "4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 400
    :cond_3
    return v8

    .line 401
    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 402
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
    :cond_5
    return v8

    .line 406
    :cond_6
    return v5
.end method

.method public static blacklist showVoiceAsDataNetworkType(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 428
    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x1

    return v0

    .line 431
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist supportDualLte()Z
    .locals 3

    .line 442
    sget v0, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 443
    return v1

    .line 445
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DUAL_IMS"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "configDualIms":Ljava/lang/String;
    const-string v2, "DSDS_SI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DSDS_DI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 449
    :cond_1
    return v1

    .line 447
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method
