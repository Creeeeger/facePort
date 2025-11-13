.class public final synthetic Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;I)V
    .locals 0

    iput p2, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Landroid/net/wifi/ScanResult;)V

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mIsTargetingNewNetworks:Z

    invoke-direct {v0, p1, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
