.class public Lcom/samsung/android/settings/homepage/TopLevelCacheManager;
.super Ljava/lang/Object;
.source "TopLevelCacheManager.java"


# static fields
.field private static sTopLevelCacheManager:Lcom/samsung/android/settings/homepage/TopLevelCacheManager;


# instance fields
.field private mControllerLoaded:Z

.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/core/BasePreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->mControllerLoaded:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->mControllers:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/settings/homepage/TopLevelCacheManager;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->sTopLevelCacheManager:Lcom/samsung/android/settings/homepage/TopLevelCacheManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->sTopLevelCacheManager:Lcom/samsung/android/settings/homepage/TopLevelCacheManager;

    .line 32
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->sTopLevelCacheManager:Lcom/samsung/android/settings/homepage/TopLevelCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createControllersFromXml(Landroid/content/Context;)V
    .locals 1

    .line 41
    :try_start_0
    sget v0, Lcom/android/settings/R$xml;->sec_top_level_settings:I

    .line 42
    invoke-static {p1, v0}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->mControllers:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->mControllerLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getControllers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/core/BasePreferenceController;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public isControllerLoaded()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->mControllerLoaded:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->mControllers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->mControllerLoaded:Z

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->mControllers:Ljava/util/List;

    :cond_0
    return-void
.end method
