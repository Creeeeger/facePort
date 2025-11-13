.class public final Lcom/android/settingslib/users/AppCopyHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIPm:Landroid/content/pm/IPackageManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mSelectedPackages:Landroid/util/ArraySet;

.field public final mUser:Landroid/os/UserHandle;

.field public mVisibleApps:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1

    new-instance v0, Lcom/android/settingslib/users/AppCopyHelper$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/users/AppCopyHelper$Injector;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0}, Lcom/android/settingslib/users/AppCopyHelper;-><init>(Lcom/android/settingslib/users/AppCopyHelper$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/users/AppCopyHelper$Injector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mSelectedPackages:Landroid/util/ArraySet;

    iget-object v0, p1, Lcom/android/settingslib/users/AppCopyHelper$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object p1, p1, Lcom/android/settingslib/users/AppCopyHelper$Injector;->mUser:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settingslib/users/AppCopyHelper;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final addSystemApps(Landroid/content/Intent;Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    :cond_1
    new-instance v3, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, v3, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/users/AppCopyHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/settingslib/users/AppCopyHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final installSelectedApps()V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/users/AppCopyHelper;->mSelectedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/settingslib/users/AppCopyHelper;->mSelectedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v9, "Unhiding "

    const-string v3, "Installing "

    iget-object v4, p0, Lcom/android/settingslib/users/AppCopyHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    :try_start_0
    iget-object v4, p0, Lcom/android/settingslib/users/AppCopyHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const-wide/32 v5, 0x400000

    invoke-interface {v4, v2, v5, v6, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "AppCopyHelper"

    const/high16 v13, 0x800000

    if-eqz v11, :cond_0

    :try_start_1
    iget-boolean v4, v11, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_0

    iget v4, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v13

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingslib/users/AppCopyHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/settingslib/users/AppCopyHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v8, 0x0

    const/high16 v6, 0x400000

    const/4 v7, 0x0

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    :cond_1
    if-eqz v11, :cond_2

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v13

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingslib/users/AppCopyHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v0, v10}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
