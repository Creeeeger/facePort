.class public final Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$mEthernetTetherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$mEthernetTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onReceive() :"

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-static {v0, p1, p2, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$mEthernetTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->updateController()V

    :cond_0
    return-void
.end method
