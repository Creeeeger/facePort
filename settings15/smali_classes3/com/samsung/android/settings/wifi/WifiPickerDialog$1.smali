.class public final Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPickerDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "enable"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Requesting system key event for Pinned Dialog"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->-$$Nest$mrequestSystemKeyEvents(Lcom/samsung/android/settings/wifi/WifiPickerDialog;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Removing system key request"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->-$$Nest$mrequestSystemKeyEvents(Lcom/samsung/android/settings/wifi/WifiPickerDialog;Z)V

    :cond_1
    :goto_0
    return-void
.end method
