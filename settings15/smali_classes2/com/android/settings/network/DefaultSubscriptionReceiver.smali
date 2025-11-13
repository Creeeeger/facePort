.class public final Lcom/android/settings/network/DefaultSubscriptionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mListener:Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mListener:Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;->onDefaultDataChanged(I)V

    goto :goto_0

    :cond_0
    const-string p2, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mListener:Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;->onDefaultSubInfoChanged(I)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mListener:Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;->onDefaultVoiceChanged(I)V

    goto :goto_0

    :cond_2
    const-string p2, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mListener:Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;->onDefaultSmsChanged(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
