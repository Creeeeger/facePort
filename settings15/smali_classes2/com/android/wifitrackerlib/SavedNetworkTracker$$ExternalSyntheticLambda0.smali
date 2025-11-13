.class public final synthetic Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Landroid/net/wifi/ScanResult;)V

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSuggestion;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSuggestion;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
