.class public final synthetic Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/ProxySubscriptionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ProxySubscriptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/ProxySubscriptionManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/ProxySubscriptionManager;

    check-cast p1, Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
