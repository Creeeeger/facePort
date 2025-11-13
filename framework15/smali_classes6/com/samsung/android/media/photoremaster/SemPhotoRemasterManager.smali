.class public Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
.super Ljava/lang/Object;
.source "SemPhotoRemasterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IBitmapParamGetter;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist PARAMETER_AMOUNT_REMASTER_IMAGES:I = 0x3ee

.field private static final blacklist PARAMETER_DISABLE_POSTPROCESSING:I = 0x3f9

.field private static final blacklist PARAMETER_DISABLE_PREPROCESSING:I = 0x3f8

.field private static final blacklist PARAMETER_ENGINE_VERSION:I = 0x3e8

.field public static final whitelist PARAMETER_ENHANCEMENT_STRENGTH:I = 0x3f4

.field public static final whitelist PARAMETER_ENHANCERS_EXCLUDE_LIST:I = 0x3f1

.field public static final whitelist PARAMETER_ENHANCERS_INCLUDE_LIST:I = 0x3f5

.field public static final whitelist PARAMETER_ENUM_ENHANCE_TYPE:I = 0x899

.field private static final blacklist PARAMETER_EXTRA_JSON:I = 0x3f7

.field public static final whitelist PARAMETER_GIF_SAVE_FORMAT:I = 0x3f2

.field public static final whitelist PARAMETER_INPUT_BITMAP:I = 0x3f6

.field public static final whitelist PARAMETER_JPEG_QUALITY:I = 0x3f0

.field public static final whitelist PARAMETER_LAST_MODIFIED_DATETIME_INPUT:I = 0x3ec

.field public static final whitelist PARAMETER_OUTPUT_BITMAP:I = 0x89b

.field public static final whitelist PARAMETER_PATH_INPUT:I = 0x3ea

.field public static final whitelist PARAMETER_PATH_RESULT:I = 0x3eb

.field public static final whitelist PARAMETER_SCENETYPE_INPUT:I = 0x3ed

.field public static final whitelist PARAMETER_SERVICE_PURPOSE:I = 0x3f3

.field public static final whitelist PARAMETER_SET_OUTPUT_DIR:I = 0x3ef

.field public static final whitelist PARAMETER_TAG_ANALYZED_FULL:I = 0x835

.field public static final whitelist PARAMETER_TAG_ENHANCE_TYPE:I = 0x836

.field public static final whitelist PARAMETER_TAG_REVITALIZED:I = 0x837

.field public static final whitelist PARAMETER_TAG_SUGGESTION_ENHANCE_LIST:I = 0x89a

.field public static final whitelist PARAMETER_URI_INPUT:I = 0x3e9

.field private static final blacklist TAG:Ljava/lang/String; = "SemPhotoRemasterManager"

.field private static blacklist sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;


# instance fields
.field private final blacklist mParamGetterType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetEngineInstance()Lcom/samsung/android/photoremaster/IDirector;
    .locals 1

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    return-object v0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;)V

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->mParamGetterType:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized blacklist getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;
    .locals 3

    const-class v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;

    if-nez v1, :cond_0

    const-string v1, "SemPhotoRemasterManager"

    const-string v2, "New Instance is created in getEngineInstance"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;-><init>()V

    sput-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;

    :cond_0
    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized blacklist releaseEngineInstance()V
    .locals 5

    const-class v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "SemPhotoRemasterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is called!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized whitelist deinit()V
    .locals 4

    monitor-enter p0

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

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->deinit()V

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->releaseEngineInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist getBitmapParameter(I)Landroid/graphics/Bitmap;
    .locals 4

    monitor-enter p0

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

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->mParamGetterType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;->getParam()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist getFocusRoi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

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

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->getFocusRoi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist getParameter(I)Ljava/lang/String;
    .locals 4

    monitor-enter p0

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

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->mParamGetterType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;->getParam()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist init(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

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

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist processImage(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

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

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    if-nez v1, :cond_0

    const-string v1, "SemPhotoRemasterManager"

    const-string v2, "processImage(int, List<Integer>) is not supported below OneUI 4.1"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->processImage(ILjava/util/List;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(IJ)V
    .locals 4

    monitor-enter p0

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

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/photoremaster/IDirector;->setLongParam(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(ILandroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

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

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->setBitmapParam(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(ILjava/lang/Object;)V
    .locals 4

    monitor-enter p0

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

    instance-of v0, p2, Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/photoremaster/IDirector;->setUriParam(ILandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->setParameter(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to setParameter, value not of \'Uri\' type or bitmap type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(ILjava/lang/String;)V
    .locals 4

    monitor-enter p0

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

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->setStringParam(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setProgressUpdateListener(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$2;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist stop()V
    .locals 3

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

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->stop()V

    return-void
.end method

.method public declared-synchronized whitelist tryInit(Landroid/content/Context;)Z
    .locals 4

    monitor-enter p0

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

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->tryInit(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
