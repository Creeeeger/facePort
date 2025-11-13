.class public abstract Lcom/android/settings/ResetSubscriptionContract;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mResetSubscriptionIds:[I

.field protected mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public final mSubscriptionsUpdateNotify:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/ResetNetworkRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ResetSubscriptionContract;->mSubscriptionsUpdateNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/settings/ResetSubscriptionContract;->mContext:Landroid/content/Context;

    iget p1, p2, Lcom/android/settings/ResetNetworkRequest;->mResetTelephonyManager:I

    iget v0, p2, Lcom/android/settings/ResetNetworkRequest;->mResetApn:I

    iget p2, p2, Lcom/android/settings/ResetNetworkRequest;->mSubscriptionIdToResetIms:I

    filled-new-array {p1, v0, p2}, [I

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->sorted()Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p2, Lcom/android/settings/ResetSubscriptionContract$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetSubscriptionContract;->mResetSubscriptionIds:[I

    array-length p1, p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetSubscriptionContract;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lcom/android/settings/ResetSubscriptionContract;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ResetSubscriptionContract;->getChangeListener()Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/ResetSubscriptionContract;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iget-object p0, p0, Lcom/android/settings/ResetSubscriptionContract;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, p0, p2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ResetSubscriptionContract;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ResetSubscriptionContract;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/ResetSubscriptionContract;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetSubscriptionContract;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ResetSubscriptionContract;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public final getAnyMissingSubscriptionId()Ljava/lang/Integer;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/ResetSubscriptionContract;->mResetSubscriptionIds:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ResetSubscriptionContract;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "ResetSubscriptionContract"

    if-nez v0, :cond_1

    const-string v0, "Fail to access subscription manager"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/ResetSubscriptionContract;->mResetSubscriptionIds:[I

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings/ResetSubscriptionContract;->mResetSubscriptionIds:[I

    array-length v5, v4

    if-ge v2, v5, :cond_3

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SubId "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " no longer active."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getChangeListener()Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 1

    new-instance v0, Lcom/android/settings/ResetSubscriptionContract$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetSubscriptionContract$1;-><init>(Lcom/android/settings/ResetSubscriptionContract;)V

    return-object v0
.end method

.method public getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/ResetSubscriptionContract;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    return-object p0
.end method
