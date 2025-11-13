.class public final Lcom/android/settings/wifi/repository/WifiPickerRepository$connectedWifiEntryFlow$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $tracker:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/repository/WifiPickerRepository$connectedWifiEntryFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p1, p0, Lcom/android/settings/wifi/repository/WifiPickerRepository$connectedWifiEntryFlow$1$callback$1;->$tracker:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public final onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method public final onWifiEntriesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiPickerRepository$connectedWifiEntryFlow$1$callback$1;->$tracker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiPickerRepository$connectedWifiEntryFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onWifiStateChanged()V
    .locals 0

    return-void
.end method
