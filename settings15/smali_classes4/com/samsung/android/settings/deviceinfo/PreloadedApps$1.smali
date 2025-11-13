.class public final Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

.field public final synthetic val$isShowSystemApps:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iput-boolean p2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->val$isShowSystemApps:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, [Ljava/lang/Void;

    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->val$isShowSystemApps:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v2, 0x100000

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz v3, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setList$2(Ljava/util/List;)V

    goto/16 :goto_14

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz p1, :cond_4

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sec_efs/preloadinstalled.lst"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v2, "PreloadedApps"

    const-string v3, "There is no file : /efs/sec_efs/preloadinstalled.lst"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v4, v0

    goto :goto_9

    :cond_5
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    instance-of v6, v4, Ljava/util/HashSet;

    if-eqz v6, :cond_6

    move-object v5, v4

    check-cast v5, Ljava/util/HashSet;

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v5, :cond_7

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :catch_0
    move-exception v2

    goto :goto_8

    :catchall_1
    move-exception v2

    goto :goto_6

    :cond_7
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v2

    :try_start_8
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_6
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v3

    :try_start_a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :goto_9
    if-eqz v4, :cond_8

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    const-string v2, ""

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_b
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/removable_preload.txt"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_9
    :goto_a
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string/jumbo v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "name=\'"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v2

    goto :goto_b

    :cond_a
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_10

    :catch_1
    move-exception v2

    goto :goto_f

    :catchall_5
    move-exception v2

    goto :goto_d

    :goto_b
    :try_start_10
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v5

    :try_start_11
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :goto_d
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_e

    :catchall_7
    move-exception v4

    :try_start_13
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    :goto_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    move-object v3, v0

    goto :goto_12

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_2
    :cond_d
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    :try_start_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_2

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    goto :goto_11

    :cond_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    :goto_12
    if-eqz v3, :cond_10

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v1

    :goto_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    :try_start_15
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_3

    :catch_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_11
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz p1, :cond_12

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setList$2(Ljava/util/List;)V

    :cond_12
    :goto_14
    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object p1, p1, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method public final onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object v2, v2, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    const v2, 0x7f140c9e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
