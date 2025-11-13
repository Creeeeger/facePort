.class public final Lcom/samsung/android/sume/MediaBuffer;
.super Ljava/lang/Object;
.source "MediaBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/MediaBuffer$State;,
        Lcom/samsung/android/sume/MediaBuffer$Flag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist END_OF_FRAME:I = 0x2

.field public static final blacklist END_OF_IMAGE:I = 0x1

.field public static final blacklist KEEP_CONCURRENT:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "MediaBuffer"

.field private static blacklist bufferAddrId:Ljava/lang/reflect/Field;

.field private static blacklist bufferCapacityId:Ljava/lang/reflect/Field;

.field private static final blacklist transformDeposit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient blacklist blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist bufferType:Lcom/samsung/android/sume/BufferType;

.field private transient blacklist condition:Ljava/util/concurrent/locks/Condition;

.field private transient blacklist data:Ljava/nio/ByteBuffer;

.field private transient blacklist dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

.field private transient blacklist dataObj:Ljava/lang/Object;

.field private transient blacklist dataWrapper:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist extra:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist flags:J

.field private blacklist format:Lcom/samsung/android/sume/MediaFormat;

.field private blacklist id:I

.field private final transient blacklist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private transient blacklist sideChannel:Ljava/lang/Object;

.field private transient blacklist state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/sume/MediaBuffer$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$Db1U8iovGtR6MxxcLT32dFP006M(Lcom/samsung/android/sume/MediaBuffer;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;->hwToByteBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$n7DyQ3QlaBhaPhWTwT7bhewK4gc(Lcom/samsung/android/sume/MediaBuffer;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;->bufferToByteBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/MediaBuffer;->transformDeposit:Ljava/util/HashMap;

    .line 76
    const-string/jumbo v0, "sume_mediabuffer_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 80
    :try_start_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/MediaBuffer;->bufferAddrId:Ljava/lang/reflect/Field;

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 83
    const-class v0, Ljava/nio/Buffer;

    const-string v2, "capacity"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/MediaBuffer;->bufferCapacityId:Ljava/lang/reflect/Field;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 230
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    new-instance v0, Lcom/samsung/android/sume/MediaBuffer$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/MediaBuffer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/MediaBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->OPEN:Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 203
    const-class v0, Lcom/samsung/android/sume/MediaFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    const-class v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 212
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaFormat;)V
    .locals 3
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->OPEN:Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaFormat;Ljava/nio/Buffer;)V
    .locals 0
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;
    .param p2, "data"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "data"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;-><init>(Lcom/samsung/android/sume/MediaFormat;)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public static blacklist alloc(Lcom/samsung/android/sume/BufferType;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaBuffer;
    .locals 8
    .param p0, "type"    # Lcom/samsung/android/sume/BufferType;
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "format"
        }
    .end annotation

    .line 587
    invoke-virtual {p1}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v0

    long-to-int v0, v0

    .line 588
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alloc: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaBuffer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v1, Lcom/samsung/android/sume/MediaBuffer;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/MediaBuffer;-><init>(Lcom/samsung/android/sume/MediaFormat;)V

    .line 591
    .local v1, "mbuf":Lcom/samsung/android/sume/MediaBuffer;
    sget-object v2, Lcom/samsung/android/sume/MediaBuffer$2;->$SwitchMap$com$samsung$android$sume$BufferType:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/BufferType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 597
    :pswitch_0
    const/4 v3, 0x1

    const/16 v4, 0x21

    const/4 v5, 0x1

    const-wide/16 v6, 0x33

    move v2, v0

    invoke-static/range {v2 .. v7}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :pswitch_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V

    .line 594
    nop

    .line 607
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist bufferToByteBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->HEAP:Lcom/samsung/android/sume/BufferType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/Utils;->check(Z)V

    .line 449
    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    .line 450
    .local v0, "src":Ljava/nio/Buffer;
    const/4 v1, 0x0

    .line 452
    .local v1, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    .line 453
    .local v4, "size":I
    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "empty input buffer can\'t be allowed"

    invoke-static {v2, v6, v5}, Lcom/samsung/android/sume/Utils;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 455
    invoke-virtual {v0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_3

    .line 456
    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    .line 457
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 458
    move-object v2, v0

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 459
    :cond_2
    instance-of v2, v0, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_4

    .line 460
    shl-int/lit8 v4, v4, 0x2

    .line 461
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_2

    .line 464
    :cond_3
    instance-of v2, v0, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_4

    .line 465
    shl-int/lit8 v4, v4, 0x2

    .line 466
    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "not implemented yet"

    invoke-static {v3, v5, v2}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 469
    :cond_4
    :goto_2
    return-object v1
.end method

.method private blacklist hwAsByteBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/Utils;->check(Z)V

    .line 477
    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 478
    .local v0, "dst":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/samsung/android/sume/MediaBuffer;->bufferAddrId:Ljava/lang/reflect/Field;

    move-object v2, p1

    check-cast v2, Landroid/hardware/HardwareBuffer;

    invoke-direct {p0, v2}, Lcom/samsung/android/sume/MediaBuffer;->lockHwBuffer(Landroid/hardware/HardwareBuffer;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 479
    sget-object v1, Lcom/samsung/android/sume/MediaBuffer;->bufferCapacityId:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    invoke-virtual {v2}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 480
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 481
    const-string v1, "MediaBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrap hw buffer: cap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    return-object v0

    .line 483
    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 485
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist hwToByteBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/Utils;->check(Z)V

    .line 492
    move-object v0, p1

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 493
    .local v0, "src":Landroid/hardware/HardwareBuffer;
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    invoke-virtual {v1}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 495
    .local v1, "dst":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "cols"

    .line 496
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "rows"

    .line 497
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "size"

    iget-object v4, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 498
    invoke-virtual {v4}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "color-format"

    iget-object v4, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 499
    invoke-virtual {v4}, Lcom/samsung/android/sume/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/ColorFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sume/ColorFormat;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 500
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sume/MediaBuffer;->nativeHw2ByteBuffer(Landroid/hardware/HardwareBuffer;Ljava/nio/Buffer;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 504
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    nop

    .line 510
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 511
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 505
    return-object v1

    .line 510
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 506
    :catch_0
    move-exception v2

    .line 507
    .local v2, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    const/4 v3, 0x0

    .line 510
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 511
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 508
    return-object v3

    .line 510
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 511
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 512
    throw v2
.end method

.method private blacklist lockHwBuffer(Landroid/hardware/HardwareBuffer;)J
    .locals 6
    .param p1, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hwBuffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;->nativeLockHwBuffer(Landroid/hardware/HardwareBuffer;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lock hw buffer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBuffer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 431
    :cond_2
    :goto_0
    return-wide v2
.end method

.method private native blacklist nativeByte2HwBuffer(Ljava/nio/Buffer;Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "jsonParams"
        }
    .end annotation
.end method

.method private native blacklist nativeHw2ByteBuffer(Landroid/hardware/HardwareBuffer;Ljava/nio/Buffer;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "jsonParams"
        }
    .end annotation
.end method

.method private native blacklist nativeLockHwBuffer(Landroid/hardware/HardwareBuffer;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation
.end method

.method private native blacklist nativeSaveImage(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "buffer",
            "jsonParams"
        }
    .end annotation
.end method

.method private native blacklist nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation
.end method

.method public static blacklist registerTransform(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "transform"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "transform":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Object;Ljava/nio/ByteBuffer;>;"
    sget-object v0, Lcom/samsung/android/sume/MediaBuffer;->transformDeposit:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private blacklist toHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    if-ne v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    return-object v0

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 551
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 524
    return-object v0
.end method

.method public static blacklist unRegisterTransform(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/samsung/android/sume/MediaBuffer;->transformDeposit:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method private blacklist unlockHwBuffer(Landroid/hardware/HardwareBuffer;)V
    .locals 4
    .param p1, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hwBuffer"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlock hw buffer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBuffer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;->nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist block()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

    if-eq v0, v1, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    throw v0
.end method

.method protected whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 145
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public blacklist close()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->OPEN:Lcom/samsung/android/sume/MediaBuffer$State;

    sget-object v2, Lcom/samsung/android/sume/MediaBuffer$State;->CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    .line 156
    :cond_0
    return-void
.end method

.method public blacklist copyTo(Lcom/samsung/android/sume/MediaBuffer;)V
    .locals 2
    .param p1, "other"    # Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 114
    iget v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    iput v0, p1, Lcom/samsung/android/sume/MediaBuffer;->id:I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    iget-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    .line 123
    iget-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    iput-wide v0, p1, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    .line 125
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBlockCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public blacklist getBufferType()Lcom/samsung/android/sume/BufferType;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    return-object v0
.end method

.method public blacklist getCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public blacklist getData()Ljava/lang/Object;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 370
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public blacklist getFlags()J
    .locals 2

    .line 389
    iget-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    return-wide v0
.end method

.method public final blacklist getFormat()Lcom/samsung/android/sume/MediaFormat;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    return-object v0
.end method

.method public final blacklist getId()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    return v0
.end method

.method public blacklist getSideChannel()Ljava/lang/Object;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getState()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/sume/MediaBuffer$State;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 271
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData(Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "transform"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Ljava/nio/ByteBuffer;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 276
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "transform":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/nio/ByteBuffer;TT;>;"
    const-class v0, Ljava/nio/ByteBuffer;

    if-ne v0, p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    const-string v1, "MediaBuffer"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    return-object v0

    .line 280
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 282
    :cond_2
    const-string v0, "data-obj is given, but no transform function given"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v2

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    return-object v0

    .line 287
    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 289
    :cond_5
    const-string v0, "data is given, but no transform function given"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object v2

    .line 293
    :cond_6
    return-object v2
.end method

.method public final blacklist getTypedData()Ljava/nio/ByteBuffer;
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist hasFlag(I)Z
    .locals 4
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 401
    iget-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$getTypedData$0$com-samsung-android-sume-MediaBuffer()Ljava/util/function/Function;
    .locals 2

    .line 260
    sget-object v0, Lcom/samsung/android/sume/MediaBuffer;->transformDeposit:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    return-object v0
.end method

.method synthetic blacklist lambda$getTypedData$1$com-samsung-android-sume-MediaBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 256
    const-string v0, "MediaBuffer"

    const-string v1, "no data given"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    .line 262
    .local v0, "transform":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Object;Ljava/nio/ByteBuffer;>;"
    if-eqz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method synthetic blacklist lambda$toHardwareBuffer$2$com-samsung-android-sume-MediaBuffer(Ljava/nio/ByteBuffer;)Landroid/hardware/HardwareBuffer;
    .locals 8
    .param p1, "it"    # Ljava/nio/ByteBuffer;

    .line 525
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 526
    invoke-virtual {v0}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v0

    long-to-int v2, v0

    .line 525
    const/4 v3, 0x1

    const/16 v4, 0x21

    const/4 v5, 0x1

    const-wide/16 v6, 0x33

    invoke-static/range {v2 .. v7}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 533
    .local v0, "hwBuffer":Landroid/hardware/HardwareBuffer;
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    move-object v1, p1

    .line 535
    .local v1, "org":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object p1, v2

    .line 536
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 539
    .end local v1    # "org":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cols"

    iget-object v3, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 540
    invoke-virtual {v3}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/Shape;->getCols()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "rows"

    iget-object v3, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 541
    invoke-virtual {v3}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/Shape;->getRows()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "size"

    iget-object v3, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 542
    invoke-virtual {v3}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "color-format"

    iget-object v3, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 543
    invoke-virtual {v3}, Lcom/samsung/android/sume/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/ColorFormat;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sume/MediaBuffer;->nativeByte2HwBuffer(Ljava/nio/Buffer;Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    return-object v0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 549
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist open()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

    if-eq v0, v1, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

    sget-object v2, Lcom/samsung/android/sume/MediaBuffer$State;->OPEN:Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 194
    nop

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 194
    throw v0
.end method

.method public blacklist release()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->unlockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 561
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 562
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 563
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    .line 564
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 565
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    .line 566
    return-void
.end method

.method public blacklist removeExtra(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void
.end method

.method public blacklist setBlockCount(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "blockCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockCount"
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 418
    return-void
.end method

.method public blacklist setBufferType(Lcom/samsung/android/sume/BufferType;)V
    .locals 0
    .param p1, "bufferType"    # Lcom/samsung/android/sume/BufferType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferType"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 248
    return-void
.end method

.method public blacklist setCondition(Ljava/util/concurrent/locks/Condition;)V
    .locals 0
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    .line 426
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    .line 427
    return-void
.end method

.method public blacklist setData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "dataObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataObj"
        }
    .end annotation

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 304
    return-void
.end method

.method public blacklist setData(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 2
    .param p1, "dataObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataObj",
            "wrapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p2, "wrapper":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Object;Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 310
    sget-object v1, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 311
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 312
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 313
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    goto :goto_1

    .line 314
    :cond_0
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 315
    sget-object v1, Lcom/samsung/android/sume/BufferType;->HEAP:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 316
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 317
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 318
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    goto :goto_1

    .line 320
    :cond_1
    instance-of v1, p1, Ljava/nio/Buffer;

    if-eqz v1, :cond_2

    .line 321
    sget-object v1, Lcom/samsung/android/sume/BufferType;->HEAP:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 322
    if-nez p2, :cond_5

    .line 323
    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    move-object p2, v1

    goto :goto_0

    .line 324
    :cond_2
    instance-of v1, p1, Landroid/hardware/HardwareBuffer;

    if-eqz v1, :cond_3

    .line 325
    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 326
    if-nez p2, :cond_5

    .line 327
    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    move-object p2, v1

    goto :goto_0

    .line 328
    :cond_3
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 329
    sget-object v1, Lcom/samsung/android/sume/BufferType;->LIST:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    goto :goto_0

    .line 331
    :cond_4
    sget-object v1, Lcom/samsung/android/sume/BufferType;->PROPRIETARY:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 334
    :cond_5
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 335
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 336
    iput-object p2, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    .line 338
    :goto_1
    return-void
.end method

.method public blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/MediaBuffer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-object p0
.end method

.method public blacklist setExtra(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/samsung/android/sume/MediaBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meta"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/MediaBuffer;"
        }
    .end annotation

    .line 361
    .local p1, "meta":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 362
    return-object p0
.end method

.method public blacklist setFlags(I)V
    .locals 4
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 397
    iget-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    .line 398
    return-void
.end method

.method public blacklist setFlags(J)V
    .locals 0
    .param p1, "flags"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 393
    iput-wide p1, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    .line 394
    return-void
.end method

.method public blacklist setFormat(Lcom/samsung/android/sume/MediaFormat;)V
    .locals 0
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 346
    return-void
.end method

.method public final blacklist setId(I)V
    .locals 0
    .param p1, "var1"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 353
    iput p1, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    .line 354
    return-void
.end method

.method public blacklist setSideChannel(Ljava/lang/Object;)V
    .locals 0
    .param p1, "sideChannel"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sideChannel"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    .line 386
    return-void
.end method

.method public blacklist setState(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/sume/MediaBuffer$State;",
            ">;)V"
        }
    .end annotation

    .line 409
    .local p1, "state":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/samsung/android/sume/MediaBuffer$State;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 410
    return-void
.end method

.method public blacklist toMediaBuffer()Lcom/samsung/android/sume/MediaBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->toMediaBuffer(Z)Lcom/samsung/android/sume/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toMediaBuffer(Z)Lcom/samsung/android/sume/MediaBuffer;
    .locals 6
    .param p1, "deepCopied"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deepCopied"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaBuffer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaBuffer;

    .line 133
    .local v0, "mbuf":Lcom/samsung/android/sume/MediaBuffer;
    if-eqz p1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    invoke-virtual {v1}, Lcom/samsung/android/sume/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/MediaFormat;

    iput-object v1, v0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 135
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    .local v2, "entry":Ljava/util/Map$Entry;
    iget-object v3, v0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parcel",
            "flags"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 217
    iget v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/sume/MediaBuffer;->toHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 221
    .local v0, "hwBuffer":Landroid/hardware/HardwareBuffer;
    if-nez v0, :cond_0

    .line 222
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 224
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 228
    return-void
.end method
