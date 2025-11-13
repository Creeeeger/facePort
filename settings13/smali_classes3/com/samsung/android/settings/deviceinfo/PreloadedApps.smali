.class public Lcom/samsung/android/settings/deviceinfo/PreloadedApps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreloadedApps.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOptionMenuText:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefScreen:Landroidx/preference/PreferenceScreen;

.field private mPreloadedPackageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefScreen(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroidx/preference/PreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmProgress(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mlistUpPreloadedApps(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->listUpPreloadedApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlistUpSystemApps(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->listUpSystemApps()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method private addDescriptionForRemovingPreloadApp()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/removable_preload.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 252
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "name="

    .line 253
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "name=\'"

    .line 254
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 257
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 248
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return-object v2

    .line 266
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 271
    :catch_1
    :cond_3
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 274
    :try_start_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 275
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 276
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    goto :goto_4

    .line 282
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 283
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 287
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    return-object v1

    :cond_6
    return-object v2
.end method

.method private addPreloadInstalledPackages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/preloadinstalled.lst"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PreloadedApps"

    const-string v0, "There is no file : /efs/sec_efs/preloadinstalled.lst"

    .line 223
    invoke-static {p0, v0}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 227
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 230
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 231
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 232
    instance-of v4, v2, Ljava/util/HashSet;

    if-eqz v4, :cond_1

    .line 233
    move-object v3, v2

    check-cast v3, Ljava/util/HashSet;

    .line 235
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v3, :cond_2

    .line 239
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :cond_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 227
    :try_start_7
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_8
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method private listUpPreloadedApps()V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->addPreloadInstalledPackages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->addDescriptionForRemovingPreloadApp()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 152
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 155
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 158
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 160
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 168
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setList(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method private listUpSystemApps()V
    .locals 5

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 176
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 177
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 181
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setList(Ljava/util/List;)V

    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 211
    new-instance v0, Lcom/samsung/android/settings/widget/SecIconResizer;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecIconResizer;-><init>(Landroid/content/Context;)V

    .line 212
    sget p0, Lcom/android/settings/R$dimen;->sec_widget_list_app_icon_size:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecIconResizer;->setIconSize(I)V

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecIconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private setList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;-><init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 199
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 202
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 203
    new-instance v3, Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 204
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startAsyncTask(Z)V
    .locals 1

    .line 96
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;-><init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Z)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 129
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    .line 60
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->menu_show_system:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->menu_hide_system:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 67
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 68
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const v2, 0x44b59fe

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x44b59fe

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 83
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 88
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V

    .line 92
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
