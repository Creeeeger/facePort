.class public Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
.super Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field public apkFile:Ljava/io/File;

.field public externalSize:J

.field public externalSizeStr:Ljava/lang/String;

.field public extraInfo:Ljava/lang/Object;

.field public hasLauncherEntry:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final id:J

.field public info:Landroid/content/pm/ApplicationInfo;

.field public internalSize:J

.field public internalSizeStr:Ljava/lang/String;

.field public isHomeApp:Z

.field public label:Ljava/lang/String;

.field public labelDescription:Ljava/lang/String;

.field public launcherEntryEnabled:Z

.field public mounted:Z

.field public normalizedLabel:Ljava/lang/String;

.field public size:J

.field public sizeLoadStart:J

.field public sizeStale:Z

.field public sizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 3

    .line 2125
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2129
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SRC null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationsState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    goto :goto_0

    .line 2133
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    goto :goto_0

    .line 2136
    :cond_1
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 2139
    :goto_0
    iput-wide p3, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    .line 2140
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const-wide/16 p2, -0x1

    .line 2141
    iput-wide p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const/4 p2, 0x1

    .line 2142
    iput-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 2143
    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z
    .locals 3

    .line 2224
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smisAppIconCacheEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2227
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2230
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2234
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    return v2

    .line 2238
    :cond_1
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    const p2, 0x1080af5

    .line 2239
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2241
    :cond_2
    iget-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez p1, :cond_3

    .line 2246
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2248
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 2251
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public ensureLabel(Landroid/content/Context;)V
    .locals 10

    const-string v0, "last_updated"

    .line 2158
    iget-wide v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string/jumbo p1, "\u200b"

    .line 2160
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto/16 :goto_4

    .line 2161
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v1, :cond_a

    .line 2163
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2165
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 2166
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto/16 :goto_4

    :cond_2
    const/4 v1, 0x1

    .line 2168
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    const/4 v3, 0x0

    .line 2174
    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppLabelCache:Ljava/util/HashMap;

    const-string v5, "ApplicationsState"

    if-eqz v4, :cond_5

    .line 2175
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;

    if-eqz v4, :cond_4

    .line 2178
    :try_start_0
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 2179
    iget-wide v6, v4, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->lastUpdateTime:J

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 2180
    iget-object v3, v4, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->label:Ljava/lang/String;

    goto :goto_0

    .line 2182
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " updated recently"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2185
    :cond_4
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " info.sourceDir == null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 2188
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_5
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2194
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_6
    move v1, v2

    .line 2198
    :goto_1
    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mAppLabelCache:Ljava/util/HashMap;

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    .line 2199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNewAppListForAppLabelCache.add : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 2201
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "package_name"

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "app_title"

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    :try_start_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 2205
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 2207
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2210
    :catch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2212
    :goto_2
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v3, :cond_9

    .line 2215
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_3
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :cond_a
    :goto_4
    return-void
.end method

.method public ensureLabelDescriptionLocked(Landroid/content/Context;)V
    .locals 4

    .line 2275
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2276
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2277
    sget v0, Lcom/android/settingslib/R$string;->accessibility_work_profile_app_description:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    goto :goto_0

    .line 2281
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getNormalizedLabel()Ljava/lang/String;
    .locals 1

    .line 2099
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2102
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    return-object v0
.end method
