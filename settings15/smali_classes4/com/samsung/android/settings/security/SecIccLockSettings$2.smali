.class public final Lcom/samsung/android/settings/security/SecIccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/security/SecIccLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mHandler:Lcom/samsung/android/settings/security/SecIccLockSettings$1;

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
