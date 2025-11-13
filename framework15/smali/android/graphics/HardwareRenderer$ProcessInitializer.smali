.class Landroid/graphics/HardwareRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation


# static fields
.field static blacklist sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplayInitialized:Z

.field private final blacklist mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private blacklist mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

.field private blacklist mGraphicsStatsService:Landroid/view/IGraphicsStats;

.field private blacklist mInitialized:Z

.field private blacklist mIsolated:Z

.field private blacklist mLargestHeight:I

.field private blacklist mLargestWidth:I

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/graphics/HardwareRenderer$ProcessInitializer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLargestHeight(Landroid/graphics/HardwareRenderer$ProcessInitializer;)I
    .locals 0

    iget p0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLargestWidth(Landroid/graphics/HardwareRenderer$ProcessInitializer;)I
    .locals 0

    iget p0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLargestHeight(Landroid/graphics/HardwareRenderer$ProcessInitializer;I)V
    .locals 0

    iput p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLargestWidth(Landroid/graphics/HardwareRenderer$ProcessInitializer;I)V
    .locals 0

    iput p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrotateBuffer(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->rotateBuffer()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    new-instance v1, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;

    invoke-direct {v1, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;-><init>(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V

    iput-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    iput v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestWidth:I

    iput v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestHeight:I

    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;

    invoke-direct {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;-><init>(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method private blacklist initDisplayInfo()V
    .locals 27

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    return-void

    :cond_1
    iget-object v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const-string v3, "HardwareRenderer"

    if-nez v1, :cond_2

    const-string v2, "Failed to find DisplayManager for display-based configuration"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v2, "Failed to find default display for display-based configuration"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Landroid/graphics/HardwareRenderer;->-$$Nest$sfgetUSE_LOGICAL_SCREEN_RESOLUTION()Z

    move-result v6

    const-string v7, ")"

    const-string/jumbo v8, "x"

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-interface {v6, v9}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    iget v6, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestWidth:I

    if-eqz v6, :cond_4

    iget v6, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestHeight:I

    if-eqz v6, :cond_4

    iput-boolean v2, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set largestWidth and largestHeight as logical resolution. ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mLargestHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v6

    array-length v9, v6

    if-nez v9, :cond_5

    const-string v2, "Failed to query displays"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {v5}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v9

    nop

    invoke-virtual {v5}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v4

    goto :goto_0

    :cond_6
    nop

    :goto_0
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/Display;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v13

    const/4 v14, 0x0

    :goto_1
    array-length v15, v6

    if-ge v14, v15, :cond_a

    aget-object v15, v6, v14

    if-nez v4, :cond_7

    invoke-virtual {v15}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v4

    :cond_7
    invoke-virtual {v15}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v2

    const/16 v16, 0x0

    move-object/from16 v26, v1

    move/from16 v1, v16

    :goto_2
    move/from16 v16, v4

    array-length v4, v2

    if-ge v1, v4, :cond_9

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v17

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v18

    move-object/from16 v19, v2

    mul-int v2, v17, v18

    move-object/from16 v20, v4

    mul-int v4, v11, v12

    if-le v2, v4, :cond_8

    move/from16 v11, v17

    move/from16 v12, v18

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v16

    move-object/from16 v2, v19

    goto :goto_2

    :cond_9
    move-object/from16 v19, v2

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v16

    move-object/from16 v1, v26

    const/4 v2, 0x1

    goto :goto_1

    :cond_a
    move-object/from16 v26, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set largestWidth and largestHeight as physical resolution. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/view/Display;->getRefreshRate()F

    move-result v17

    invoke-virtual {v5}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v19

    invoke-virtual {v5}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    move-result-wide v21

    const/high16 v1, 0x18810000

    const/16 v2, 0x16

    invoke-virtual {v13, v1, v2}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v23

    const/high16 v1, 0xa0000

    const/high16 v2, 0x800000

    const/high16 v3, 0x18000000

    invoke-static {v1, v2, v3}, Landroid/hardware/DataSpace;->pack(III)I

    move-result v1

    const/16 v2, 0x3b

    invoke-virtual {v13, v1, v2}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v24

    invoke-virtual {v13}, Landroid/hardware/OverlayProperties;->isMixedColorSpacesSupported()Z

    move-result v25

    move v15, v11

    move/from16 v16, v12

    move/from16 v18, v4

    invoke-static/range {v15 .. v25}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnInitDisplayInfo(IIFIJJZZZ)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    return-void
.end method

.method private blacklist initGraphicsStats()V
    .locals 3

    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "graphicsstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist initSched(J)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnGetRenderThreadTid(J)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HardwareRenderer"

    const-string v2, "Failed to set scheduler for RenderThread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist requestBuffer()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v0, v1, v2}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetProcessStatsBuffer(I)V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist rotateBuffer()V
    .locals 0

    invoke-static {}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnRotateProcessStatsBuffer()V

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Landroid/graphics/HardwareRenderer;->-$$Nest$sfgetUSE_LOGICAL_SCREEN_RESOLUTION()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method declared-synchronized blacklist init(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    invoke-direct {p0, p1, p2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initSched(J)V

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initGraphicsStats()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist initUsingContext()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initDisplayInfo()V

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetIsHighEndGfx(Z)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetIsLowRam(Z)V

    invoke-static {}, Landroid/graphics/HardwareRenderer;->-$$Nest$sfgetUSE_LOGICAL_SCREEN_RESOLUTION()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v4, 0x7

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized blacklist setContext(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist setIsolated(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist setPackageName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
