.class public final Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDeviceId:J

.field public final mIsVirtualEntry:Z

.field public final mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;


# direct methods
.method public constructor <init>(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getDeviceId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSsid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSecurityTypes()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mIsVirtualEntry:Z

    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSsid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSecurityTypes()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mIsVirtualEntry:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const-string v0, "SCAN_RESULT_KEY"

    const-string v1, "DEVICE_ID_KEY"

    const-string v2, "IS_VIRTUAL_ENTRY_KEY"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    const-string v3, "HotspotNetworkEntry:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "HotspotNetworkEntry"

    if-nez v3, :cond_0

    const-string p0, "String key does not start with key prefix!"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const/16 v5, 0x14

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mIsVirtualEntry:Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "JSONException while converting HotspotNetworkEntryKey to string: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "IS_VIRTUAL_ENTRY_KEY"

    iget-boolean v2, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mIsVirtualEntry:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "DEVICE_ID_KEY"

    iget-wide v2, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    if-eqz p0, :cond_0

    const-string v1, "SCAN_RESULT_KEY"

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONException while converting HotspotNetworkEntryKey to string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HotspotNetworkEntry"

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "HotspotNetworkEntry:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
