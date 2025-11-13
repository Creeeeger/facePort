.class public final Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBandArray:[I

.field public final mContext:Landroid/content/Context;

.field public final mDisplaySummaryText:Ljava/lang/String;

.field public final mDisplayText:Ljava/lang/String;

.field public final mDisplayValueIndex:I

.field public final mSaLoggingEventId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[II)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mSaLoggingEventId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArrayAfterBitWiseOperation([I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result v2

    const-string v3, ""

    const-string v4, "WifiApBandConfig"

    if-eqz v2, :cond_0

    const v2, 0x7f14348d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f1432db    # 1.969898E38f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand5Ghz()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f1432dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f142879

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "Error getting band text, Invalid Band."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand5Ghz()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_1

    :cond_6
    const-string v1, "Error getting band event value, Invalid Band."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_1
    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mSaLoggingEventId:I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isBandSeekBarUxSupported(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "US"

    const-string v5, "Error getting band tip summary text, Invalid Band."

    const v6, 0x7f1432b1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1432aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1432a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand5Ghz()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1432ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1432b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_b
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1432a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1432dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand5Ghz()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1432ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1432ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_11
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplaySummaryText:Ljava/lang/String;

    const/4 v1, -0x1

    if-ne p3, v1, :cond_15

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    iget-object v2, p3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget p1, p3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayValueIndex:I

    goto :goto_3

    :cond_13
    move p1, v1

    :goto_3
    if-ne p1, v1, :cond_14

    const-string p1, "Error getting band index (Resetting to 0), Invalid Band."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_14
    move v0, p1

    :goto_4
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayValueIndex:I

    goto :goto_5

    :cond_15
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mDisplayValueIndex:I

    :goto_5
    return-void
.end method


# virtual methods
.method public final isThisBand2Ghz()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget p0, p0, v1

    and-int/2addr p0, v2

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final isThisBand5Ghz()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget p0, p0, v1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final isThisBand6Ghz()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget p0, p0, v1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final isThisDualBand2GhzAnd5Ghz()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is5GhzBandSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->mBandArray:[I

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
