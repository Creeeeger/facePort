.class Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;
.super Ljava/lang/Object;
.source "SCloudWifiDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Profile"
.end annotation


# instance fields
.field public final configKey:Ljava/lang/String;

.field public final recordId:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    .line 496
    invoke-static {p1}, Lcom/samsung/android/scloud/lib/storage/data/Header;->makeRecordId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    const-string p1, "normal"

    .line 498
    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->status:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\t"

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 484
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 485
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    .line 486
    invoke-static {v0}, Lcom/samsung/android/scloud/lib/storage/data/Header;->makeRecordId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 487
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    .line 488
    iput-object p2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->status:Ljava/lang/String;

    return-void

    .line 490
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 525
    instance-of v0, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    if-eqz v0, :cond_0

    .line 526
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    iget-object p1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getHeader()Lcom/samsung/android/scloud/lib/storage/data/Header;
    .locals 7

    .line 502
    new-instance v6, Lcom/samsung/android/scloud/lib/storage/data/Header;

    iget-object v2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    iget-object v5, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->status:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/scloud/lib/storage/data/Header;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v6
.end method

.method public getRecordDataSet(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;
    .locals 4

    .line 506
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "record_id"

    .line 508
    iget-object v2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 509
    iget-wide v2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 510
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 512
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    :goto_0
    new-instance p1, Lcom/samsung/android/scloud/lib/storage/data/Body;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/scloud/lib/storage/data/Body;-><init>(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 515
    new-instance v0, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    invoke-virtual {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->getHeader()Lcom/samsung/android/scloud/lib/storage/data/Header;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;-><init>(Lcom/samsung/android/scloud/lib/storage/data/Header;Lcom/samsung/android/scloud/lib/storage/data/Body;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
