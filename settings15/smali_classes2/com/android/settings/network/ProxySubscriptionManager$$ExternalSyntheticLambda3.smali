.class public final synthetic Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/ProxySubscriptionManager;

.field public final synthetic f$1:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/ProxySubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/ProxySubscriptionManager;

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    check-cast p1, Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
