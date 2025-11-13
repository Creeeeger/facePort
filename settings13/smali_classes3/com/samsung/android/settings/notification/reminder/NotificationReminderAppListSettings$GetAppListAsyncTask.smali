.class Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;
.super Landroid/os/AsyncTask;
.source "NotificationReminderAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAppListAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;-><init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 196
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;",
            ">;"
        }
    .end annotation

    const-string p1, "NotificationReminderAppListSettings"

    const-string v0, "GetAppListAsyncTask doInBackground called"

    .line 200
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "doInBackground() / Returned ArrayList is null"

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;",
            ">;)V"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAppListAsyncTask onPostExecute called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationReminderAppListSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 213
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return-void
.end method
