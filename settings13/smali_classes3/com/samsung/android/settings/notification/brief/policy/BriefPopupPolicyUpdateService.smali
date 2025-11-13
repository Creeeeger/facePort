.class public Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyUpdateService;
.super Landroid/app/IntentService;
.source "BriefPopupPolicyUpdateService.java"


# direct methods
.method public static startActionUpdate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ELPolicyUpdateService"

    const-string v1, "startActionUpdate"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyUpdateReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.systemui.edgelighting.action.UPDATE_POLICY"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
