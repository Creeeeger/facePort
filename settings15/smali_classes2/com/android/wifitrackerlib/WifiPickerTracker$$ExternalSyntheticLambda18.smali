.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/Map;I)V
    .locals 0

    iput p3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;->f$1:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez p0, :cond_0

    monitor-enter p1

    const/4 p0, 0x0

    :try_start_0
    iput-boolean p0, p1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    monitor-enter p1

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p1

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_2
    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->semUpdateSemWifiConfig(Ljava/util/Map;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
