.class public final Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBaseField:Ljava/lang/String;

.field public mRegSubId:I

.field public final synthetic this$0:Lcom/android/settings/network/MobileNetworkRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/MobileNetworkRepository;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->mRegSubId:I

    const-string p1, "data_roaming"

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->mBaseField:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object p1, p1, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyManagerMap:Ljava/util/Map;

    iget p2, p0, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->mRegSubId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p2, Lcom/android/settings/network/MobileNetworkRepository;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataRoamingEnabled()Z

    move-result p1

    sget-object p2, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;

    iget v1, p0, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->mRegSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onDataRoamingChanged(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method
