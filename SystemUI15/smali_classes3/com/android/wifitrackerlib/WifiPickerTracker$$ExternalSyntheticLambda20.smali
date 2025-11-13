.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/Map;I)V
    .locals 0

    iput p3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;->f$1:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v1, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    monitor-enter p1

    :try_start_0
    iput-object v0, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionExpirationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSubscriptionExpirationTimeInMillis:J

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getMeteredOverride()I

    move-result v0

    iput v0, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown()Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal()Z

    iput-object p0, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSubscription()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSuggestion()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :goto_4
    monitor-exit p1

    throw p0

    :goto_5
    monitor-exit p1

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->semUpdateSemWifiConfig(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
