.class public Lcom/samsung/android/media/codec/SemVideoTranscodingService;
.super Ljava/lang/Object;
.source "SemVideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;,
        Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;
    }
.end annotation


# static fields
.field private static final blacklist RECORDING_MODE_SLOW_MOTION:I = 0x1

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2:I = 0xc

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2_120:I = 0xd

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2_HEVC:I = 0x15

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2_WITHOUT_SVC:I = 0xf

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2_WITHOUT_SVC_240:I = 0x13

.field private static final blacklist TAG:Ljava/lang/String; = "SemVideoTranscodingService"

.field public static final whitelist TRANSCODING_MODE_HDR_TO_SDR:I = 0x0

.field public static final blacklist TRANSCODING_MODE_P3_TO_SRGB:I = 0x64

.field public static final whitelist TRANSCODING_MODE_SLOW_MOTION_TO_NORMAL:I = 0x1


# instance fields
.field private blacklist mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisSupportedHdrToSdr()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->isSupportedHdrToSdr()Z

    move-result v0

    return v0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const-string v0, "SemVideoTranscodingService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 333
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/media/codec/IVideoTranscodingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/codec/IVideoTranscodingService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    .line 334
    return-void
.end method

.method private static blacklist isSupportedHdrToSdr()Z
    .locals 3

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "result":Z
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x186a0

    if-lt v1, v2, :cond_0

    .line 376
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HDR2SDR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 378
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportedHdrToSdr() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemVideoTranscodingService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v0
.end method


# virtual methods
.method public whitelist createClient(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;
    .locals 11
    .param p1, "mode"    # I
    .param p2, "inputPath"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .param p4, "progressCallback"    # Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemVideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 350
    const-string v0, "IVideoTranscodingService is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-object v2

    .line 354
    :cond_0
    const/4 v3, 0x0

    .line 356
    .local v3, "id":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0, p1, p4}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->register(ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 357
    if-nez v3, :cond_1

    .line 358
    const-string v0, "id is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-object v2

    .line 365
    :cond_1
    nop

    .line 367
    new-instance v0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    iget-object v5, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    move-object v4, v0

    move-object v6, v3

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    return-object v0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Exception createClient()"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 364
    return-object v2
.end method
