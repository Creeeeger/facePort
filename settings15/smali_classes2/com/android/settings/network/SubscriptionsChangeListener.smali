.class public final Lcom/android/settings/network/SubscriptionsChangeListener;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAirplaneModeSettingUri:Landroid/net/Uri;

.field public final mBroadcastReceiver:Lcom/android/settings/network/SubscriptionsChangeListener$2;

.field public final mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

.field public final mContext:Landroid/content/Context;

.field public mRunning:Z

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mSubscriptionsChangedListener:Lcom/android/settings/network/SubscriptionsChangeListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mRunning:Z

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance p1, Lcom/android/settings/network/SubscriptionsChangeListener$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/SubscriptionsChangeListener$1;-><init>(Lcom/android/settings/network/SubscriptionsChangeListener;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionsChangedListener:Lcom/android/settings/network/SubscriptionsChangeListener$1;

    const-string p1, "airplane_mode_on"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mAirplaneModeSettingUri:Landroid/net/Uri;

    new-instance p1, Lcom/android/settings/network/SubscriptionsChangeListener$2;

    invoke-direct {p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener$2;-><init>(Lcom/android/settings/network/SubscriptionsChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mBroadcastReceiver:Lcom/android/settings/network/SubscriptionsChangeListener$2;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mAirplaneModeSettingUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "airplane_mode_on"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p1, v0}, Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;->onAirplaneModeChanged(Z)V

    :cond_1
    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionsChangedListener:Lcom/android/settings/network/SubscriptionsChangeListener$1;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mAirplaneModeSettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mBroadcastReceiver:Lcom/android/settings/network/SubscriptionsChangeListener$2;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mRunning:Z

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionsChangedListener:Lcom/android/settings/network/SubscriptionsChangeListener$1;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mBroadcastReceiver:Lcom/android/settings/network/SubscriptionsChangeListener$2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mRunning:Z

    goto :goto_0

    :cond_0
    const-string p0, "SubscriptionsChangeListener"

    const-string v0, "Stop has been called without associated Start."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
