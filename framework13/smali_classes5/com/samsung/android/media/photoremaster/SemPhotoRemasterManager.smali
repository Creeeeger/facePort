.class public Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
.super Ljava/lang/Object;
.source "SemPhotoRemasterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;
    }
.end annotation


# static fields
.field public static final whitelist PARAMETER_AMOUNT_REMASTER_IMAGES:I = 0x3ee

.field private static final blacklist PARAMETER_ENGINE_VERSION:I = 0x3e8

.field public static final whitelist PARAMETER_ENUM_ENHANCE_TYPE:I = 0x899

.field public static final whitelist PARAMETER_LAST_MODIFIED_DATETIME_INPUT:I = 0x3ec

.field public static final whitelist PARAMETER_PATH_INPUT:I = 0x3ea

.field public static final whitelist PARAMETER_PATH_RESULT:I = 0x3eb

.field public static final whitelist PARAMETER_SCENETYPE_INPUT:I = 0x3ed

.field public static final whitelist PARAMETER_TAG_ANALYZED_FULL:I = 0x835

.field public static final whitelist PARAMETER_TAG_ENHANCE_TYPE:I = 0x836

.field public static final whitelist PARAMETER_TAG_REVITALIZED:I = 0x837

.field public static final whitelist PARAMETER_URI_INPUT:I = 0x3e9

.field private static final blacklist TAG:Ljava/lang/String; = "SemPhotoRemasterManager"

.field private static blacklist sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized blacklist getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;
    .locals 3

    const-class v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;

    if-nez v1, :cond_0

    .line 129
    const-string v1, "SemPhotoRemasterManager"

    const-string v2, "New Instance is created in getEngineInstance"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;-><init>()V

    sput-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;

    .line 132
    :cond_0
    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized blacklist releaseEngineInstance()V
    .locals 4

    monitor-enter p0

    .line 141
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 140
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist deinit()V
    .locals 4

    monitor-enter p0

    .line 159
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->deinit()V

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->releaseEngineInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 158
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist getParameter(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 299
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 301
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 302
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_1

    .line 303
    :try_start_1
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 304
    :cond_1
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_2

    .line 305
    :try_start_2
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 306
    :cond_2
    const/16 v0, 0x835

    if-ne p1, v0, :cond_3

    .line 307
    :try_start_3
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 308
    :cond_3
    const/16 v0, 0x836

    if-ne p1, v0, :cond_4

    .line 309
    :try_start_4
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 310
    :cond_4
    const/16 v0, 0x837

    if-ne p1, v0, :cond_5

    .line 311
    :try_start_5
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 312
    :cond_5
    const/16 v0, 0x899

    if-ne p1, v0, :cond_7

    .line 313
    :try_start_6
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    .line 314
    .local v0, "director":Lcom/samsung/android/photoremaster/IDirector;
    instance-of v1, v0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    if-eqz v1, :cond_6

    .line 315
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    .line 316
    .local v1, "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    invoke-virtual {v1, p1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->getLongParam(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v2

    .line 318
    .end local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_6
    :try_start_7
    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getIntParam(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v1

    .line 320
    .end local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    :cond_7
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_8

    .line 321
    :try_start_8
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    .line 322
    .restart local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    .line 323
    .restart local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    invoke-virtual {v1, p1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->getLongParam(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v2

    .line 325
    .end local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    .end local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_8
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 298
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 151
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 150
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist processAestheticScoring()F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 231
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->processAestheticScoring()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 230
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist processImage(II)Z
    .locals 4
    .param p1, "processMode"    # I
    .param p2, "enhanceMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 184
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->processImage(II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 183
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "processMode":I
    .end local p2    # "enhanceMode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist processImage(ILjava/util/List;)Z
    .locals 4
    .param p1, "processMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .local p2, "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 210
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    .line 213
    .local v0, "director":Lcom/samsung/android/photoremaster/IDirector;
    instance-of v1, v0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    if-nez v1, :cond_0

    .line 214
    const-string v1, "SemPhotoRemasterManager"

    const-string/jumbo v2, "processImage(int, List<Integer>) is not supported below OneUI 4.1"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return v3

    .line 218
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_0
    :try_start_1
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    .line 219
    .local v1, "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->processImage(ILjava/util/List;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    .line 209
    .end local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    .end local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .end local p1    # "processMode":I
    .end local p2    # "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # J

    monitor-enter p0

    .line 272
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/photoremaster/IDirector;->setLongParam(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 271
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "id":I
    .end local p2    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(ILjava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 243
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->setObjectParam(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 242
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 257
    :try_start_0
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->setStringParam(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 256
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setProgressUpdateListener(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;

    monitor-enter p0

    .line 357
    if-nez p1, :cond_0

    .line 358
    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 362
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 356
    .end local p1    # "listener":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist stop()V
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPhotoRemasterManager"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->stop()V

    .line 172
    return-void
.end method
