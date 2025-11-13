.class public final Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAirplaneModeSettingUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/settings/network/MobileNetworkRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/MobileNetworkRepository;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "airplane_mode_on"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;->mAirplaneModeSettingUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;->mAirplaneModeSettingUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkRepository;->isAirplaneModeOn()Z

    move-result p0

    sget-object p1, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;

    invoke-interface {p2, p0}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAirplaneModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
