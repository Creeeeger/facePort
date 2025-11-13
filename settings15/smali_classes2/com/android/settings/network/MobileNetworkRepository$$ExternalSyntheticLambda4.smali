.class public final synthetic Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/network/MobileNetworkRepository;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/network/MobileNetworkRepository;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyCallbackMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_0
    return-void
.end method
