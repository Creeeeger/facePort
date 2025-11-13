.class Lcom/samsung/android/settings/security/WorkProfileSecuritySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkProfileSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings$1;->this$0:Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings$1;->this$0:Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->updateFingerprintPreference()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "WorkProfileSecuritySettings"

    const-string p1, "onReceive | intent or context is null"

    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
