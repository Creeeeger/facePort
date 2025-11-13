.class public final Lcom/android/settings/network/SubscriptionsPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/SubscriptionsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController$1;->this$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController$1;->this$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    iget-object p2, p1, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->access$000(Lcom/android/settings/network/SubscriptionsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController$1;->this$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    goto :goto_0

    :cond_0
    const-string p2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController$1;->this$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    :cond_1
    :goto_0
    return-void
.end method
