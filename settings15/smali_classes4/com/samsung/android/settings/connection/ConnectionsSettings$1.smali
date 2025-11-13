.class public final Lcom/samsung/android/settings/connection/ConnectionsSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/ConnectionsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/ConnectionsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/connection/ConnectionsSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRegisterIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRegisterIntent:Landroid/content/Intent;

    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
