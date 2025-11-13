.class public final Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final configKey:Ljava/lang/String;

.field public final recordId:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/scloud/lib/storage/data/Header;->makeRecordId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    const-string/jumbo p1, "normal"

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->status:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/scloud/lib/storage/data/Header;->makeRecordId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->recordId:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->timestamp:J

    iput-object p2, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->status:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;

    iget-object p1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$Profile;->configKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

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
