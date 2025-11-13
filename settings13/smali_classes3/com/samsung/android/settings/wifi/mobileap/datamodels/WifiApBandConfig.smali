.class public Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;
.super Ljava/lang/Object;
.source "WifiApBandConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApBandConfig"


# instance fields
.field private mBandArray:[I

.field private final mContext:Landroid/content/Context;

.field private mDisplaySummaryText:Ljava/lang/String;

.field private mDisplayText:Ljava/lang/String;

.field private mDisplayValueIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 1

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;-><init>(Landroid/content/Context;[II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArrayAfterBitWiseOperation([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getBandText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayText:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getBandSummaryText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplaySummaryText:Ljava/lang/String;

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getIndex([I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayValueIndex:I

    goto :goto_0

    .line 36
    :cond_0
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayValueIndex:I

    :goto_0
    return-void
.end method

.method private getBandSummaryText()Ljava/lang/String;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isBandSeekBarUxSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Error getting band tip summary text, Invalid Band."

    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_2ghz_tip_summary_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_2ghz_5ghz_tip_summary_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand5Ghz()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_5ghz_tip_summary_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_6ghz_tip_summary_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 69
    :cond_3
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_2GHz_error_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_band_2ghz_and_5ghz_warning:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 76
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand5Ghz()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_5GHz_error_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 78
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_6GHz_error_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 81
    :cond_8
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private getBandText()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget p0, Lcom/android/settings/R$string;->wifi_band_24ghz:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    sget p0, Lcom/android/settings/R$string;->wifi_ap_band_2ghz_and_5ghz:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand5Ghz()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    sget p0, Lcom/android/settings/R$string;->wifi_ap_band_5ghz:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 50
    sget p0, Lcom/android/settings/R$string;->sec_wifi_ap_sixghz_prefered:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 52
    :cond_3
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->TAG:Ljava/lang/String;

    const-string v0, "Error getting band text, Invalid Band."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getIndex([I)I
    .locals 3

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getBandArray()[I

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget p0, v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayValueIndex:I

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-ne p0, v1, :cond_2

    .line 97
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->TAG:Ljava/lang/String;

    const-string p1, "Error getting band index (Resetting to 0), Invalid Band."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_2
    return p0
.end method


# virtual methods
.method public getBandArray()[I
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    return-object p0
.end method

.method public getDisplaySummaryText()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplaySummaryText:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayValueIndex()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayValueIndex:I

    return p0
.end method

.method public getDisplayValueIndexString()Ljava/lang/String;
    .locals 0

    .line 167
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayValueIndex:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isThisBand2Ghz()Z
    .locals 3

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 106
    aget p0, p0, v1

    and-int/2addr p0, v2

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isThisBand5Ghz()Z
    .locals 3

    .line 125
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 126
    aget p0, p0, v2

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isThisBand6Ghz()Z
    .locals 3

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 136
    aget p0, p0, v2

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isThisDualBand2GhzAnd5Ghz()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isDualBand2GhzAnd5GhzSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    array-length p0, p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
