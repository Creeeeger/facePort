.class public final Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mDefaultTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;


# instance fields
.field public mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mCallback:Lcom/android/settings/network/SubscriptionsPreferenceController;

.field public mDisplayInfos:Ljava/util/Map;

.field public mListeners:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/telephony/TelephonyDisplayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    sput-object v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDefaultTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-void
.end method


# virtual methods
.method public final updateSubscriptionIds(Ljava/util/Set;)V
    .locals 6

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    iget-object v4, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDisplayInfos:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v2, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;-><init>(Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;I)V

    iget-object v3, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDisplayInfos:Ljava/util/Map;

    sget-object v4, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDefaultTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/PhoneStateListener;

    const/high16 v2, 0x100000

    invoke-virtual {v1, p1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_1
    return-void
.end method
