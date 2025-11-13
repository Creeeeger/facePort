.class public final Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;
.super Landroidx/lifecycle/LiveData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# instance fields
.field public mBasePreferenceOrdering:I

.field public final mBlocker:Ljava/util/concurrent/Phaser;

.field public final mContext:Landroid/content/Context;

.field public final mDataVersion:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mNumberOfSlots:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mSubscriptionMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;)V
    .locals 4

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mNumberOfSlots:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mSubscriptionMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/Phaser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mBlocker:Ljava/util/concurrent/Phaser;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mDataVersion:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->queryDetails(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->arrive()I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p2}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mSubscriptionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method public final onAirplaneModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->queryDetails(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mDataVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final onSubscriptionsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->queryDetails(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mDataVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final queryDetails(Landroid/content/Context;)V
    .locals 2

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mNumberOfSlots:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mSubscriptionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    const-string v0, "SlotSimStatus"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mSubscriptionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Number of active SIM: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mSubscriptionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-string p0, "No active SIM."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final size()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mBlocker:Ljava/util/concurrent/Phaser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Phaser;->awaitAdvance(I)I

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mNumberOfSlots:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method
