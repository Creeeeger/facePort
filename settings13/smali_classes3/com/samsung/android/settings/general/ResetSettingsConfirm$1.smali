.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 118
    iget-object p2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fputmDatabaseReset(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Z)V

    .line 119
    iget-object p2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    new-instance v1, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask-IA;)V

    iput-object v1, p2, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetTask:Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetTask:Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

    new-array p2, v0, [Landroid/content/Context;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-virtual {p0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
