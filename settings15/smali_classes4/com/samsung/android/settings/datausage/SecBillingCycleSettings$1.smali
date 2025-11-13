.class public final Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;->this$0:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const-string p1, "SecBillingCycleSettings"

    const-string p2, "FINISH : HOTSWAP"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;->this$0:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
