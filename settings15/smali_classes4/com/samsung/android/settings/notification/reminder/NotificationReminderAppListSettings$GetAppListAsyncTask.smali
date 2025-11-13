.class public final Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    const-string p1, "NotificationReminderAppListSettings"

    const-string v0, "GetAppListAsyncTask doInBackground called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetAppListAsyncTask onPostExecute called"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationReminderAppListSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
