.class public final Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
.super Ljava/lang/Object;
.source "ImgConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;,
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;,
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$MetaType;,
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Event;,
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;
    }
.end annotation


# static fields
.field public static final blacklist INFO_NO_INPUT_DATA:I = 0x1

.field public static final blacklist META_CHANGED_FORMAT:I = 0x3

.field public static final blacklist META_COLOR_ASPECTS:I = 0x2

.field public static final blacklist META_EOS_HINT:I = 0x5

.field public static final blacklist META_PREFER_HW:I = 0x4

.field public static final blacklist META_SEI:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ImgConverter"


# instance fields
.field private blacklist mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

.field private blacklist mMetaParametertypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mNativeContext:J

.field private blacklist mNativeEventListener:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

.field private blacklist mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 271
    const-string/jumbo v0, "simgp_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;)V
    .locals 1
    .param p1, "input"    # Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .param p2, "output"    # Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    .line 92
    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;

    invoke-direct {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;-><init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;)V

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;)V
    .locals 5
    .param p1, "input"    # Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .param p2, "output"    # Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .param p3, "option"    # Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    .line 98
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [B

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->registerMetaParameterType(I[Ljava/lang/Class;)V

    .line 99
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/util/HashMap;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->registerMetaParameterType(I[Ljava/lang/Class;)V

    .line 100
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/media/MediaFormat;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->registerMetaParameterType(I[Ljava/lang/Class;)V

    .line 101
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    aput-object v1, v0, v3

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->registerMetaParameterType(I[Ljava/lang/Class;)V

    .line 102
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->registerMetaParameterType(I[Ljava/lang/Class;)V

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImgConverter-event-listen"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    .line 105
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    iget-object v1, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    .line 108
    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    iget-object v1, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;-><init>(Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mNativeEventListener:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSetup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method private varargs blacklist checkMetaParameters(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 165
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v1, "type "

    if-eqz v0, :cond_3

    .line 167
    array-length v2, p2

    array-length v3, v0

    const-string v4, " required: "

    if-ne v2, v3, :cond_2

    .line 169
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 170
    aget-object v3, v0, v2

    aget-object v5, p2, v2

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 168
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " required: null, not supported"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist hdrToSdr(Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;I)Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;
    .locals 9
    .param p0, "src"    # Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;
    .param p1, "outColorSpace"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->getColorSpace()I

    move-result v0

    .line 229
    .local v0, "cs":I
    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->getWidth()I

    move-result v1

    .line 230
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->getHeight()I

    move-result v2

    .line 231
    .local v2, "height":I
    const/16 v3, 0x259

    if-eq v0, v3, :cond_1

    const/16 v3, 0x258

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "wrong color space"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_1
    :goto_0
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    .line 239
    const/4 v3, 0x6

    if-eq p1, v3, :cond_3

    const/4 v3, 0x7

    if-eq p1, v3, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/16 v3, 0x190

    if-eq p1, v3, :cond_3

    const/16 v3, 0x1f4

    if-eq p1, v3, :cond_3

    const/16 v3, 0x1f6

    if-ne p1, v3, :cond_2

    goto :goto_1

    .line 241
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "support NV12, NV21, YUV420, RGB888, RGBA8888, ARGB8888"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_3
    :goto_1
    new-instance v3, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;

    invoke-direct {v3, v1, v2, p1}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;-><init>(III)V

    .line 245
    .local v3, "dst":Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 246
    .local v4, "startTime":J
    invoke-static {p0, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeHdrToSdr(Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;)I

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***end : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ImgConverter"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-object v3

    .line 236
    .end local v3    # "dst":Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;
    .end local v4    # "startTime":J
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width or height must be greater than 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final native blacklist nativeConvert()I
.end method

.method private final native blacklist nativeFinalize()V
.end method

.method public static native blacklist nativeHdrToSdr(Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;)I
.end method

.method private final native blacklist nativeQueryMetadata(II)Ljava/lang/String;
.end method

.method private final native blacklist nativeSendMetadata(IILjava/lang/String;)V
.end method

.method private final native blacklist nativeSendMetadataBuffer(IIJ[BJ)V
.end method

.method private final native blacklist nativeSetInputBuffer(Ljava/nio/ByteBuffer;J)V
.end method

.method private final native blacklist nativeSetOutputBuffer(Ljava/nio/ByteBuffer;J)V
.end method

.method private final native blacklist nativeSetup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native blacklist natvieGetInputSurface()Landroid/view/Surface;
.end method

.method private final native blacklist natvieSetOutputSurface(Landroid/view/Surface;)V
.end method

.method private varargs blacklist registerMetaParameterType(I[Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 113
    .local p2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 114
    return-void
.end method


# virtual methods
.method public blacklist convert()I
    .locals 2

    .line 222
    const-string v0, "ImgConverter"

    const-string v1, "convert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeConvert()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 2

    .line 136
    const-string v0, "ImgConverter"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->release()V

    .line 139
    :cond_0
    return-void
.end method

.method public blacklist getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->natvieGetInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist preferHw(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(I[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public blacklist queryMetadata(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "type"    # I

    .line 202
    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->UNKNOWN:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->queryMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;)Landroid/os/Bundle;
    .locals 4
    .param p1, "type"    # I
    .param p2, "port"    # Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    .line 206
    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeQueryMetadata(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v1, "data":Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    const/4 v2, 0x1

    const-string v3, "color-standard"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const/4 v2, 0x2

    const-string v3, "color-range"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const/4 v2, 0x3

    const-string v3, "color-transfer"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    nop

    .line 218
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist release()V
    .locals 2

    .line 121
    const-string v0, "ImgConverter"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mNativeEventListener:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->release()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 128
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    .line 129
    iput-object v1, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeFinalize()V

    .line 132
    return-void
.end method

.method public varargs blacklist sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "port"    # Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;
    .param p3, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->checkMetaParameters(I[Ljava/lang/Object;)V

    .line 181
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 192
    :pswitch_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 193
    .local v1, "array":Lorg/json/JSONArray;
    array-length v2, p3

    goto :goto_0

    .line 188
    .end local v1    # "array":Lorg/json/JSONArray;
    :pswitch_1
    new-instance v1, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    aget-object v0, p3, v0

    check-cast v0, Landroid/media/MediaFormat;

    invoke-direct {v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    move-object v0, v1

    .line 189
    .local v0, "fmt":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSendMetadata(IILjava/lang/String;)V

    .line 190
    goto :goto_1

    .line 183
    .end local v0    # "fmt":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :pswitch_2
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 184
    .local v9, "key":J
    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, [B

    .line 185
    .local v0, "buffer":[B
    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->ordinal()I

    move-result v3

    array-length v1, v0

    int-to-long v7, v1

    move-object v1, p0

    move v2, p1

    move-wide v4, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSendMetadataBuffer(IIJ[BJ)V

    .line 186
    goto :goto_1

    .line 193
    .end local v0    # "buffer":[B
    .end local v9    # "key":J
    .restart local v1    # "array":Lorg/json/JSONArray;
    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p3, v0

    .line 194
    .local v3, "item":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 193
    .end local v3    # "item":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->ordinal()I

    move-result v0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSendMetadata(IILjava/lang/String;)V

    .line 199
    .end local v1    # "array":Lorg/json/JSONArray;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs blacklist sendMetadata(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->UNKNOWN:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public blacklist setEventListener(Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->setOnEventListener(Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;)V

    .line 118
    return-void
.end method

.method public blacklist setInputBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 155
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSetInputBuffer(Ljava/nio/ByteBuffer;J)V

    .line 156
    return-void
.end method

.method public blacklist setOutputBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 159
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSetOutputBuffer(Ljava/nio/ByteBuffer;J)V

    .line 161
    return-void
.end method

.method public blacklist setOutputSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 150
    invoke-direct {p0, p1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->natvieSetOutputSurface(Landroid/view/Surface;)V

    .line 151
    return-void
.end method
