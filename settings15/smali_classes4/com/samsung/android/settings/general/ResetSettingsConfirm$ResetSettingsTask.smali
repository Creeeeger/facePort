.class public final Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Landroid/content/Context;

    :try_start_0
    const-string v0, "ResetSettings"

    const-string v1, "doInBackground... proceed reset settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetSettingsExternal(Landroid/content/Context;)V

    aget-object p0, p1, v0

    invoke-static {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetSettingsInternal(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    const-string p1, "ResetSettings"

    const-string/jumbo v0, "onPostExecute"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->handler:Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;

    const/4 p1, 0x1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
