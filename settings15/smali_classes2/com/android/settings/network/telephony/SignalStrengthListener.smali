.class public final Lcom/android/settings/network/telephony/SignalStrengthListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mCallback:Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;

.field public final mContext:Landroid/content/Context;

.field mTelephonyCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/network/telephony/SignalStrengthListener$SignalStrengthTelephonyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mCallback:Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;

    iput-object p1, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateSubscriptionIds(Ljava/util/Set;)V
    .locals 5

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$3;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/Sets$3$1;

    invoke-direct {v2, v1}, Lcom/google/common/collect/Sets$3$1;-><init>(Lcom/google/common/collect/Sets$3;)V

    :goto_0
    invoke-virtual {v2}, Lcom/google/common/collect/Sets$3$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/google/common/collect/Sets$3$1;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-object v3, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$3;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/Sets$3$1;

    invoke-direct {v0, p1}, Lcom/google/common/collect/Sets$3$1;-><init>(Lcom/google/common/collect/Sets$3;)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/Sets$3$1;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/google/common/collect/Sets$3$1;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/settings/network/telephony/SignalStrengthListener$SignalStrengthTelephonyCallback;

    invoke-direct {v2, p0}, Lcom/android/settings/network/telephony/SignalStrengthListener$SignalStrengthTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/SignalStrengthListener;)V

    iget-object v3, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v1, v2, p1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_1

    :cond_1
    return-void
.end method
