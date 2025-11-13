.class public Lcom/android/server/FMRadioServiceFeature;
.super Ljava/lang/Object;
.source "FMRadioServiceFeature.java"


# static fields
.field public static final blacklist BANDWIDTHAS_76000_108000:Ljava/lang/String; = "76000_108000"

.field public static final blacklist BANDWIDTHAS_76000_90000:Ljava/lang/String; = "76000_90000"

.field public static final blacklist BANDWIDTHAS_87500_108000:Ljava/lang/String; = "87500_108000"

.field public static final blacklist BLEND_RMSSI_HI:Ljava/lang/String;

.field public static final blacklist BLEND_SINR_HI:Ljava/lang/String;

.field public static final blacklist CHIP_MRVL:I = 0x3

.field public static final blacklist CHIP_MTK:I = 0x8

.field public static final blacklist CHIP_QCOM:I = 0x4

.field public static final blacklist CHIP_QCOM_CHROKEE:I = 0x9

.field public static final blacklist CHIP_RICHWAVE:I = 0x5

.field public static final blacklist CHIP_RICHWAVE_V2:I = 0xa

.field public static final blacklist CHIP_SILICON:I = 0x1

.field public static final blacklist CHIP_SLSI:I = 0x7

.field public static final blacklist CHIP_SPRD:I = 0x6

.field public static final blacklist CHIP_VENDOR:I

.field public static final blacklist FEATURE_BANDWIDTH:Ljava/lang/String;

.field public static final blacklist FEATURE_CONFIG_SOFTMUTE:Ljava/lang/String;

.field public static final blacklist FEATURE_FMRADIO_SUPPORT_EXTERNAL_RADIO_CHIPSET:Z

.field public static final blacklist FEATURE_FREQUENCYSPACE:I

.field public static final blacklist FEATURE_REMOVE_AF_MENU:Z

.field public static final blacklist FEATURE_SETLOCALTUNNING:Ljava/lang/String;

.field public static final blacklist FEATURE_SUPPORT_SOFTMUTE:Z

.field public static final blacklist FEATURE_USE_CHIPSET_VOLUME:Z

.field public static final blacklist FEATURE_WAIT_PID_DURING_SCAN:Z = false

.field public static final blacklist HYBRID_SEARCH_LIST:Ljava/lang/String;

.field public static final blacklist MEDIATEK_DESENSE_LIST:Ljava/lang/String;

.field public static blacklist sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

.field private static blacklist tmpHybridSearchList:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 11
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    .line 15
    const-string v1, "CscFeature_FMRadio_SetLocalTunning"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v1, "CscFeature_FMRadio_BandWidthAs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v1, "CscFeature_FMRadio_FrequencySpaceAs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    .line 20
    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v1, "CscFeature_FMRadio_ConfigHybridSearchTunnig"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->tmpHybridSearchList:Ljava/lang/String;

    .line 21
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SUPPORT_HYBRIDSEARCH"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->tmpHybridSearchList:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->HYBRID_SEARCH_LIST:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_DESENSE_LIST"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->MEDIATEK_DESENSE_LIST:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_BLEND_SINR_HI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->BLEND_SINR_HI:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_BLEND_RMSSI_HI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->BLEND_RMSSI_HI:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_REMOVE_AF_MENU"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_REMOVE_AF_MENU:Z

    .line 29
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SOFTMUTE_TH"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_CONFIG_SOFTMUTE:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_SUPPORT_SOFTMUTE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    .line 43
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    .line 44
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    sput-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    .line 45
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_SUPPORT_EXTERNAL_RADIO_CHIPSET"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FMRADIO_SUPPORT_EXTERNAL_RADIO_CHIPSET:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
