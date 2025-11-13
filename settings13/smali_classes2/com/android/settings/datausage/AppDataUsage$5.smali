.class Lcom/android/settings/datausage/AppDataUsage$5;
.super Landroid/os/AsyncTask;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/AppDataUsage;->queryNetworkAsyncCHN()V
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
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Landroid/app/usage/NetworkStats$Bucket;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 1310
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1310
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$5;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;>;"
        }
    .end annotation

    .line 1313
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$mqueryNetworkStatsData(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1310
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$5;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;>;)V"
        }
    .end annotation

    .line 1318
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1321
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$mbindDataCHN(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
