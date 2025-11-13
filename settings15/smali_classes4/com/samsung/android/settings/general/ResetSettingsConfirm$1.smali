.class public final Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mDatabaseReset:Z

    new-instance v1, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v1, p2, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetTask:Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetTask:Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

    new-array p2, v0, [Landroid/content/Context;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-virtual {p0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
