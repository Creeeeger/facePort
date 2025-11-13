.class public abstract Lcom/android/settings/network/ActiveSubscriptionsListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mCachedActiveSubscriptionInfo:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mLooper:Landroid/os/Looper;

.field public final mMaxActiveSubscriptionInfos:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mSubscriptionChangeIntentFilter:Landroid/content/IntentFilter;

.field public mSubscriptionChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTargetSubscriptionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mLooper:Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mTargetSubscriptionId:I

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mMaxActiveSubscriptionInfos:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mSubscriptionChangeIntentFilter:Landroid/content/IntentFilter;

    const-string p0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mMaxActiveSubscriptionInfos:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCachedActiveSubscriptionInfo:Ljava/util/List;

    return-void
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->monitorSubscriptionsChange(Z)V

    return-void
.end method

.method public final getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final getActiveSubscriptionsInfo()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCachedActiveSubscriptionInfo:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCachedActiveSubscriptionInfo:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    iget-object p0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCachedActiveSubscriptionInfo:Ljava/util/List;

    return-object p0
.end method

.method public getSubscriptionChangeReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ActiveSubscriptionsListener$1;-><init>(Lcom/android/settings/network/ActiveSubscriptionsListener;)V

    return-object v0
.end method

.method public final getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method public final monitorSubscriptionsChange(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mSubscriptionChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getSubscriptionChangeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mSubscriptionChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mSubscriptionChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mSubscriptionChangeIntentFilter:Landroid/content/IntentFilter;

    new-instance v6, Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mLooper:Landroid/os/Looper;

    invoke-direct {v6, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v7, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->registerForSubscriptionsChange()V

    iget-object p0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x3

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-gt p1, v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mSubscriptionChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->clearCache()V

    iget-object p0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method public abstract onChanged()V
.end method

.method public final onSubscriptionsChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->clearCache()V

    iget-object v0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mCacheState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->onChanged()V

    :goto_0
    return-void
.end method

.method public registerForSubscriptionsChange()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method
