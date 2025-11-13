.class Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;
.super Landroid/os/AsyncTask;
.source "LockScreenNotificationShowContentListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;
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
        "Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 213
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

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
            "Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->-$$Nest$mgetAppList(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p1, "LockScreenNotificationShowContentListSettings"

    const-string v0, "doInBackground() / Returned ArrayList is null"

    .line 219
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 226
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
