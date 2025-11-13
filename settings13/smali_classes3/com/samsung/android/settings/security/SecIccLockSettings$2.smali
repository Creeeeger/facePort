.class Lcom/samsung/android/settings/security/SecIccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SecIccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SecIccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SecIccLockSettings;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecIccLockSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/security/SecIccLockSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecIccLockSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/security/SecIccLockSettings;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x66

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
