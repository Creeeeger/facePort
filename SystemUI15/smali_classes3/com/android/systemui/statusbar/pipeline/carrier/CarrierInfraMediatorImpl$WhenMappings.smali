.class public abstract synthetic Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl$WhenMappings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->values()[Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUPPORT_TSS20:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->NO_SERVICE_WHEN_NO_SIM:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SIGNAL_BAR_WHEN_EMERGENCY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->CHANGE_SIGNAL_ONE_LEVEL_PER_SEC:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->MULTI_LINE_CARRIER_LABEL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_LTE_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_4G_PLUS_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v0, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_4_HALF_G_INSTEAD_OF_4G_PLUS:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v0, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_HSPA_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v0, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_LTE_CA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v0, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ONE_SHAPED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xb

    aput v8, v0, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ENLARGED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xc

    aput v8, v0, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xd

    aput v8, v0, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA_DEVICE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xe

    aput v8, v0, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xf

    aput v8, v0, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUPPORT_ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x10

    aput v8, v0, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->GSM_ROAMING_ICON_ONLY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x11

    aput v8, v0, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->CDMA_ROAMING_ICON_ONLY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x12

    aput v8, v0, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->NO_ROAMING_ICON_AT_GSM:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x13

    aput v8, v0, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_TMOBILE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x14

    aput v8, v0, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_TMOBILE_FAMILY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x15

    aput v8, v0, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_TMO_DEVICE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x16

    aput v8, v0, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_ATT_DEVICE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x17

    aput v8, v0, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_AMX_FAMILY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x18

    aput v8, v0, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x19

    aput v8, v0, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_DOR:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x1a

    aput v8, v0, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x1b

    aput v8, v0, v7
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x1c

    aput v8, v0, v7
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_HKTW_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x1d

    aput v8, v0, v7
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x1e

    aput v8, v0, v7
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->CARRIER_LOGO_ON_HOME_SCREEN:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x1f

    aput v8, v0, v7
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_KT:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x20

    aput v8, v0, v7
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SHOW_TWO_PHONE_MODE_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x21

    aput v8, v0, v7
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->ZERO_SIGNAL_LEVEL_ON_VOWIFI:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x22

    aput v8, v0, v7
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->DISPLAY_CBCH50:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x23

    aput v8, v0, v7
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CLARO_PLMN:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x24

    aput v8, v0, v7
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LGT:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x25

    aput v8, v0, v7
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x26

    aput v8, v0, v7
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_OPEN:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x27

    aput v8, v0, v7
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_WIFI_CALLING_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x28

    aput v8, v0, v7
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUB_SCREEN_SIGNAL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x29

    aput v8, v0, v7
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_VOICE_NO_SERVICE_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x2a

    aput v8, v0, v7
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_VOICE_CAPABLE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x2b

    aput v8, v0, v7
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUB_SCREEN_MODE_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x2c

    aput v8, v0, v7
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUPPORT_CARRIER_ENABLED_SATELLITE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x2d

    aput v8, v0, v7
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_KDDI_DEVICE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x2e

    aput v8, v0, v7
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->values()[Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2e
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING_FROM_CARRIER_FEATURE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->MAX_SIGNAL_LEVEL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->EXTRA_SYSTEM_ICON_LIST:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING_FROM_CSC_FEATURE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->OVERRIDE_ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
