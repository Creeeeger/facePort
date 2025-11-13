.class public final Lcom/android/settings/network/ActiveSubscriptionsListener$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/ActiveSubscriptionsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    iget-object v0, p2, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCachedActiveSubscriptionInfo:Ljava/util/List;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, p1, :cond_4

    invoke-virtual {p2}, Lcom/android/settings/network/ActiveSubscriptionsListener;->clearCache()V

    iget-object p2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    iget p2, p2, Lcom/android/settings/network/ActiveSubscriptionsListener;->mTargetSubscriptionId:I

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    iget p2, p2, Lcom/android/settings/network/ActiveSubscriptionsListener;->mTargetSubscriptionId:I

    if-eq p2, p1, :cond_6

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->onSubscriptionsChanged()V

    return-void
.end method
