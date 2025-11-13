.class Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;
.super Landroid/os/AsyncTask;
.source "PreloadedApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

.field final synthetic val$isShowSystemApps:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Z)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iput-boolean p2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->val$isShowSystemApps:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 110
    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->val$isShowSystemApps:Z

    if-nez p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$mlistUpSystemApps(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$mlistUpPreloadedApps(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 123
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fputmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fputmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)V

    .line 126
    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmPrefScreen(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fputmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->loading_notification_apps:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
