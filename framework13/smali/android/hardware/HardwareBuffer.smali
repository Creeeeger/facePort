.class public final Landroid/hardware/HardwareBuffer;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/HardwareBuffer$Usage;,
        Landroid/hardware/HardwareBuffer$Format;
    }
.end annotation


# static fields
.field public static final whitelist BLOB:I = 0x21

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DS_24UI8:I = 0x32

.field public static final whitelist DS_FP32UI8:I = 0x34

.field public static final whitelist D_16:I = 0x30

.field public static final whitelist D_24:I = 0x31

.field public static final whitelist D_FP32:I = 0x33

.field public static final whitelist RGBA_1010102:I = 0x2b

.field public static final whitelist RGBA_8888:I = 0x1

.field public static final whitelist RGBA_FP16:I = 0x16

.field public static final whitelist RGBX_8888:I = 0x2

.field public static final whitelist RGB_565:I = 0x4

.field public static final whitelist RGB_888:I = 0x3

.field public static final whitelist S_UI8:I = 0x35

.field public static final whitelist USAGE_COMPOSER_OVERLAY:J = 0x800L

.field public static final whitelist USAGE_CPU_READ_OFTEN:J = 0x3L

.field public static final whitelist USAGE_CPU_READ_RARELY:J = 0x2L

.field public static final whitelist USAGE_CPU_WRITE_OFTEN:J = 0x30L

.field public static final whitelist USAGE_CPU_WRITE_RARELY:J = 0x20L

.field public static final whitelist USAGE_FRONT_BUFFER:J = 0x100000000L

.field public static final whitelist USAGE_GPU_COLOR_OUTPUT:J = 0x200L

.field public static final whitelist USAGE_GPU_CUBE_MAP:J = 0x2000000L

.field public static final whitelist USAGE_GPU_DATA_BUFFER:J = 0x1000000L

.field public static final whitelist USAGE_GPU_MIPMAP_COMPLETE:J = 0x4000000L

.field public static final whitelist USAGE_GPU_SAMPLED_IMAGE:J = 0x100L

.field public static final whitelist USAGE_PROTECTED_CONTENT:J = 0x4000L

.field public static final whitelist USAGE_SENSOR_DIRECT_DATA:J = 0x800000L

.field public static final whitelist USAGE_VIDEO_ENCODE:J = 0x10000L

.field public static final whitelist YCBCR_420_888:I = 0x23

.field public static final whitelist YCBCR_P010:I = 0x36


# instance fields
.field private greylist-max-o mCleaner:Ljava/lang/Runnable;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-r mNativeObject:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnReadHardwareBufferFromParcel(Landroid/os/Parcel;)J
    .locals 2

    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->nReadHardwareBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 395
    new-instance v0, Landroid/hardware/HardwareBuffer$1;

    invoke-direct {v0}, Landroid/hardware/HardwareBuffer$1;-><init>()V

    sput-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-p <init>(J)V
    .locals 11
    .param p1, "nativeObject"    # J

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 266
    iput-wide p1, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    .line 267
    invoke-static {p1, p2}, Landroid/hardware/HardwareBuffer;->nEstimateSize(J)J

    move-result-wide v7

    .line 268
    .local v7, "bufferSize":J
    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 269
    .local v9, "loader":Ljava/lang/ClassLoader;
    new-instance v10, Llibcore/util/NativeAllocationRegistry;

    .line 270
    invoke-static {}, Landroid/hardware/HardwareBuffer;->nGetNativeFinalizer()J

    move-result-wide v3

    move-object v1, v10

    move-object v2, v9

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    .line 271
    .local v1, "registry":Llibcore/util/NativeAllocationRegistry;
    iget-wide v2, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-virtual {v1, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    .line 272
    const-string v2, "HardwareBuffer.close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/hardware/HardwareBuffer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-void
.end method

.method public static whitelist create(IIIIJ)Landroid/hardware/HardwareBuffer;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "layers"    # I
    .param p4, "usage"    # J

    .line 191
    invoke-static {p2}, Landroid/hardware/HardwareBuffer;->isSupportedFormat(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    if-lez p0, :cond_5

    .line 197
    if-lez p1, :cond_4

    .line 200
    if-lez p3, :cond_3

    .line 203
    const/16 v0, 0x21

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be 1 when using the BLOB format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p5}, Landroid/hardware/HardwareBuffer;->nCreateHardwareBuffer(IIIIJ)J

    move-result-wide v0

    .line 207
    .local v0, "nativeObject":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 212
    new-instance v2, Landroid/hardware/HardwareBuffer;

    invoke-direct {v2, v0, v1}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-object v2

    .line 208
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to create a HardwareBuffer, either the dimensions passed were too large, too many image layers were requested, or an invalid set of usage flags or invalid format was passed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .end local v0    # "nativeObject":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid layer count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pixel format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;
    .locals 3
    .param p0, "graphicBuffer"    # Landroid/graphics/GraphicBuffer;

    .line 256
    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->nCreateFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)J

    move-result-wide v0

    .line 257
    .local v0, "nativeObject":J
    new-instance v2, Landroid/hardware/HardwareBuffer;

    invoke-direct {v2, v0, v1}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-object v2
.end method

.method public static whitelist isSupported(IIIIJ)Z
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "layers"    # I
    .param p4, "usage"    # J

    .line 229
    invoke-static {p2}, Landroid/hardware/HardwareBuffer;->isSupportedFormat(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    if-lez p0, :cond_4

    .line 235
    if-lez p1, :cond_3

    .line 238
    if-lez p3, :cond_2

    .line 241
    const/16 v0, 0x21

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be 1 when using the BLOB format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p5}, Landroid/hardware/HardwareBuffer;->nIsSupported(IIIIJ)Z

    move-result v0

    return v0

    .line 239
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid layer count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pixel format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o isSupportedFormat(I)Z
    .locals 1
    .param p0, "format"    # I

    .line 419
    sparse-switch p0, :sswitch_data_0

    .line 437
    const/4 v0, 0x0

    return v0

    .line 435
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x16 -> :sswitch_0
        0x21 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2b -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
    .end sparse-switch
.end method

.method private static native blacklist nCreateFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)J
.end method

.method private static native greylist-max-o nCreateHardwareBuffer(IIIIJ)J
.end method

.method private static native blacklist nEstimateSize(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFormat(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetHeight(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetLayers(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetNativeFinalizer()J
.end method

.method private static native greylist-max-o nGetUsage(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetWidth(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nIsSupported(IIIIJ)Z
.end method

.method private static native greylist-max-o nReadHardwareBufferFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nWriteHardwareBufferToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 350
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    .line 353
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    .line 356
    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 278
    :try_start_0
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 279
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 282
    throw v0
.end method

.method public whitelist getFormat()I
    .locals 2

    .line 312
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetFormat(J)I

    move-result v0

    return v0

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This HardwareBuffer has been closed and its format cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHeight()I
    .locals 2

    .line 300
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetHeight(J)I

    move-result v0

    return v0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This HardwareBuffer has been closed and its height cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLayers()I
    .locals 2

    .line 323
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetLayers(J)I

    move-result v0

    return v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This HardwareBuffer has been closed and its layer count cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUsage()J
    .locals 2

    .line 334
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetUsage(J)J

    move-result-wide v0

    return-wide v0

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This HardwareBuffer has been closed and its usage cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getWidth()I
    .locals 2

    .line 289
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetWidth(J)I

    move-result v0

    return v0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This HardwareBuffer has been closed and its width cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isClosed()Z
    .locals 4

    .line 368
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 388
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/hardware/HardwareBuffer;->nWriteHardwareBufferToParcel(JLandroid/os/Parcel;)V

    .line 393
    return-void

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This HardwareBuffer has been closed and cannot be written to a parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
