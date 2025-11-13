.class public final Lcom/android/settings/network/ProxySubscriptionManager$1;
.super Lcom/android/settings/network/ActiveSubscriptionsListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/ProxySubscriptionManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/ProxySubscriptionManager;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager$1;->this$0:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-direct {p0, p3, p2}, Lcom/android/settings/network/ActiveSubscriptionsListener;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager$1;->this$0:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->notifySubscriptionInfoMightChanged()V

    return-void
.end method
