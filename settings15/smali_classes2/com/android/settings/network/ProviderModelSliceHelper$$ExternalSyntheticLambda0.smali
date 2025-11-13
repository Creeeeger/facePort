.class public final synthetic Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/ProviderModelSliceHelper;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ProviderModelSliceHelper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/ProviderModelSliceHelper;

    iput-object p2, p0, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/ProviderModelSliceHelper;

    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Semaphore;

    iget-object v2, v0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    :goto_0
    iget-object v4, v0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    iget-object v5, v0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    const-string v5, "inflate_signal_strength_bool"

    invoke-virtual {v4, v5, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x6

    :goto_2
    move v5, v2

    move v6, v3

    goto :goto_3

    :cond_2
    const/4 v3, 0x5

    goto :goto_2

    :goto_3
    iget-object v4, v0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
