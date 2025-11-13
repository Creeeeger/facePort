.class final Lcom/android/framework/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;,
        Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;,
        Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;,
        Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;
    }
.end annotation


# static fields
.field private static final blacklist BOOLEAN_ARRAY_BASE_OFFSET:J

.field private static final blacklist BOOLEAN_ARRAY_INDEX_SCALE:J

.field private static final blacklist BUFFER_ADDRESS_OFFSET:J

.field private static final blacklist BYTE_ARRAY_ALIGNMENT:I

.field static final blacklist BYTE_ARRAY_BASE_OFFSET:J

.field private static final blacklist DOUBLE_ARRAY_BASE_OFFSET:J

.field private static final blacklist DOUBLE_ARRAY_INDEX_SCALE:J

.field private static final blacklist FLOAT_ARRAY_BASE_OFFSET:J

.field private static final blacklist FLOAT_ARRAY_INDEX_SCALE:J

.field private static final blacklist HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field private static final blacklist HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field private static final blacklist INT_ARRAY_BASE_OFFSET:J

.field private static final blacklist INT_ARRAY_INDEX_SCALE:J

.field private static final blacklist IS_ANDROID_32:Z

.field private static final blacklist IS_ANDROID_64:Z

.field static final blacklist IS_BIG_ENDIAN:Z

.field private static final blacklist LONG_ARRAY_BASE_OFFSET:J

.field private static final blacklist LONG_ARRAY_INDEX_SCALE:J

.field private static final blacklist MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

.field private static final blacklist MEMORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist OBJECT_ARRAY_BASE_OFFSET:J

.field private static final blacklist OBJECT_ARRAY_INDEX_SCALE:J

.field private static final blacklist STRIDE:I = 0x8

.field private static final blacklist STRIDE_ALIGNMENT_MASK:I = 0x7

.field private static final blacklist UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/android/framework/protobuf/Android;->getMemoryClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->getMemoryAccessor()Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->supportsUnsafeArrayOperations()Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    const-class v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    const-class v0, [Z

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    const-class v0, [I

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    const-class v0, [J

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    const-class v0, [F

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    const-class v0, [D

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    sget-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_ALIGNMENT:I

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/framework/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist access$100()Ljava/lang/reflect/Field;
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/lang/Object;J)B
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Ljava/lang/Object;J)B
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$400(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic blacklist access$500(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic blacklist access$600(Ljava/lang/Object;J)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanBigEndian(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$700(Ljava/lang/Object;J)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanLittleEndian(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$800(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanBigEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static synthetic blacklist access$900(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanLittleEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static blacklist addressOffset(Ljava/nio/ByteBuffer;)J
    .locals 3

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist arrayBaseOffset(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static blacklist arrayIndexScale(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static blacklist bufferAddressField()Ljava/lang/reflect/Field;
    .locals 3

    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static blacklist copyMemory(J[BJJ)V
    .locals 8

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory(J[BJJ)V

    return-void
.end method

.method static blacklist copyMemory([BJJJ)V
    .locals 8

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory([BJJJ)V

    return-void
.end method

.method static blacklist copyMemory([BJ[BJJ)V
    .locals 3

    long-to-int v0, p1

    long-to-int v1, p4

    long-to-int v2, p6

    invoke-static {p0, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static blacklist determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    const-string/jumbo v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    move-exception v0

    return v2
.end method

.method private static blacklist field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private static blacklist fieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method private static blacklist firstDifferingByteIndexNativeEndian(JJ)I
    .locals 2

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_0

    xor-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    goto :goto_0

    :cond_0
    xor-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    :goto_0
    nop

    shr-int/lit8 v1, v0, 0x3

    return v1
.end method

.method static blacklist getBoolean(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static blacklist getBoolean([ZJ)Z
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private static blacklist getBooleanBigEndian(Ljava/lang/Object;J)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist getBooleanLittleEndian(Ljava/lang/Object;J)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist getByte(J)B
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getByte(J)B

    move-result v0

    return v0
.end method

.method static blacklist getByte(Ljava/lang/Object;J)B
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static blacklist getByte([BJ)B
    .locals 3

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method private static blacklist getByteBigEndian(Ljava/lang/Object;J)B
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    not-long v1, p1

    const-wide/16 v3, 0x3

    and-long/2addr v1, v3

    const/4 v3, 0x3

    shl-long/2addr v1, v3

    long-to-int v1, v1

    ushr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist getByteLittleEndian(Ljava/lang/Object;J)B
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const-wide/16 v1, 0x3

    and-long/2addr v1, p1

    const/4 v3, 0x3

    shl-long/2addr v1, v3

    long-to-int v1, v1

    ushr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method static blacklist getDouble(Ljava/lang/Object;J)D
    .locals 2

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getDouble([DJ)D
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getFloat(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method static blacklist getFloat([FJ)F
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method static blacklist getInt(J)I
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getInt(J)I

    move-result v0

    return v0
.end method

.method static blacklist getInt(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static blacklist getInt([IJ)I
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static blacklist getLong(J)J
    .locals 2

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getLong(Ljava/lang/Object;J)J
    .locals 2

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getLong([JJ)J
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist getMemoryAccessor()Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
    .locals 2

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;

    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v0

    :cond_1
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;

    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;

    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v0
.end method

.method static blacklist getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getObject([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getUnsafe()Lsun/misc/Unsafe;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/framework/protobuf/UnsafeUtil$1;

    invoke-direct {v1}, Lcom/android/framework/protobuf/UnsafeUtil$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method static blacklist hasUnsafeArrayOperations()Z
    .locals 1

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method static blacklist hasUnsafeByteBufferOperations()Z
    .locals 1

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    return v0
.end method

.method static blacklist isAndroid64()Z
    .locals 1

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    return v0
.end method

.method private static blacklist logMissingMethod(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lcom/android/framework/protobuf/UnsafeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method static blacklist mismatch([BI[BII)I
    .locals 9

    if-ltz p1, :cond_6

    if-ltz p3, :cond_6

    if-ltz p4, :cond_6

    add-int v0, p1, p4

    array-length v1, p0

    if-gt v0, v1, :cond_6

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_ALIGNMENT:I

    add-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    :goto_0
    if-ge v0, p4, :cond_1

    and-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_1

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int v2, p4, v0

    and-int/lit8 v2, v2, -0x8

    add-int/2addr v2, v0

    :goto_1
    if-ge v0, v2, :cond_3

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-static {p0, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-wide v5, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v7, p3

    add-long/2addr v5, v7

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-static {p2, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    invoke-static {v3, v4, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->firstDifferingByteIndexNativeEndian(JJ)I

    move-result v7

    add-int/2addr v7, v0

    return v7

    :cond_2
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v0, p4, :cond_5

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    return v1

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static blacklist objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist putBoolean(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static blacklist putBoolean([ZJZ)V
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method private static blacklist putBooleanBigEndian(Ljava/lang/Object;JZ)V
    .locals 1

    int-to-byte v0, p3

    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static blacklist putBooleanLittleEndian(Ljava/lang/Object;JZ)V
    .locals 1

    int-to-byte v0, p3

    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static blacklist putByte(JB)V
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putByte(JB)V

    return-void
.end method

.method static blacklist putByte(Ljava/lang/Object;JB)V
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method static blacklist putByte([BJB)V
    .locals 3

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static blacklist putByteBigEndian(Ljava/lang/Object;JB)V
    .locals 6

    const-wide/16 v0, -0x4

    and-long v2, p1, v0

    invoke-static {p0, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    long-to-int v3, p1

    not-int v3, v3

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    const/16 v4, 0xff

    shl-int/2addr v4, v3

    not-int v4, v4

    and-int/2addr v4, v2

    and-int/lit16 v5, p3, 0xff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static blacklist putByteLittleEndian(Ljava/lang/Object;JB)V
    .locals 6

    const-wide/16 v0, -0x4

    and-long v2, p1, v0

    invoke-static {p0, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    long-to-int v3, p1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    const/16 v4, 0xff

    shl-int/2addr v4, v3

    not-int v4, v4

    and-int/2addr v4, v2

    and-int/lit16 v5, p3, 0xff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static blacklist putDouble(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method static blacklist putDouble([DJD)V
    .locals 6

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method static blacklist putFloat(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method static blacklist putFloat([FJF)V
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method static blacklist putInt(JI)V
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putInt(JI)V

    return-void
.end method

.method static blacklist putInt(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static blacklist putInt([IJI)V
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static blacklist putLong(JJ)V
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putLong(JJ)V

    return-void
.end method

.method static blacklist putLong(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static blacklist putLong([JJJ)V
    .locals 6

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static blacklist putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static blacklist putObject([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private static blacklist supportsUnsafeArrayOperations()Z
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    move-result v0

    return v0
.end method

.method private static blacklist supportsUnsafeByteBufferOperations()Z
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method
