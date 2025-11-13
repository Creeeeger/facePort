.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda12;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connection_status_connected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->onConnectionStatusChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getStatus()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->onConnectionStatusChanged(I)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    check-cast p1, Lcom/android/wifitrackerlib/KnownNetworkEntry;

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->getStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    iget-object p0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/wifitrackerlib/KnownNetworkEntry$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/wifitrackerlib/KnownNetworkEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
