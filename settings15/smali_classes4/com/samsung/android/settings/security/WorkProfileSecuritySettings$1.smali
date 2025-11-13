.class public final Lcom/samsung/android/settings/security/WorkProfileSecuritySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings$1;->this$0:Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings$1;->this$0:Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->updateFingerprintPreference()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "WorkProfileSecuritySettings"

    const-string/jumbo p1, "onReceive | intent or context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
