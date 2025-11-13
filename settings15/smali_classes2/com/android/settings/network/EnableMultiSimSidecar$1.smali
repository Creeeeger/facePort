.class public final Lcom/android/settings/network/EnableMultiSimSidecar$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/EnableMultiSimSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/EnableMultiSimSidecar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/EnableMultiSimSidecar$1;->this$0:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    iget-object p1, p0, Lcom/android/settings/network/EnableMultiSimSidecar$1;->this$0:Lcom/android/settings/network/EnableMultiSimSidecar;

    iget-object p2, p1, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p2

    iget-object v0, p1, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_3

    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v7}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object v0, v2

    :goto_3
    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, p2, :cond_7

    iget-object v4, p1, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/android/settings/network/EnableMultiSimSidecar$1;->this$0:Lcom/android/settings/network/EnableMultiSimSidecar;

    iget-object p1, p1, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_8

    :cond_8
    array-length p2, p1

    move v0, v1

    :goto_5
    if-ge v1, p2, :cond_c

    aget-object v2, p1, v1

    if-nez v2, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v4}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    move v1, v0

    :goto_8
    iget-object p1, p0, Lcom/android/settings/network/EnableMultiSimSidecar$1;->this$0:Lcom/android/settings/network/EnableMultiSimSidecar;

    iget p1, p1, Lcom/android/settings/network/EnableMultiSimSidecar;->mNumOfActiveSim:I

    const-string p2, "EnableMultiSimSidecar"

    if-ne v3, p1, :cond_d

    if-ne v1, p1, :cond_d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d ports are active and ready."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar$1;->this$0:Lcom/android/settings/network/EnableMultiSimSidecar;

    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mSimCardStateChangedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d ports are active and %d SIMs are ready. Keep waiting until timeout."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
