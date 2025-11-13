.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wifitrackerlib/WifiPickerTracker;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSemFilter:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    monitor-exit p1

    const/4 v1, 0x0

    :goto_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    if-eqz p0, :cond_3

    const-string p0, "Swisscom"

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    if-eqz p0, :cond_3

    const-string p0, "VerizonWiFi"

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    :goto_2
    return v0

    :goto_3
    monitor-exit p1

    throw p0

    :pswitch_0
    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    monitor-enter p1

    :try_start_1
    iget-boolean v0, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsUserShareable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_4
    return p0

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_1
    check-cast p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    iget-object p1, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    iget-wide v0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getHotspotNetwork()Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getDeviceId()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    :goto_5
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
