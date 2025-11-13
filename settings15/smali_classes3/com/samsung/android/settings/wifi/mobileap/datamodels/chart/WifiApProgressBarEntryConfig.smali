.class public final Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

.field public final mProgressEntryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#FF0000"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mProgressEntryName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mProgressEntryName:Ljava/lang/String;

    new-instance p3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v2, v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mProgressEntryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mProgressEntryName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ** ProgressBarEntry ==> ProgressEntryName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mProgressEntryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ProgressEntryValue(MB): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
