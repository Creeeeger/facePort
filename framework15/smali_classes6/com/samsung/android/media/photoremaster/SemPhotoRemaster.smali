.class public Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;
.super Ljava/lang/Object;
.source "SemPhotoRemaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;
    }
.end annotation


# static fields
.field private static final blacklist END_TO_END:I = 0x0

.field private static final blacklist ENHANCE_AND_SAVE:I = 0x2

.field private static final blacklist FIND_ENHANCEMENT_TYPE:I = 0x1

.field private static final blacklist RUN_O3DP_ENGINE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "PhotoRemaster"

.field private static final blacklist mStopLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

.field private blacklist mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;


# direct methods
.method public static synthetic blacklist $r8$lambda$MtUXLgkzRgCPHRkgJxDi_H9_rAk(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->lambda$getParameters$5(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rbOrf86k_xkuuWRdgzL1FGM0oLY(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->lambda$getParameters$2(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBuilder(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mStopLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-string v1, " is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoRemaster"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)V

    return-void
.end method

.method private blacklist doRemaster(ILjava/util/List;Landroid/content/Context;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;"
        }
    .end annotation

    const-string v0, "PhotoRemaster"

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

    const-string v2, " is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mStopLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    if-eqz v2, :cond_0

    const-string v2, "PhotoRemaster"

    const-string v3, "Error mServiceClient is not null at begin of doRemaster"

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    invoke-direct {v2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmTryInit(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "PhotoRemaster"

    const-string v4, "TryInit is started."

    invoke-static {v2, v4}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    invoke-virtual {v2, p3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->tryInit(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "PhotoRemaster"

    const-string v4, "Failed to tryInit()"

    invoke-static {v2, v4}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v3

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    invoke-virtual {v2, p3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->init(Landroid/content/Context;)V

    :cond_2
    invoke-direct {p0, p3}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->setParameters(Landroid/content/Context;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->processImage(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->getParameters()Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_4

    const-string v4, "PhotoRemaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raw Result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->-$$Nest$fgetmResultJson(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v4, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mStopLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v5, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    invoke-virtual {v5}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->deinit()V

    iput-object v3, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1
.end method

.method private blacklist getParameters()Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;
    .locals 5

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

    const-string v1, " is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoRemaster"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;

    iget-object v1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmBitmap(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    sget-object v3, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->OUTPUT_BITMAP:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    iget v3, v3, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ID:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->getBitmapParam(I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;-><init>(Landroid/graphics/Bitmap;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result-IA;)V

    iget-object v1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmRequestFocusRoi(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->FOCUS_ROI:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    iget v2, v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ID:I

    iget-object v3, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget-object v4, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v4}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmInputPathName(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->getFocusRoi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->-$$Nest$msetParameter(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;ILjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->values()[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->values()[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$getParameters$0(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->-$$Nest$fgetDATA_TYPE(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getParameters$1(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->-$$Nest$fgetONDEMAND(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$getParameters$2(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget v1, p2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ID:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStringParam("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoRemaster"

    invoke-static {v2, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ID:I

    invoke-static {p1, v1, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->-$$Nest$msetParameter(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$getParameters$3(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->-$$Nest$fgetDATA_TYPE(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->LONG:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getParameters$4(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->-$$Nest$fgetONDEMAND(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$getParameters$5(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget v1, p2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ID:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->getLongParam(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLongParam("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoRemaster"

    invoke-static {v2, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ID:I

    invoke-static {p1, v1, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->-$$Nest$msetParameter(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;ILjava/lang/String;)V

    return-void
.end method

.method private blacklist setParameters(Landroid/content/Context;)V
    .locals 7

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

    const-string v1, " is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoRemaster"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmBitmap(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x3f6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmBitmap(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->setBitmapParam(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$mupdateInputPath(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmInputPathName(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmInputUri(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmInputPathName(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->setStringParam(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmInputUri(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->setUriParam(ILandroid/net/Uri;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmStringParams(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->setStringParam(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmLongParams(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->setLongParam(IJ)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmBitmap(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmBitmap(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->setBitmapParam(ILandroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mBuilder:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-static {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmListener(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$1;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputPath is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist findEnhancementType(Landroid/content/Context;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;
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

    const-string v1, " is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoRemaster"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->doRemaster(ILjava/util/List;Landroid/content/Context;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;

    move-result-object v1

    return-object v1
.end method

.method public whitelist remaster(Landroid/content/Context;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;
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

    const-string v1, " is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoRemaster"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->doRemaster(ILjava/util/List;Landroid/content/Context;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;

    move-result-object v1

    return-object v1
.end method

.method public whitelist remaster(Ljava/util/List;Landroid/content/Context;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;"
        }
    .end annotation

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

    const-string v1, " is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoRemaster"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->doRemaster(ILjava/util/List;Landroid/content/Context;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;

    move-result-object v0

    return-object v0
.end method

.method public whitelist stop()Z
    .locals 4

    const-string v0, "PhotoRemaster"

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

    const-string v2, " is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "PhotoRemaster"

    const-string v3, "Service is already stopped."

    invoke-static {v1, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->mServiceClient:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->stop()V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
