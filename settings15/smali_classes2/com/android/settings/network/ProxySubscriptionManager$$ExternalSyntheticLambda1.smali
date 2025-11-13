.class public final synthetic Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/network/ProxySubscriptionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ProxySubscriptionManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/ProxySubscriptionManager;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p2

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mPendingNotifyListeners:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
