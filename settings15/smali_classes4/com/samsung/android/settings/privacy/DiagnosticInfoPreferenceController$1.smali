.class public final Lcom/samsung/android/settings/privacy/DiagnosticInfoPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/privacy/DiagnosticInfoPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/privacy/DiagnosticInfoPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/DiagnosticInfoPreferenceController$1;->this$0:Lcom/samsung/android/settings/privacy/DiagnosticInfoPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onReceive() : "

    const-string v1, "DiagnosticInfoPreferenceController"

    const-string v2, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "diagnostic_info_changed"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/DiagnosticInfoPreferenceController$1;->this$0:Lcom/samsung/android/settings/privacy/DiagnosticInfoPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/DiagnosticInfoPreferenceController;->-$$Nest$fgetmDiagnosticInfo(Lcom/samsung/android/settings/privacy/DiagnosticInfoPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
