.class public abstract Lcom/android/settings/applications/AppCounter;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFf:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/AppCounter;->mPm:Landroid/content/pm/PackageManager;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/AppCounter;->mUm:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/settings/applications/AppCounter;->mFf:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    return-void
.end method


# virtual methods
.method public final varargs doInBackground()Ljava/lang/Integer;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/AppCounter;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/settings/applications/AppCounter;->mFf:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v4}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->archiving()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide v4, 0x100000000L

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    const-wide/32 v6, 0x8200

    or-long/2addr v4, v6

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x400000

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    int-to-long v6, v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/AppCounter;->mPm:Landroid/content/pm/PackageManager;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppCounter;->includeInCount(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppCounter;->doInBackground()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public abstract includeInCount(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method public abstract onCountComplete(I)V
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppCounter;->onCountComplete(I)V

    return-void
.end method
