.class public abstract Lcom/android/settings/applications/AppLister;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AppLister;->mPm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/settings/applications/AppLister;->mUm:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, [Ljava/lang/Void;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/settings/applications/AppLister;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/settings/applications/AppLister;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x400000

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    int-to-long v3, v3

    const-wide v5, 0x100008200L

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLister;->includeInCount(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/settings/applications/UserAppInfo;

    invoke-direct {v4, v1, v3}, Lcom/android/settings/applications/UserAppInfo;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public abstract includeInCount(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method public abstract onAppListBuilt(Ljava/util/List;)V
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLister;->onAppListBuilt(Ljava/util/List;)V

    return-void
.end method
