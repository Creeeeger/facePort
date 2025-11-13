.class public Lcom/samsung/android/core/CompatChangeableApps;
.super Lcom/samsung/android/core/ICompatChangeableManager$Stub;
.source "CompatChangeableApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/CompatChangeableApps$OrientationOverrideDisallowedLazyHolder;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "CompatChangeableApps"


# instance fields
.field private final blacklist mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/core/CompatChangeablePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDummyInfo:Lcom/samsung/android/core/CompatChangeablePackageInfo;

.field private final blacklist mPlatformCompat:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/internal/compat/IPlatformCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/core/CompatChangeableApps;-><init>(IZ)V

    return-void
.end method

.method public constructor blacklist <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/core/ICompatChangeableManager$Stub;-><init>()V

    new-instance v0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    invoke-direct {v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->build()Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mDummyInfo:Lcom/samsung/android/core/CompatChangeablePackageInfo;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/core/CompatChangeableApps$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/core/CompatChangeableApps$1;-><init>(Lcom/samsung/android/core/CompatChangeableApps;)V

    iput-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mPlatformCompat:Landroid/util/Singleton;

    iput p1, p0, Lcom/samsung/android/core/CompatChangeableApps;->mUserId:I

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/core/CompatChangeableApps;->updateCompatChangeablePackageInfoList(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private blacklist getCachedInfo(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/core/CompatChangeableApps;->updateCompatChangeablePackageInfoList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mDummyInfo:Lcom/samsung/android/core/CompatChangeablePackageInfo;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/core/CompatChangeablePackageInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/core/CompatChangeableApps;->updateCompatChangeablePackageInfoList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-object v2, v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mDummyInfo:Lcom/samsung/android/core/CompatChangeablePackageInfo;

    :goto_1
    return-object v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static blacklist isOrientationOverrideDisallowedPackage(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/core/CompatChangeableApps$OrientationOverrideDisallowedLazyHolder;->sList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSamsungPackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "com.samsung."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist printList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_2

    add-int/lit8 v4, v2, 0x1

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ", "

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static blacklist readComponentProperty(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist updateCompatChangeablePackageInfoList(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/core/CompatChangeableApps;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityTaskManager;->getCompatChangeablePackageInfoList(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/core/CompatChangeablePackageInfo;

    iget-object v5, v4, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist containsCache(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist containsOverride(JLjava/lang/String;)Z
    .locals 4

    const-string v0, "CompatChangeableApps"

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const-string v2, "containsOverride: PackageName is null."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/core/CompatChangeableApps;->mPlatformCompat:Landroid/util/Singleton;

    invoke-virtual {v2}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/IPlatformCompat;

    if-nez v2, :cond_1

    const-string v3, "containsOverride: PlatformCompat is null."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->containsOverride(JLjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    iget-object v6, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    monitor-enter v6

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/core/CompatChangeablePackageInfo;

    iget-boolean v10, v9, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mHasGameCategory:Z

    if-eqz v10, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    iget-boolean v10, v9, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mHasLauncherActivity:Z

    if-eqz v10, :cond_2

    move-object v10, v1

    goto :goto_1

    :cond_2
    move-object v10, v5

    :goto_1
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v11, v9, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsOrientationOverrideDisallowed:Z

    if-eqz v11, :cond_3

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v11, v9, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsMinAspectRatioOverrideDisallowed:Z

    if-eqz v11, :cond_4

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_0

    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LauncherActivities(u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p2, v6, v1}, Lcom/samsung/android/core/CompatChangeableApps;->printList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Games(u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p2, v6, v2}, Lcom/samsung/android/core/CompatChangeableApps;->printList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Others(u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p2, v6, v5}, Lcom/samsung/android/core/CompatChangeableApps;->printList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OrientationOverrideDisallowedList(u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p2, v6, v3}, Lcom/samsung/android/core/CompatChangeableApps;->printList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MinAspectRatioOverrideDisallowedList(u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p2, v6, v4}, Lcom/samsung/android/core/CompatChangeableApps;->printList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public blacklist getCompatChangeablePackageNameList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/core/CompatChangeableApps;->updateCompatChangeablePackageInfoList(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public blacklist getUid(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/core/CompatChangeableApps;->getCachedInfo(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mUid:I

    return v0
.end method

.method public blacklist hasGameCategory(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/core/CompatChangeableApps;->getCachedInfo(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mHasGameCategory:Z

    return v0
.end method

.method public blacklist hasLauncherActivity(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/core/CompatChangeableApps;->getCachedInfo(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mHasLauncherActivity:Z

    return v0
.end method

.method public blacklist isMinAspectRatioOverrideDisallowed(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/core/CompatChangeableApps;->isSamsungPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/core/CompatChangeableApps;->getCachedInfo(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object v0

    iget-boolean v2, v0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsMinAspectRatioOverrideDisallowed:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsActivityEmbeddingSplitsEnabled:Z

    if-nez v2, :cond_2

    const-wide/32 v2, 0xa5faf64

    invoke-virtual {p0, v2, v3, p1}, Lcom/samsung/android/core/CompatChangeableApps;->containsOverride(JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-wide/32 v2, 0x13680faa

    invoke-virtual {p0, v2, v3, p1}, Lcom/samsung/android/core/CompatChangeableApps;->containsOverride(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method public blacklist isOrientationOverrideDisallowed(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/core/CompatChangeableApps;->isOrientationOverrideDisallowedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/core/CompatChangeableApps;->getCachedInfo(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsOrientationOverrideDisallowed:Z

    if-nez v0, :cond_1

    const-wide/32 v0, 0xe1566d4

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/core/CompatChangeableApps;->containsOverride(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isResizeableActivityOverrideDisallowed(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/core/CompatChangeableApps;->getCachedInfo(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsResizeableActivityOverrideDisallowed:Z

    if-nez v0, :cond_1

    const-wide/32 v0, 0xa5faf38

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/core/CompatChangeableApps;->containsOverride(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0xacbec0b

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/core/CompatChangeableApps;->containsOverride(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist removeCache(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/core/CompatChangeableApps;->mCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
