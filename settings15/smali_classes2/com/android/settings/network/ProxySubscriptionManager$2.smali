.class public final Lcom/android/settings/network/ProxySubscriptionManager$2;
.super Lcom/android/settings/network/GlobalSettingsChangeListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/ProxySubscriptionManager;

.field public final synthetic val$subscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/ProxySubscriptionManager;Landroid/os/Looper;Landroid/content/Context;Lcom/android/settings/network/ProxySubscriptionManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager$2;->this$0:Lcom/android/settings/network/ProxySubscriptionManager;

    iput-object p4, p0, Lcom/android/settings/network/ProxySubscriptionManager$2;->val$subscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    const-string p1, "airplane_mode_on"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/settings/network/GlobalSettingsChangeListener;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onChanged$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager$2;->val$subscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-virtual {v0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->clearCache()V

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager$2;->this$0:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->notifySubscriptionInfoMightChanged()V

    return-void
.end method
