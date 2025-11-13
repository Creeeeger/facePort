.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/wifitrackerlib/KnownNetworkEntry;

    iget p0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget p0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    check-cast p1, Landroid/net/wifi/ScanResult;

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string p1, "[IBSS]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_3
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget p0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return p0

    :pswitch_4
    check-cast p1, Landroid/net/wifi/ScanResult;

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string p1, "[IBSS]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    :goto_5
    return p0

    :pswitch_5
    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    return p0

    :pswitch_6
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_7

    :cond_7
    const/4 p0, 0x0

    :goto_7
    return p0

    :pswitch_7
    check-cast p1, Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_8

    monitor-enter p1

    :try_start_0
    iget-boolean p0, p1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_8

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_8
    const/4 p0, 0x0

    :goto_8
    return p0

    :pswitch_8
    check-cast p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_9

    :cond_9
    const/4 p0, 0x0

    :goto_9
    return p0

    :pswitch_9
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_a

    monitor-enter p1

    :try_start_1
    iget-boolean p0, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsUserShareable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_a

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_a
    const/4 p0, 0x0

    :goto_a
    return p0

    :pswitch_a
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_b

    :cond_b
    const/4 p0, 0x0

    :goto_b
    return p0

    :pswitch_b
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_c
    check-cast p1, Landroid/net/wifi/ScanResult;

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
