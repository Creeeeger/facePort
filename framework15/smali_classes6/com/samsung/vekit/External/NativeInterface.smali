.class public Lcom/samsung/vekit/External/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# static fields
.field private static final blacklist MAX_ALLOWED_INSTANCES:I = 0x1

.field private static blacklist sInstanceIdCnt:Ljava/lang/Integer;

.field private static final blacklist sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/vekit/External/NativeInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mInstanceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/vekit/External/NativeLibSetup;

    invoke-direct {v0}, Lcom/samsung/vekit/External/NativeLibSetup;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeLibSetup;->init()V

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vekit/External/NativeInterface;->mInstanceId:I

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/vekit/External/NativeInterface;
    .locals 7

    const-class v0, Lcom/samsung/vekit/External/NativeInterface;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    sget-object v3, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    new-instance v5, Lcom/samsung/vekit/External/NativeInterface;

    sget-object v6, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/vekit/External/NativeInterface;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    sget-object v5, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/External/NativeInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    const-string v2, "NativeInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR already Max native interface instances("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") running"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist releaseInstance(Lcom/samsung/vekit/External/NativeInterface;)V
    .locals 3

    const-class v0, Lcom/samsung/vekit/External/NativeInterface;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    iget v2, p0, Lcom/samsung/vekit/External/NativeInterface;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method


# virtual methods
.method public native blacklist animate()V
.end method

.method public native blacklist attach(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native blacklist attach(Lcom/samsung/vekit/Common/Object/Element;II)V
.end method

.method public native blacklist attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public native blacklist attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native blacklist attachStroke(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
.end method

.method public native blacklist cancelAnimation()V
.end method

.method public native blacklist captureAnimatedFrame(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
.end method

.method public native blacklist captureLatestFrame(II)Landroid/graphics/Bitmap;
.end method

.method public native blacklist captureStaticDoodle(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
.end method

.method public native blacklist captureSuperHDRFrame(Lcom/samsung/vekit/Common/Object/Element;IIII)Landroid/graphics/Bitmap;
.end method

.method public native blacklist changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;II)V
.end method

.method public native blacklist changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V
.end method

.method public native blacklist changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V
.end method

.method public native blacklist changePortraitVideoKeyFrameList(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation
.end method

.method public native blacklist clear(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native blacklist clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native blacklist create(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native blacklist createFramework(Lcom/samsung/vekit/Control/VEController;)V
.end method

.method public native blacklist deletePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native blacklist detach(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native blacklist detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native blacklist detachStroke(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native blacklist drawDoodle(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public native blacklist finalizeFramework()V
.end method

.method public native blacklist finishDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native blacklist getCurrentAnalyzedPosition()J
.end method

.method public native blacklist getCurrentMediaPosition()J
.end method

.method public native blacklist getExportPosition()J
.end method

.method public native blacklist getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
.end method

.method public native blacklist initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V
.end method

.method public native blacklist loadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
.end method

.method public native blacklist loadDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native blacklist pause()V
.end method

.method public native blacklist pauseAnalyze()J
.end method

.method public native blacklist pauseExport()J
.end method

.method public native blacklist play()V
.end method

.method public native blacklist releaseFramework()V
.end method

.method public native blacklist remove(Lcom/samsung/vekit/Common/Type/ElementType;I)V
.end method

.method public native blacklist resumeAnalyze(J)V
.end method

.method public native blacklist resumeExport(J)V
.end method

.method public native blacklist saveDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native blacklist seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V
.end method

.method public native blacklist setAnalyzeInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V
.end method

.method public native blacklist setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V
.end method

.method public native blacklist setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V
.end method

.method public native blacklist show()V
.end method

.method public native blacklist startAnalyze()V
.end method

.method public native blacklist startDoodle(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
.end method

.method public native blacklist stop()V
.end method

.method public native blacklist stopAnalyze()V
.end method

.method public native blacklist swap(Lcom/samsung/vekit/Common/Object/Element;II)V
.end method

.method public native blacklist unloadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
.end method

.method public native blacklist update(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native blacklist updateViewport(IIII)V
.end method
