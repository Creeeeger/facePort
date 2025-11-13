.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Parcel$LazyValue;,
        Landroid/os/Parcel$SquashReadHelper;,
        Landroid/os/Parcel$ReadWriteHelper;,
        Landroid/os/Parcel$ParcelFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG_ARRAY_MAP:Z = false

.field private static final greylist-max-o DEBUG_RECYCLE:Z = false

.field private static final greylist-max-o EX_BAD_PARCELABLE:I = -0x2

.field public static final blacklist EX_HAS_NOTED_APPOPS_REPLY_HEADER:I = -0x7f

.field private static final blacklist EX_HAS_STRICTMODE_REPLY_HEADER:I = -0x80

.field private static final greylist-max-o EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final greylist-max-o EX_ILLEGAL_STATE:I = -0x5

.field private static final greylist-max-o EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final greylist-max-o EX_NULL_POINTER:I = -0x4

.field private static final greylist-max-o EX_PARCELABLE:I = -0x9

.field private static final greylist-max-o EX_SECURITY:I = -0x1

.field private static final greylist-max-o EX_SERVICE_SPECIFIC:I = -0x8

.field private static final greylist-max-o EX_TRANSACTION_FAILED:I = -0x81

.field private static final greylist-max-o EX_UNSUPPORTED_OPERATION:I = -0x7

.field public static final blacklist FLAG_IS_REPLY_FROM_BLOCKING_ALLOWED_OBJECT:I = 0x1

.field public static final blacklist FLAG_PROPAGATE_ALLOW_BLOCKING:I = 0x2

.field private static final blacklist OK:I = 0x0

.field private static final greylist-max-o POOL_SIZE:I = 0x20

.field public static final whitelist STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Parcel"

.field private static final greylist-max-o VAL_BOOLEAN:I = 0x9

.field private static final greylist-max-o VAL_BOOLEANARRAY:I = 0x17

.field private static final greylist-max-o VAL_BUNDLE:I = 0x3

.field private static final greylist-max-o VAL_BYTE:I = 0x14

.field private static final greylist-max-o VAL_BYTEARRAY:I = 0xd

.field private static final blacklist VAL_CHAR:I = 0x1d

.field private static final blacklist VAL_CHARARRAY:I = 0x1f

.field private static final greylist-max-o VAL_CHARSEQUENCE:I = 0xa

.field private static final greylist-max-o VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final greylist-max-o VAL_DOUBLE:I = 0x8

.field private static final greylist-max-o VAL_DOUBLEARRAY:I = 0x1c

.field private static final greylist-max-o VAL_FLOAT:I = 0x7

.field private static final blacklist VAL_FLOATARRAY:I = 0x20

.field private static final greylist-max-o VAL_IBINDER:I = 0xf

.field private static final greylist-max-o VAL_INTARRAY:I = 0x12

.field private static final greylist-max-o VAL_INTEGER:I = 0x1

.field private static final greylist-max-o VAL_LIST:I = 0xb

.field private static final greylist-max-o VAL_LONG:I = 0x6

.field private static final greylist-max-o VAL_LONGARRAY:I = 0x13

.field private static final greylist-max-o VAL_MAP:I = 0x2

.field private static final greylist-max-o VAL_NULL:I = -0x1

.field private static final greylist-max-o VAL_OBJECTARRAY:I = 0x11

.field private static final greylist-max-o VAL_PARCELABLE:I = 0x4

.field private static final greylist-max-o VAL_PARCELABLEARRAY:I = 0x10

.field private static final greylist-max-o VAL_PERSISTABLEBUNDLE:I = 0x19

.field private static final greylist-max-o VAL_SERIALIZABLE:I = 0x15

.field private static final greylist-max-o VAL_SHORT:I = 0x5

.field private static final blacklist VAL_SHORTARRAY:I = 0x1e

.field private static final greylist-max-o VAL_SIZE:I = 0x1a

.field private static final greylist-max-o VAL_SIZEF:I = 0x1b

.field private static final greylist-max-o VAL_SPARSEARRAY:I = 0xc

.field private static final greylist-max-o VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final greylist-max-o VAL_STRING:I = 0x0

.field private static final greylist-max-o VAL_STRINGARRAY:I = 0xe

.field private static final greylist-max-o WRITE_EXCEPTION_STACK_TRACE_THRESHOLD_MS:I = 0x3e8

.field private static final greylist-max-p mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static blacklist sHolderPool:Landroid/os/Parcel;

.field private static blacklist sHolderPoolSize:I

.field private static volatile greylist-max-o sLastWriteExceptionStackTrace:J

.field private static blacklist sOwnedPool:Landroid/os/Parcel;

.field private static blacklist sOwnedPoolSize:I

.field private static greylist-max-o sParcelExceptionStackTrace:Z

.field private static final blacklist sPoolSync:Ljava/lang/Object;


# instance fields
.field private blacklist interfaceName:Ljava/lang/String;

.field private blacklist mAllowSquashing:Z

.field private greylist-max-o mClassCookies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlags:I

.field private greylist mNativePtr:J

.field private greylist-max-o mNativeSize:J

.field private greylist-max-o mOwnsNativeParcelObject:Z

.field private blacklist mPoolNext:Landroid/os/Parcel;

.field private blacklist mReadSquashableParcelables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

.field private greylist-max-o mStack:Ljava/lang/RuntimeException;

.field private blacklist mWrittenSquashableParcelables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Parcelable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadValue(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalueTypeToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/os/Parcel;->valueTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 276
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    .line 291
    const/4 v0, 0x0

    sput v0, Landroid/os/Parcel;->sOwnedPoolSize:I

    .line 294
    sput v0, Landroid/os/Parcel;->sHolderPoolSize:I

    .line 455
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 5085
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    .line 5117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Parcel;->interfaceName:Ljava/lang/String;

    .line 503
    sget-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 2578
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 5122
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->init(J)V

    .line 5123
    return-void
.end method

.method private blacklist checkArrayTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 4710
    .local p1, "requiredArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "componentTypeToUnparcel":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 4712
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4713
    .local v0, "requiredComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 4719
    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 4714
    :cond_0
    new-instance v1, Landroid/os/BadTypeParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to unparcel an array but type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4716
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " required by caller is not an array."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4721
    .end local v0    # "requiredComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 4728
    .local p1, "requiredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "typeToUnparcel":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4729
    :cond_0
    new-instance v0, Landroid/os/BadTypeParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to unparcel a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4730
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which is not a subtype of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4731
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required by caller."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4734
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist compareData(Landroid/os/Parcel;ILandroid/os/Parcel;II)Z
    .locals 7
    .param p0, "a"    # Landroid/os/Parcel;
    .param p1, "offsetA"    # I
    .param p2, "b"    # Landroid/os/Parcel;
    .param p3, "offsetB"    # I
    .param p4, "length"    # I

    .line 770
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v3, p2, Landroid/os/Parcel;->mNativePtr:J

    move v2, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/os/Parcel;->nativeCompareDataInRange(JIJII)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o createException(ILjava/lang/String;)Ljava/lang/Exception;
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 3007
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->createExceptionOrNull(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 3008
    .local v0, "exception":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 3009
    move-object v1, v0

    goto :goto_0

    .line 3010
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3008
    :goto_0
    return-object v1
.end method

.method private greylist-max-o destroy()V
    .locals 5

    .line 5145
    invoke-direct {p0}, Landroid/os/Parcel;->resetSqaushingState()V

    .line 5146
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5147
    iget-boolean v4, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v4, :cond_0

    .line 5148
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDestroy(J)V

    .line 5150
    :cond_0
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 5152
    :cond_1
    return-void
.end method

.method private blacklist ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V
    .locals 4
    .param p2, "numDimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 4068
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-lez p2, :cond_3

    .line 4072
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 4073
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4077
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 4072
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4074
    :cond_0
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array has fewer dimensions than expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4079
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4083
    return-void

    .line 4080
    :cond_2
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array has more dimensions than expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4069
    :cond_3
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Fixed-size array should have dimensions."

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist ensureReadSquashableParcelables()V
    .locals 1

    .line 2631
    iget-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2632
    return-void

    .line 2634
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    .line 2635
    return-void
.end method

.method private blacklist ensureWrittenSquashableParcelables()V
    .locals 1

    .line 2572
    iget-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 2573
    return-void

    .line 2575
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    .line 2576
    return-void
.end method

.method private greylist-max-o freeBuffer()V
    .locals 2

    .line 5136
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Parcel;->mFlags:I

    .line 5137
    invoke-direct {p0}, Landroid/os/Parcel;->resetSqaushingState()V

    .line 5138
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_0

    .line 5139
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeFreeBuffer(J)V

    .line 5141
    :cond_0
    sget-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 5142
    return-void
.end method

.method public static blacklist getExceptionCode(Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 2838
    const/4 v0, 0x0

    .line 2839
    .local v0, "code":I
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    .line 2840
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2843
    const/16 v0, -0x9

    goto :goto_0

    .line 2844
    :cond_0
    instance-of v1, p0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_1

    .line 2845
    const/4 v0, -0x1

    goto :goto_0

    .line 2846
    :cond_1
    instance-of v1, p0, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_2

    .line 2847
    const/4 v0, -0x2

    goto :goto_0

    .line 2848
    :cond_2
    instance-of v1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_3

    .line 2849
    const/4 v0, -0x3

    goto :goto_0

    .line 2850
    :cond_3
    instance-of v1, p0, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_4

    .line 2851
    const/4 v0, -0x4

    goto :goto_0

    .line 2852
    :cond_4
    instance-of v1, p0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_5

    .line 2853
    const/4 v0, -0x5

    goto :goto_0

    .line 2854
    :cond_5
    instance-of v1, p0, Landroid/os/NetworkOnMainThreadException;

    if-eqz v1, :cond_6

    .line 2855
    const/4 v0, -0x6

    goto :goto_0

    .line 2856
    :cond_6
    instance-of v1, p0, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_7

    .line 2857
    const/4 v0, -0x7

    goto :goto_0

    .line 2858
    :cond_7
    instance-of v1, p0, Landroid/os/ServiceSpecificException;

    if-eqz v1, :cond_8

    .line 2859
    const/4 v0, -0x8

    .line 2861
    :cond_8
    :goto_0
    return v0
.end method

.method public static native greylist-max-r getGlobalAllocCount()J
.end method

.method public static native greylist-max-r getGlobalAllocSize()J
.end method

.method public static blacklist getValueType(Ljava/lang/Object;)I
    .locals 4
    .param p0, "v"    # Ljava/lang/Object;

    .line 2341
    if-nez p0, :cond_0

    .line 2342
    const/4 v0, -0x1

    return v0

    .line 2343
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2344
    const/4 v0, 0x0

    return v0

    .line 2345
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2346
    const/4 v0, 0x1

    return v0

    .line 2347
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2348
    const/4 v0, 0x2

    return v0

    .line 2349
    :cond_3
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2351
    const/4 v0, 0x3

    return v0

    .line 2352
    :cond_4
    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_5

    .line 2354
    const/16 v0, 0x19

    return v0

    .line 2355
    :cond_5
    instance-of v0, p0, Landroid/util/SizeF;

    if-eqz v0, :cond_6

    .line 2357
    const/16 v0, 0x1b

    return v0

    .line 2358
    :cond_6
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_7

    .line 2362
    const/4 v0, 0x4

    return v0

    .line 2363
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    .line 2364
    const/4 v0, 0x5

    return v0

    .line 2365
    :cond_8
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 2366
    const/4 v0, 0x6

    return v0

    .line 2367
    :cond_9
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 2368
    const/4 v0, 0x7

    return v0

    .line 2369
    :cond_a
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_b

    .line 2370
    const/16 v0, 0x8

    return v0

    .line 2371
    :cond_b
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 2372
    const/16 v0, 0x9

    return v0

    .line 2373
    :cond_c
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 2375
    const/16 v0, 0xa

    return v0

    .line 2376
    :cond_d
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_e

    .line 2377
    const/16 v0, 0xb

    return v0

    .line 2378
    :cond_e
    instance-of v0, p0, Landroid/util/SparseArray;

    if-eqz v0, :cond_f

    .line 2379
    const/16 v0, 0xc

    return v0

    .line 2380
    :cond_f
    instance-of v0, p0, [Z

    if-eqz v0, :cond_10

    .line 2381
    const/16 v0, 0x17

    return v0

    .line 2382
    :cond_10
    instance-of v0, p0, [B

    if-eqz v0, :cond_11

    .line 2383
    const/16 v0, 0xd

    return v0

    .line 2384
    :cond_11
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 2385
    const/16 v0, 0xe

    return v0

    .line 2386
    :cond_12
    instance-of v0, p0, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    .line 2388
    const/16 v0, 0x18

    return v0

    .line 2389
    :cond_13
    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_14

    .line 2390
    const/16 v0, 0xf

    return v0

    .line 2391
    :cond_14
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_15

    .line 2392
    const/16 v0, 0x10

    return v0

    .line 2393
    :cond_15
    instance-of v0, p0, [I

    if-eqz v0, :cond_16

    .line 2394
    const/16 v0, 0x12

    return v0

    .line 2395
    :cond_16
    instance-of v0, p0, [J

    if-eqz v0, :cond_17

    .line 2396
    const/16 v0, 0x13

    return v0

    .line 2397
    :cond_17
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_18

    .line 2398
    const/16 v0, 0x14

    return v0

    .line 2399
    :cond_18
    instance-of v0, p0, Landroid/util/Size;

    if-eqz v0, :cond_19

    .line 2400
    const/16 v0, 0x1a

    return v0

    .line 2401
    :cond_19
    instance-of v0, p0, [D

    if-eqz v0, :cond_1a

    .line 2402
    const/16 v0, 0x1c

    return v0

    .line 2403
    :cond_1a
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1b

    .line 2404
    const/16 v0, 0x1d

    return v0

    .line 2405
    :cond_1b
    instance-of v0, p0, [S

    if-eqz v0, :cond_1c

    .line 2406
    const/16 v0, 0x1e

    return v0

    .line 2407
    :cond_1c
    instance-of v0, p0, [C

    if-eqz v0, :cond_1d

    .line 2408
    const/16 v0, 0x1f

    return v0

    .line 2409
    :cond_1d
    instance-of v0, p0, [F

    if-eqz v0, :cond_1e

    .line 2410
    const/16 v0, 0x20

    return v0

    .line 2412
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2413
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_1f

    .line 2416
    const/16 v1, 0x11

    return v1

    .line 2417
    :cond_1f
    instance-of v1, p0, Ljava/io/Serializable;

    if-eqz v1, :cond_20

    .line 2419
    const/16 v1, 0x15

    return v1

    .line 2421
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel: unknown type for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist hasFileDescriptors(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;

    .line 845
    instance-of v0, p0, Landroid/os/Parcel;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 846
    move-object v0, p0

    check-cast v0, Landroid/os/Parcel;

    .line 847
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    return v1

    .line 850
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_0
    goto/16 :goto_7

    :cond_1
    instance-of v0, p0, Landroid/os/Parcel$LazyValue;

    if-eqz v0, :cond_3

    .line 851
    move-object v0, p0

    check-cast v0, Landroid/os/Parcel$LazyValue;

    .line 852
    .local v0, "lazy":Landroid/os/Parcel$LazyValue;
    invoke-virtual {v0}, Landroid/os/Parcel$LazyValue;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 853
    return v1

    .line 855
    .end local v0    # "lazy":Landroid/os/Parcel$LazyValue;
    :cond_2
    goto/16 :goto_7

    :cond_3
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    .line 856
    move-object v0, p0

    check-cast v0, Landroid/os/Parcelable;

    .line 857
    .local v0, "parcelable":Landroid/os/Parcelable;
    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    .line 858
    return v1

    .line 860
    .end local v0    # "parcelable":Landroid/os/Parcelable;
    :cond_4
    goto/16 :goto_7

    :cond_5
    instance-of v0, p0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    .line 861
    move-object v0, p0

    check-cast v0, Landroid/util/ArrayMap;

    .line 862
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<**>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 863
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 864
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 862
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    :cond_7
    :goto_1
    return v1

    .line 868
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<**>;"
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_8
    goto/16 :goto_7

    :cond_9
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 869
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 870
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 871
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 872
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    .line 875
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_a
    goto :goto_2

    .line 873
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_b
    :goto_3
    return v1

    .line 876
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_c
    goto :goto_7

    :cond_d
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_10

    .line 877
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 878
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_4
    if-ge v2, v3, :cond_f

    .line 879
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 880
    return v1

    .line 878
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 883
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_f
    goto :goto_7

    :cond_10
    instance-of v0, p0, Landroid/util/SparseArray;

    if-eqz v0, :cond_13

    .line 884
    move-object v0, p0

    check-cast v0, Landroid/util/SparseArray;

    .line 885
    .local v0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .restart local v3    # "n":I
    :goto_5
    if-ge v2, v3, :cond_12

    .line 886
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 887
    return v1

    .line 885
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 890
    .end local v0    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_12
    goto :goto_7

    :cond_13
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 891
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    .line 892
    .local v0, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v0

    .restart local v3    # "n":I
    :goto_6
    if-ge v2, v3, :cond_15

    .line 893
    aget-object v4, v0, v2

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 894
    return v1

    .line 892
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 897
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_15
    goto :goto_7

    .line 898
    :cond_16
    invoke-static {p0}, Landroid/os/Parcel;->getValueType(Ljava/lang/Object;)I

    .line 900
    :goto_7
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist hasFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 648
    iget v0, p0, Landroid/os/Parcel;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o init(J)V
    .locals 2
    .param p1, "nativePtr"    # J

    .line 5126
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 5127
    iput-wide p1, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 5128
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    goto :goto_0

    .line 5130
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 5131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    .line 5133
    :goto_0
    return-void
.end method

.method private blacklist isLengthPrefixed(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 4690
    sparse-switch p1, :sswitch_data_0

    .line 4700
    const/4 v0, 0x0

    return v0

    .line 4698
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$createFixedArray$0(Ljava/lang/Class;I)[Landroid/os/IInterface;
    .locals 1
    .param p0, "componentType"    # Ljava/lang/Class;
    .param p1, "n"    # I

    .line 4185
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/IInterface;

    return-object v0
.end method

.method private blacklist markForBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 626
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeMarkForBinder(JLandroid/os/IBinder;)V

    .line 627
    return-void
.end method

.method private static native blacklist nativeAppendFrom(JJII)V
.end method

.method private static native greylist-max-o nativeCompareData(JJ)I
.end method

.method private static native blacklist nativeCompareDataInRange(JIJII)Z
.end method

.method private static native greylist-max-o nativeCreate()J
.end method

.method private static native greylist-max-o nativeCreateByteArray(J)[B
.end method

.method private static native greylist-max-o nativeDataAvail(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDataCapacity(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDataPosition(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDataSize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeEnforceInterface(JLjava/lang/String;)V
.end method

.method private static native blacklist nativeFreeBuffer(J)V
.end method

.method private static native blacklist nativeGetOpenAshmemSize(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeHasFileDescriptors(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeHasFileDescriptorsInRange(JII)Z
.end method

.method private static native blacklist nativeMarkForBinder(JLandroid/os/IBinder;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeMarkSensitive(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeMarshall(J)[B
.end method

.method private static native greylist-max-o nativePushAllowFds(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadBlob(J)[B
.end method

.method private static native greylist-max-o nativeReadByteArray(J[BI)Z
.end method

.method private static native blacklist nativeReadCallingWorkSourceUid(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadDouble(J)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFloat(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadInt(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadLong(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeReadString16(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReadString8(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadStrongBinder(J)Landroid/os/IBinder;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReplaceCallingWorkSourceUid(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeRestoreAllowFds(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDataCapacity(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDataPosition(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetDataSize(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSignalExceptionForError(I)V
.end method

.method private static native blacklist nativeUnmarshall(J[BII)V
.end method

.method private static native greylist-max-o nativeWriteBlob(J[BII)V
.end method

.method private static native greylist-max-o nativeWriteByteArray(J[BII)V
.end method

.method private static native blacklist nativeWriteDouble(JD)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteFloat(JF)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteInt(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteInterfaceToken(JLjava/lang/String;)V
.end method

.method private static native blacklist nativeWriteLong(JJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteString16(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteString8(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteStrongBinder(JLandroid/os/IBinder;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist obtain()Landroid/os/Parcel;
    .locals 4

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "res":Landroid/os/Parcel;
    sget-object v1, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    if-eqz v2, :cond_0

    .line 513
    move-object v0, v2

    .line 514
    iget-object v2, v0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    sput-object v2, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    .line 515
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 516
    sget v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    .line 518
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    if-nez v0, :cond_1

    .line 523
    new-instance v1, Landroid/os/Parcel;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/Parcel;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 528
    :cond_1
    sget-object v1, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v1, v0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 530
    :goto_0
    return-object v0

    .line 518
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected static final greylist-max-o obtain(I)Landroid/os/Parcel;
    .locals 1
    .param p0, "obj"    # I

    .line 5089
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected static final greylist-max-o obtain(J)Landroid/os/Parcel;
    .locals 3
    .param p0, "obj"    # J

    .line 5094
    const/4 v0, 0x0

    .line 5095
    .local v0, "res":Landroid/os/Parcel;
    sget-object v1, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 5096
    :try_start_0
    sget-object v2, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    if-eqz v2, :cond_0

    .line 5097
    move-object v0, v2

    .line 5098
    iget-object v2, v0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    sput-object v2, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    .line 5099
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 5100
    sget v2, Landroid/os/Parcel;->sHolderPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Parcel;->sHolderPoolSize:I

    .line 5102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5106
    if-nez v0, :cond_1

    .line 5107
    new-instance v1, Landroid/os/Parcel;

    invoke-direct {v1, p0, p1}, Landroid/os/Parcel;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 5112
    :cond_1
    invoke-direct {v0, p0, p1}, Landroid/os/Parcel;->init(J)V

    .line 5114
    :goto_0
    return-object v0

    .line 5102
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static whitelist obtain(Landroid/os/IBinder;)Landroid/os/Parcel;
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 544
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-direct {v0, p0}, Landroid/os/Parcel;->markForBinder(Landroid/os/IBinder;)V

    .line 545
    return-object v0
.end method

.method private greylist-max-o readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .locals 3
    .param p1, "outVal"    # [Ljava/lang/Object;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 5317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 5318
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {p0, p3, v1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 5319
    .local v1, "value":Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 5317
    .end local v1    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5321
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 5329
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5330
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 5331
    const/4 v1, 0x0

    return-object v1

    .line 5333
    :cond_0
    if-nez p2, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, [Ljava/lang/Object;

    .line 5335
    .local v1, "outVal":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 5336
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 5337
    .local v3, "value":Ljava/lang/Object;, "TT;"
    aput-object v3, v1, v2

    .line 5335
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5339
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private blacklist readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 5302
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5303
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 5304
    const/4 v1, 0x0

    return-object v1

    .line 5306
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5307
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0, v1, v0, p1, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 5308
    return-object v1
.end method

.method private greylist-max-o readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 6
    .param p2, "size"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 5205
    .local p1, "outVal":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<-Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;IZZLjava/lang/ClassLoader;)Z

    .line 5206
    return-void
.end method

.method private blacklist readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 8
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TK;>;",
            "Ljava/lang/Class<",
            "+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5176
    .local p2, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<+TK;>;"
    .local p3, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 5177
    .local v6, "n":I
    if-gez v6, :cond_0

    .line 5178
    const/4 v0, 0x0

    return-object v0

    .line 5180
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object v7, v0

    .line 5181
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    move-object v0, p0

    move-object v1, v7

    move v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5182
    return-object v7
.end method

.method private greylist-max-o readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "n"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 5279
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 5280
    return-void
.end method

.method private blacklist readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 1
    .param p2, "n"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 5287
    .local p1, "outVal":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 5288
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, p4, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5290
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5291
    nop

    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 p2, p2, -0x1

    .line 5292
    goto :goto_0

    .line 5293
    :cond_0
    return-void
.end method

.method private blacklist readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p2, "n"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 5195
    .local p1, "outVal":Ljava/util/Map;, "Ljava/util/Map<-TK;-TV;>;"
    .local p4, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p5, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 5196
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, p4, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 5197
    .local v1, "key":Ljava/lang/Object;, "TK;"
    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, p5, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5198
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5199
    nop

    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    add-int/lit8 p2, p2, -0x1

    .line 5200
    goto :goto_0

    .line 5201
    :cond_0
    return-void
.end method

.method private blacklist readMapInternal(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 5188
    .local p1, "outVal":Ljava/util/Map;, "Ljava/util/Map<-TK;-TV;>;"
    .local p3, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 5189
    .local v6, "n":I
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5190
    return-void
.end method

.method private blacklist readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 4971
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4972
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 4973
    const/4 v1, 0x0

    return-object v1

    .line 4975
    :cond_0
    if-nez p2, :cond_1

    new-array v1, v0, [Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, [Ljava/lang/Object;

    .line 4976
    .local v1, "p":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 4977
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4976
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4979
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private blacklist readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
    .locals 10
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .line 4848
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4849
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4850
    return-object v1

    .line 4854
    :cond_0
    sget-object v2, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v2

    .line 4855
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 4856
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    if-nez v3, :cond_1

    .line 4857
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 4858
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4860
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable$Creator;

    .line 4861
    .local v4, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4862
    if-eqz v4, :cond_4

    .line 4863
    if-eqz p2, :cond_3

    .line 4864
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    .line 4865
    .local v1, "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 4866
    :cond_2
    new-instance v2, Landroid/os/BadTypeParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable creator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a subclass of required class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4867
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided in the parameter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4871
    .end local v1    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_0
    return-object v4

    .line 4878
    :cond_4
    if-nez p1, :cond_5

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    goto :goto_1

    .line 4917
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 4913
    :catch_1
    move-exception v1

    goto/16 :goto_4

    .line 4909
    :catch_2
    move-exception v1

    goto/16 :goto_5

    .line 4878
    :cond_5
    move-object v5, p1

    .line 4881
    .local v5, "parcelableClassLoader":Ljava/lang/ClassLoader;
    :goto_1
    const/4 v6, 0x0

    invoke-static {v0, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 4883
    .local v6, "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Landroid/os/Parcelable;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4887
    if-eqz p2, :cond_7

    .line 4888
    invoke-virtual {p2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    .line 4889
    :cond_6
    new-instance v1, Landroid/os/BadTypeParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parcelable creator "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " is not a subclass of required class "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4890
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " provided in the parameter"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    .end local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1

    .line 4895
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    .restart local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_7
    :goto_2
    const-string v7, "CREATOR"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 4896
    .local v7, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_a

    .line 4900
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 4901
    .local v8, "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4908
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4921
    .end local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v5    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    .end local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    nop

    .line 4922
    if-eqz v1, :cond_8

    .line 4928
    monitor-enter v2

    .line 4929
    :try_start_2
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4930
    monitor-exit v2

    .line 4932
    return-object v1

    .line 4930
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 4923
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4904
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v5    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    .restart local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "f":Ljava/lang/reflect/Field;
    .restart local v8    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    :try_start_3
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    .end local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1

    .line 4897
    .end local v8    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    .restart local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_a
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    .end local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1

    .line 4884
    .end local v7    # "f":Ljava/lang/reflect/Field;
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    .restart local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_b
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parcelable protocol requires subclassing from Parcelable on class "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    .end local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4918
    .end local v5    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    .end local v6    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "name":Ljava/lang/String;
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    .restart local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_3
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4914
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :goto_4
    const-string v2, "Parcel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found when unmarshalling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4915
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4910
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :goto_5
    const-string v2, "Parcel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access when unmarshalling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4911
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4861
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    .end local v4    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private blacklist readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4778
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 4779
    .local v0, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v0, :cond_0

    .line 4780
    const/4 v1, 0x0

    return-object v1

    .line 4782
    :cond_0
    instance-of v1, v0, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v1, :cond_1

    .line 4783
    move-object v1, v0

    check-cast v1, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 4785
    .local v1, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v1, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 4787
    .end local v1    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_1
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private blacklist readParcelableListInternal(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 3880
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3881
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3882
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3883
    return-object p1

    .line 3886
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 3887
    .local v1, "m":I
    const/4 v2, 0x0

    .line 3888
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    if-ge v2, v0, :cond_1

    .line 3889
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3888
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3891
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3892
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3891
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3894
    :cond_2
    :goto_2
    if-ge v2, v1, :cond_3

    .line 3895
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3894
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3897
    :cond_3
    return-object p1
.end method

.method private blacklist readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5023
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5024
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5028
    const/4 v1, 0x0

    return-object v1

    .line 5032
    :cond_0
    const-string v1, " provided in the parameter"

    const-string v2, " is not a subclass of required class "

    const-string v3, "Serializable object "

    const-string v4, ")"

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 5036
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v0, v5, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 5037
    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 5038
    :cond_1
    new-instance v6, Landroid/os/BadTypeParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5039
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5040
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v6

    .line 5043
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "name":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 5044
    .local v5, "serializedData":[B
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5045
    .local v6, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v7, Landroid/os/Parcel$2;

    invoke-direct {v7, p0, v6, p1}, Landroid/os/Parcel$2;-><init>(Landroid/os/Parcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 5057
    .local v7, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    .line 5058
    .local v8, "object":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    .line 5062
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 5063
    :cond_3
    new-instance v9, Landroid/os/BadTypeParcelableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5064
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5065
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5068
    .restart local v0    # "name":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_4
    :goto_1
    return-object v8

    .line 5073
    .end local v5    # "serializedData":[B
    .end local v6    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .end local v8    # "object":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 5074
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5069
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 5070
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 5362
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5363
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 5364
    const/4 v1, 0x0

    return-object v1

    .line 5366
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 5368
    .local v1, "outVal":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    :goto_0
    if-lez v0, :cond_1

    .line 5369
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5370
    .local v2, "key":I
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 5371
    .local v3, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5372
    nop

    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, -0x1

    .line 5373
    goto :goto_0

    .line 5374
    :cond_1
    return-object v1
.end method

.method private greylist-max-o readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/SparseArray;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 5348
    :goto_0
    if-lez p2, :cond_0

    .line 5349
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5350
    .local v0, "key":I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 5351
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5352
    nop

    .end local v0    # "key":I
    .end local v1    # "value":Ljava/lang/Object;
    add-int/lit8 p2, p2, -0x1

    .line 5353
    goto :goto_0

    .line 5354
    :cond_0
    return-void
.end method

.method private greylist-max-o readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .locals 3
    .param p1, "outVal"    # Landroid/util/SparseBooleanArray;
    .param p2, "N"    # I

    .line 5379
    :goto_0
    if-lez p2, :cond_1

    .line 5380
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5381
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    .line 5383
    .local v1, "value":Z
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 5384
    nop

    .end local v0    # "key":I
    .end local v1    # "value":Z
    add-int/lit8 p2, p2, -0x1

    .line 5385
    goto :goto_0

    .line 5386
    :cond_1
    return-void
.end method

.method private greylist-max-o readSparseIntArrayInternal(Landroid/util/SparseIntArray;I)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/SparseIntArray;
    .param p2, "N"    # I

    .line 5389
    :goto_0
    if-lez p2, :cond_0

    .line 5390
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5391
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5392
    .local v1, "value":I
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 5393
    nop

    .end local v0    # "key":I
    .end local v1    # "value":I
    add-int/lit8 p2, p2, -0x1

    .line 5394
    goto :goto_0

    .line 5395
    :cond_0
    return-void
.end method

.method private blacklist readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4505
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "type"    # I
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 4522
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4672
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    .line 4673
    .local v0, "off":I
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unmarshalling unknown type code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4668
    .end local v0    # "off":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 4669
    .local v0, "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4664
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 4665
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4660
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->createShortArray()[S

    move-result-object v0

    .line 4661
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4656
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 4657
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4652
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    .line 4653
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4648
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readSizeF()Landroid/util/SizeF;

    move-result-object v0

    .line 4649
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4644
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v0

    .line 4645
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4640
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 4641
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4590
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 4591
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4578
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 4579
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4632
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 4633
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4616
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_b
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 4617
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4612
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 4613
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4608
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 4609
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4604
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 4605
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4598
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_f
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 4599
    .local v0, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-class v1, Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, p3, v1}, Landroid/os/Parcel;->checkArrayTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4600
    invoke-direct {p0, p2, v0}, Landroid/os/Parcel;->readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 4601
    .local v1, "object":Ljava/lang/Object;
    move-object v0, v1

    goto/16 :goto_6

    .line 4620
    .end local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    :pswitch_10
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 4621
    .restart local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    const-class v1, Landroid/os/Parcelable;

    :goto_1
    invoke-direct {p0, p3, v1}, Landroid/os/Parcel;->checkArrayTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4622
    invoke-direct {p0, p2, v0}, Landroid/os/Parcel;->readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 4623
    .restart local v1    # "object":Ljava/lang/Object;
    move-object v0, v1

    goto/16 :goto_6

    .line 4594
    .end local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    :pswitch_11
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4595
    .local v0, "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4586
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 4587
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4582
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 4583
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4626
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_14
    const-class v0, Landroid/util/SparseArray;

    invoke-direct {p0, p3, v0}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4627
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 4628
    .local v0, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, v0}, Landroid/os/Parcel;->readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v1

    .line 4629
    .restart local v1    # "object":Ljava/lang/Object;
    move-object v0, v1

    goto/16 :goto_6

    .line 4572
    .end local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    :pswitch_15
    const-class v0, Ljava/util/ArrayList;

    invoke-direct {p0, p3, v0}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4573
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 4574
    .restart local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, v0}, Landroid/os/Parcel;->readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4575
    .restart local v1    # "object":Ljava/lang/Object;
    move-object v0, v1

    goto/16 :goto_6

    .line 4568
    .end local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    :pswitch_16
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4569
    .local v0, "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4564
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_17
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4565
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4560
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 4561
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_6

    .line 4556
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_19
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 4557
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_6

    .line 4552
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_1a
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4553
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_6

    .line 4548
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 4549
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_6

    .line 4544
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_1c
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 4545
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_6

    .line 4636
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_1d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 4637
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_6

    .line 4536
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_1e
    const-class v2, Ljava/util/HashMap;

    invoke-direct {p0, p3, v2}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4537
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 4538
    .local v2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 4539
    .local v3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    if-nez v3, :cond_4

    move v5, v0

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    if-ne v4, v5, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 4540
    invoke-direct {p0, p2, v2, v3}, Landroid/os/Parcel;->readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    .line 4541
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_6

    .line 4532
    .end local v0    # "object":Ljava/lang/Object;
    .end local v2    # "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4533
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_6

    .line 4528
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_20
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4529
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_6

    .line 4524
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_21
    const/4 v0, 0x0

    .line 4525
    .restart local v0    # "object":Ljava/lang/Object;
    nop

    .line 4677
    :goto_6
    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_7

    .line 4678
    :cond_6
    new-instance v1, Landroid/os/BadTypeParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparcelled object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an instance of required class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4679
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provided in the parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4682
    :cond_7
    :goto_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs blacklist readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 4319
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4321
    .local v0, "type":I
    invoke-direct {p0, v0}, Landroid/os/Parcel;->isLengthPrefixed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4322
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4323
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 4324
    .local v2, "start":I
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 4325
    .local v3, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    sub-int/2addr v4, v2

    .line 4326
    .local v4, "actual":I
    if-eq v4, v1, :cond_0

    .line 4327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unparcelling of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4328
    invoke-static {v0}, Landroid/os/Parcel;->valueTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  consumed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes, but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expected."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4327
    const-string v6, "Parcel"

    invoke-static {v6, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    .end local v1    # "length":I
    .end local v2    # "start":I
    .end local v4    # "actual":I
    :cond_0
    goto :goto_0

    .line 4332
    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 4334
    .restart local v3    # "object":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v3
.end method

.method private blacklist resetSqaushingState()V
    .locals 2

    .line 2616
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    if-eqz v0, :cond_0

    .line 2617
    const-string v0, "Parcel"

    const-string v1, "allowSquashing wasn\'t restored."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    .line 2620
    iput-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    .line 2621
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2622
    return-void
.end method

.method public static greylist-max-o setStackTraceParceling(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 2771
    sput-boolean p0, Landroid/os/Parcel;->sParcelExceptionStackTrace:Z

    .line 2772
    return-void
.end method

.method private static blacklist valueTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 5405
    packed-switch p0, :pswitch_data_0

    .line 5438
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5435
    :pswitch_1
    const-string v0, "VAL_FLOATARRAY"

    return-object v0

    .line 5434
    :pswitch_2
    const-string v0, "VAL_CHARARRAY"

    return-object v0

    .line 5433
    :pswitch_3
    const-string v0, "VAL_SHORTARRAY"

    return-object v0

    .line 5432
    :pswitch_4
    const-string v0, "VAL_CHAR"

    return-object v0

    .line 5431
    :pswitch_5
    const-string v0, "VAL_DOUBLEARRAY"

    return-object v0

    .line 5430
    :pswitch_6
    const-string v0, "VAL_SIZEF"

    return-object v0

    .line 5429
    :pswitch_7
    const-string v0, "VAL_SIZE"

    return-object v0

    .line 5410
    :pswitch_8
    const-string v0, "VAL_PERSISTABLEBUNDLE"

    return-object v0

    .line 5423
    :pswitch_9
    const-string v0, "VAL_CHARSEQUENCEARRAY"

    return-object v0

    .line 5420
    :pswitch_a
    const-string v0, "VAL_BOOLEANARRAY"

    return-object v0

    .line 5437
    :pswitch_b
    const-string v0, "VAL_SERIALIZABLE"

    return-object v0

    .line 5428
    :pswitch_c
    const-string v0, "VAL_BYTE"

    return-object v0

    .line 5427
    :pswitch_d
    const-string v0, "VAL_LONGARRAY"

    return-object v0

    .line 5426
    :pswitch_e
    const-string v0, "VAL_INTARRAY"

    return-object v0

    .line 5436
    :pswitch_f
    const-string v0, "VAL_OBJECTARRAY"

    return-object v0

    .line 5425
    :pswitch_10
    const-string v0, "VAL_PARCELABLEARRAY"

    return-object v0

    .line 5424
    :pswitch_11
    const-string v0, "VAL_IBINDER"

    return-object v0

    .line 5422
    :pswitch_12
    const-string v0, "VAL_STRINGARRAY"

    return-object v0

    .line 5421
    :pswitch_13
    const-string v0, "VAL_BYTEARRAY"

    return-object v0

    .line 5419
    :pswitch_14
    const-string v0, "VAL_SPARSEARRAY"

    return-object v0

    .line 5418
    :pswitch_15
    const-string v0, "VAL_LIST"

    return-object v0

    .line 5417
    :pswitch_16
    const-string v0, "VAL_CHARSEQUENCE"

    return-object v0

    .line 5416
    :pswitch_17
    const-string v0, "VAL_BOOLEAN"

    return-object v0

    .line 5415
    :pswitch_18
    const-string v0, "VAL_DOUBLE"

    return-object v0

    .line 5414
    :pswitch_19
    const-string v0, "VAL_FLOAT"

    return-object v0

    .line 5413
    :pswitch_1a
    const-string v0, "VAL_LONG"

    return-object v0

    .line 5412
    :pswitch_1b
    const-string v0, "VAL_SHORT"

    return-object v0

    .line 5411
    :pswitch_1c
    const-string v0, "VAL_PARCELABLE"

    return-object v0

    .line 5409
    :pswitch_1d
    const-string v0, "VAL_BUNDLE"

    return-object v0

    .line 5408
    :pswitch_1e
    const-string v0, "VAL_MAP"

    return-object v0

    .line 5407
    :pswitch_1f
    const-string v0, "VAL_INTEGER"

    return-object v0

    .line 5406
    :pswitch_20
    const-string v0, "VAL_NULL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_20
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist writeFixedArrayInternal(Ljava/lang/Object;II[I)V
    .locals 5
    .param p2, "parcelableFlags"    # I
    .param p3, "index"    # I
    .param p4, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;II[I)V"
        }
    .end annotation

    .line 2213
    .local p1, "val":Ljava/lang/Object;, "TT;"
    array-length v0, p4

    if-ge p3, v0, :cond_11

    .line 2218
    aget v0, p4, p3

    .line 2221
    .local v0, "length":I
    if-eqz p1, :cond_10

    .line 2224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2227
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_e

    .line 2235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 2236
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p3, 0x1

    array-length v3, p4

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2237
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array has fewer dimensions than expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2240
    :cond_1
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    .line 2241
    move-object v2, p1

    check-cast v2, [Z

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_2

    .line 2242
    :cond_2
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    .line 2243
    move-object v2, p1

    check-cast v2, [B

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    .line 2244
    :cond_3
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    .line 2245
    move-object v2, p1

    check-cast v2, [C

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharArray([C)V

    goto/16 :goto_2

    .line 2246
    :cond_4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    .line 2247
    move-object v2, p1

    check-cast v2, [I

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_2

    .line 2248
    :cond_5
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    .line 2249
    move-object v2, p1

    check-cast v2, [J

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_2

    .line 2250
    :cond_6
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    .line 2251
    move-object v2, p1

    check-cast v2, [F

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_2

    .line 2252
    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_8

    .line 2253
    move-object v2, p1

    check-cast v2, [D

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_2

    .line 2254
    :cond_8
    const-class v2, Landroid/os/IBinder;

    if-ne v1, v2, :cond_9

    .line 2255
    move-object v2, p1

    check-cast v2, [Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    goto :goto_2

    .line 2256
    :cond_9
    const-class v2, Landroid/os/IInterface;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2257
    move-object v2, p1

    check-cast v2, [Landroid/os/IInterface;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInterfaceArray([Landroid/os/IInterface;)V

    goto :goto_2

    .line 2258
    :cond_a
    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2259
    move-object v2, p1

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 2260
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2261
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_c

    .line 2263
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v3, p2, v4, p4}, Landroid/os/Parcel;->writeFixedArrayInternal(Ljava/lang/Object;II[I)V

    .line 2262
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2269
    .end local v2    # "i":I
    :cond_c
    :goto_2
    return-void

    .line 2267
    :cond_d
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown type for fixed-size array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2228
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad length: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2229
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2225
    :cond_f
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2222
    :cond_10
    new-instance v1, Landroid/os/BadParcelableException;

    const-string v2, "Non-null array shouldn\'t have a null array."

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2214
    .end local v0    # "length":I
    :cond_11
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array has more dimensions than expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 643
    iget v0, p0, Landroid/os/Parcel;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/Parcel;->mFlags:I

    .line 644
    return-void
.end method

.method public final greylist-max-o adoptClassCookies(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "from"    # Landroid/os/Parcel;

    .line 789
    iget-object v0, p1, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 790
    return-void
.end method

.method public blacklist allowSquashing()Z
    .locals 2

    .line 2598
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2599
    .local v0, "previous":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2600
    return v0
.end method

.method public final whitelist appendFrom(Landroid/os/Parcel;II)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 760
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/os/Parcel;->nativeAppendFrom(JJII)V

    .line 761
    return-void
.end method

.method public greylist-max-o compareData(Landroid/os/Parcel;)I
    .locals 4
    .param p1, "other"    # Landroid/os/Parcel;

    .line 765
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/os/Parcel;->nativeCompareData(JJ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o copyClassCookies()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 794
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public final whitelist createBinderArray()[Landroid/os/IBinder;
    .locals 4

    .line 1901
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1902
    .local v0, "N":I
    if-ltz v0, :cond_1

    .line 1903
    new-array v1, v0, [Landroid/os/IBinder;

    .line 1904
    .local v1, "val":[Landroid/os/IBinder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1905
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1904
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1907
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1909
    .end local v1    # "val":[Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createBinderArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 3736
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3737
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 3738
    const/4 v1, 0x0

    return-object v1

    .line 3740
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3741
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_0
    if-lez v0, :cond_1

    .line 3742
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3743
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3745
    :cond_1
    return-object v1
.end method

.method public final whitelist createBooleanArray()[Z
    .locals 4

    .line 1486
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1490
    .local v0, "N":I
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_2

    .line 1491
    new-array v1, v0, [Z

    .line 1492
    .local v1, "val":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1493
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v1, v2

    .line 1492
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1495
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 1497
    .end local v1    # "val":[Z
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createByteArray()[B
    .locals 2

    .line 3381
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeCreateByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createCharArray()[C
    .locals 4

    .line 1566
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1567
    .local v0, "N":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1568
    new-array v1, v0, [C

    .line 1569
    .local v1, "val":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1570
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 1569
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1572
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1574
    .end local v1    # "val":[C
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createDoubleArray()[D
    .locals 5

    .line 1716
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1718
    .local v0, "N":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1719
    new-array v1, v0, [D

    .line 1720
    .local v1, "val":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1721
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1720
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1723
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1725
    .end local v1    # "val":[D
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist createExceptionOrNull(ILjava/lang/String;)Ljava/lang/Exception;
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 3015
    packed-switch p1, :pswitch_data_0

    .line 3039
    const/4 v0, 0x0

    return-object v0

    .line 3023
    :pswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3025
    :pswitch_1
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3027
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3029
    :pswitch_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3031
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3033
    :pswitch_5
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    return-object v0

    .line 3035
    :pswitch_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3037
    :pswitch_7
    new-instance v0, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 3017
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 3018
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0

    .line 3020
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [missing Parcelable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs whitelist createFixedArray(Ljava/lang/Class;Landroid/os/Parcelable$Creator;[I)Ljava/lang/Object;
    .locals 8
    .param p3, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Parcelable$Creator<",
            "TS;>;[I)TT;"
        }
    .end annotation

    .line 4236
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TS;>;"
    array-length v0, p3

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V

    .line 4238
    const/4 v0, 0x0

    .line 4239
    .local v0, "val":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 4240
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, ", but got "

    const-string v4, "Bad length: expected "

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 4241
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    .line 4269
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    aget v6, p3, v5

    if-ne v2, v6, :cond_0

    goto :goto_0

    .line 4270
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4271
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4273
    :cond_1
    :goto_0
    return-object v0

    .line 4242
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4243
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4244
    .local v2, "length":I
    if-gez v2, :cond_3

    .line 4245
    const/4 v3, 0x0

    return-object v3

    .line 4247
    :cond_3
    aget v6, p3, v5

    if-ne v2, v6, :cond_6

    .line 4253
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 4254
    .local v3, "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4255
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    .line 4257
    :cond_4
    invoke-static {v3, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 4258
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 4259
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 4258
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4261
    .end local v4    # "i":I
    :cond_5
    return-object v0

    .line 4248
    .end local v3    # "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4263
    .end local v2    # "length":I
    :cond_7
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type for fixed-size array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs whitelist createFixedArray(Ljava/lang/Class;Ljava/util/function/Function;[I)Ljava/lang/Object;
    .locals 8
    .param p3, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TS;>;[I)TT;"
        }
    .end annotation

    .line 4180
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TS;>;"
    array-length v0, p3

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V

    .line 4182
    const/4 v0, 0x0

    .line 4183
    .local v0, "val":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 4184
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Landroid/os/IInterface;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, ", but got "

    const-string v4, "Bad length: expected "

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 4185
    new-instance v2, Landroid/os/Parcel$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/os/Parcel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->createInterfaceArray(Ljava/util/function/IntFunction;Ljava/util/function/Function;)[Landroid/os/IInterface;

    move-result-object v0

    .line 4214
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    aget v6, p3, v5

    if-ne v2, v6, :cond_0

    goto :goto_0

    .line 4215
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4216
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4218
    :cond_1
    :goto_0
    return-object v0

    .line 4187
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4188
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4189
    .local v2, "length":I
    if-gez v2, :cond_3

    .line 4190
    const/4 v3, 0x0

    return-object v3

    .line 4192
    :cond_3
    aget v6, p3, v5

    if-ne v2, v6, :cond_6

    .line 4198
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 4199
    .local v3, "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4200
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    .line 4202
    :cond_4
    invoke-static {v3, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 4203
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 4204
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 4203
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4206
    .end local v4    # "i":I
    :cond_5
    return-object v0

    .line 4193
    .end local v3    # "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4208
    .end local v2    # "length":I
    :cond_7
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type for fixed-size array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs whitelist createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .locals 8
    .param p2, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[I)TT;"
        }
    .end annotation

    .line 4111
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V

    .line 4113
    const/4 v0, 0x0

    .line 4114
    .local v0, "val":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 4115
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, ", but got "

    const-string v4, "Bad length: expected "

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    .line 4116
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    goto :goto_0

    .line 4117
    :cond_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 4118
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 4119
    :cond_1
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    .line 4120
    invoke-virtual {p0}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 4121
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    .line 4122
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    goto :goto_0

    .line 4123
    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    .line 4124
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    goto :goto_0

    .line 4125
    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    .line 4126
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    goto :goto_0

    .line 4127
    :cond_5
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    .line 4128
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    goto :goto_0

    .line 4129
    :cond_6
    const-class v2, Landroid/os/IBinder;

    if-ne v1, v2, :cond_9

    .line 4130
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object v0

    .line 4158
    :goto_0
    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    aget v6, p2, v5

    if-ne v2, v6, :cond_7

    goto :goto_1

    .line 4159
    :cond_7
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4160
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4162
    :cond_8
    :goto_1
    return-object v0

    .line 4131
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4132
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4133
    .local v2, "length":I
    if-gez v2, :cond_a

    .line 4134
    const/4 v3, 0x0

    return-object v3

    .line 4136
    :cond_a
    aget v6, p2, v5

    if-ne v2, v6, :cond_d

    .line 4142
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 4143
    .local v3, "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4144
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_2

    .line 4146
    :cond_b
    invoke-static {v3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 4147
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_c

    .line 4148
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;)V

    .line 4147
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4150
    .end local v4    # "i":I
    :cond_c
    return-object v0

    .line 4137
    .end local v3    # "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4152
    .end local v2    # "length":I
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type for fixed-size array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist createFloatArray()[F
    .locals 4

    .line 1678
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1680
    .local v0, "N":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1681
    new-array v1, v0, [F

    .line 1682
    .local v1, "val":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1683
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v1, v2

    .line 1682
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1685
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1687
    .end local v1    # "val":[F
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createIntArray()[I
    .locals 4

    .line 1603
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1604
    .local v0, "N":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1605
    new-array v1, v0, [I

    .line 1606
    .local v1, "val":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1607
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v1, v2

    .line 1606
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1609
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1611
    .end local v1    # "val":[I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createInterfaceArray(Ljava/util/function/IntFunction;Ljava/util/function/Function;)[Landroid/os/IInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1935
    .local p1, "newArray":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1936
    .local v0, "N":I
    if-ltz v0, :cond_1

    .line 1937
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/IInterface;

    .line 1938
    .local v1, "val":[Landroid/os/IInterface;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1939
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    aput-object v3, v1, v2

    .line 1938
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1941
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1943
    .end local v1    # "val":[Landroid/os/IInterface;, "[TT;"
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createInterfaceArrayList(Ljava/util/function/Function;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3762
    .local p1, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3763
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 3764
    const/4 v1, 0x0

    return-object v1

    .line 3766
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3767
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-lez v0, :cond_1

    .line 3768
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3769
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3771
    :cond_1
    return-object v1
.end method

.method public final whitelist createLongArray()[J
    .locals 5

    .line 1640
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1642
    .local v0, "N":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1643
    new-array v1, v0, [J

    .line 1644
    .local v1, "val":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1645
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1644
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1647
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1649
    .end local v1    # "val":[J
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final greylist-max-o createRawFileDescriptorArray()[Ljava/io/FileDescriptor;
    .locals 4

    .line 3165
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3166
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 3167
    const/4 v1, 0x0

    return-object v1

    .line 3169
    :cond_0
    new-array v1, v0, [Ljava/io/FileDescriptor;

    .line 3170
    .local v1, "f":[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3171
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3173
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public blacklist createShortArray()[S
    .locals 4

    .line 1528
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1529
    .local v0, "n":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1530
    new-array v1, v0, [S

    .line 1531
    .local v1, "val":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1532
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 1531
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1534
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1536
    .end local v1    # "val":[S
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final blacklist createString16Array()[Ljava/lang/String;
    .locals 4

    .line 1809
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1810
    .local v0, "N":I
    if-ltz v0, :cond_1

    .line 1811
    new-array v1, v0, [Ljava/lang/String;

    .line 1812
    .local v1, "val":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1813
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1812
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1815
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1817
    .end local v1    # "val":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final blacklist createString8Array()[Ljava/lang/String;
    .locals 4

    .line 1769
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1770
    .local v0, "N":I
    if-ltz v0, :cond_1

    .line 1771
    new-array v1, v0, [Ljava/lang/String;

    .line 1772
    .local v1, "val":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1773
    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1772
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1775
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1777
    .end local v1    # "val":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createStringArray()[Ljava/lang/String;
    .locals 1

    .line 1746
    invoke-virtual {p0}, Landroid/os/Parcel;->createString16Array()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createStringArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3711
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3712
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 3713
    const/4 v1, 0x0

    return-object v1

    .line 3715
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3716
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-lez v0, :cond_1

    .line 3717
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3718
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3720
    :cond_1
    return-object v1
.end method

.method public final whitelist createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3914
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3915
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 3916
    const/4 v1, 0x0

    return-object v1

    .line 3918
    :cond_0
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 3919
    .local v1, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3920
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3919
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3922
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public final whitelist createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3603
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3604
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 3605
    const/4 v1, 0x0

    return-object v1

    .line 3607
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3608
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-lez v0, :cond_1

    .line 3609
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3610
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3612
    :cond_1
    return-object v1
.end method

.method public final whitelist createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 3685
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3686
    .local v0, "count":I
    if-gez v0, :cond_0

    .line 3687
    const/4 v1, 0x0

    return-object v1

    .line 3689
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3690
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3691
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3692
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 3693
    .local v4, "value":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3690
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Landroid/os/Parcelable;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3695
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public final whitelist createTypedSparseArray(Landroid/os/Parcelable$Creator;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 3657
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3658
    .local v0, "count":I
    if-gez v0, :cond_0

    .line 3659
    const/4 v1, 0x0

    return-object v1

    .line 3661
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 3662
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3663
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3664
    .local v3, "index":I
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 3665
    .local v4, "value":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3662
    .end local v3    # "index":I
    .end local v4    # "value":Landroid/os/Parcelable;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3667
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public final whitelist dataAvail()I
    .locals 2

    .line 675
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataAvail(J)I

    move-result v0

    return v0
.end method

.method public final whitelist dataCapacity()I
    .locals 2

    .line 693
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataCapacity(J)I

    move-result v0

    return v0
.end method

.method public final whitelist dataPosition()I
    .locals 2

    .line 683
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataPosition(J)I

    move-result v0

    return v0
.end method

.method public whitelist dataSize()I
    .locals 2

    .line 667
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataSize(J)I

    move-result v0

    return v0
.end method

.method public final whitelist enforceInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 930
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeEnforceInterface(JLjava/lang/String;)V

    .line 931
    return-void
.end method

.method public whitelist enforceNoDataAvail()V
    .locals 4

    .line 940
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    .line 941
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 944
    return-void

    .line 942
    :cond_0
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel data not fully consumed, unread size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5161
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 5162
    return-void
.end method

.method public final greylist-max-o getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "clz"    # Ljava/lang/Class;

    .line 784
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getFlags()I
    .locals 1

    .line 633
    iget v0, p0, Landroid/os/Parcel;->mFlags:I

    return v0
.end method

.method public blacklist getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 920
    iget-object v0, p0, Landroid/os/Parcel;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOpenAshmemSize()J
    .locals 2

    .line 5401
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeGetOpenAshmemSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist hasFileDescriptors()Z
    .locals 2

    .line 812
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasFileDescriptors(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFileDescriptors(II)Z
    .locals 2
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 827
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeHasFileDescriptorsInRange(JII)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasReadWriteHelper()Z
    .locals 2

    .line 593
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist markSensitive()V
    .locals 2

    .line 619
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarkSensitive(J)V

    .line 620
    return-void
.end method

.method public final whitelist marshall()[B
    .locals 2

    .line 749
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarshall(J)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist maybeWriteSquashed(Landroid/os/Parcelable;)Z
    .locals 5
    .param p1, "p"    # Landroid/os/Parcelable;

    .line 2665
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2667
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2668
    return v1

    .line 2670
    :cond_0
    invoke-direct {p0}, Landroid/os/Parcel;->ensureWrittenSquashableParcelables()V

    .line 2671
    iget-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2672
    .local v0, "firstPos":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 2675
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2678
    .local v1, "pos":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2679
    const/4 v2, 0x1

    return v2

    .line 2682
    .end local v1    # "pos":I
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2685
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 2686
    .local v2, "pos":I
    iget-object v3, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2689
    return v1
.end method

.method public final greylist-max-o pushAllowFds(Z)Z
    .locals 2
    .param p1, "allowFds"    # Z

    .line 729
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativePushAllowFds(JZ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o putClassCookies(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 799
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 800
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    .line 803
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 805
    :cond_1
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 806
    return-void
.end method

.method public whitelist readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3505
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3519
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3520
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3471
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3486
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3487
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 5246
    .local p1, "outVal":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<-Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5247
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 5248
    return-void

    .line 5250
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V

    .line 5251
    return-void
.end method

.method blacklist readArrayMap(Landroid/util/ArrayMap;IZZLjava/lang/ClassLoader;)Z
    .locals 4
    .param p2, "size"    # I
    .param p3, "sorted"    # Z
    .param p4, "lazy"    # Z
    .param p5, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IZZ",
            "Ljava/lang/ClassLoader;",
            ")Z"
        }
    .end annotation

    .line 5220
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<-Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    .line 5221
    .local v0, "recycle":Z
    :goto_0
    if-lez p2, :cond_3

    .line 5222
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5223
    .local v1, "key":Ljava/lang/String;
    if-eqz p4, :cond_0

    invoke-virtual {p0, p5}, Landroid/os/Parcel;->readLazyValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 5224
    .local v2, "value":Ljava/lang/Object;
    :goto_1
    instance-of v3, v2, Landroid/os/Parcel$LazyValue;

    if-eqz v3, :cond_1

    .line 5225
    const/4 v0, 0x0

    .line 5227
    :cond_1
    if-eqz p3, :cond_2

    .line 5228
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 5230
    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5232
    :goto_2
    nop

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 p2, p2, -0x1

    .line 5233
    goto :goto_0

    .line 5234
    :cond_3
    if-eqz p3, :cond_4

    .line 5235
    invoke-virtual {p1}, Landroid/util/ArrayMap;->validate()V

    .line 5237
    :cond_4
    return v0
.end method

.method public greylist readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5262
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5263
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 5264
    const/4 v1, 0x0

    return-object v1

    .line 5266
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 5267
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5268
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    .line 5269
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 5267
    .end local v3    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5271
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public final whitelist readBinderArray([Landroid/os/IBinder;)V
    .locals 3
    .param p1, "val"    # [Landroid/os/IBinder;

    .line 1914
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1915
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1916
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1917
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1922
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1920
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readBinderList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 3802
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3803
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3804
    .local v1, "N":I
    const/4 v2, 0x0

    .line 3805
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 3806
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3805
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3808
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3809
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3808
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3811
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 3812
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3811
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3814
    :cond_2
    return-void
.end method

.method public final whitelist readBlob()[B
    .locals 2

    .line 3401
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadBlob(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readBoolean()Z
    .locals 1

    .line 3116
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist readBooleanArray([Z)V
    .locals 3
    .param p1, "val"    # [Z

    .line 1502
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1503
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 1504
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1505
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-boolean v2, p1, v1

    .line 1504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1510
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 1508
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readBundle()Landroid/os/Bundle;
    .locals 1

    .line 3301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 3312
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3313
    .local v0, "length":I
    if-gez v0, :cond_0

    .line 3315
    const/4 v1, 0x0

    return-object v1

    .line 3318
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 3319
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 3320
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3322
    :cond_1
    return-object v1
.end method

.method public final whitelist readByte()B
    .locals 1

    .line 3197
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final whitelist readByteArray([B)V
    .locals 3
    .param p1, "val"    # [B

    .line 3389
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    if-eqz p1, :cond_0

    array-length v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, p1, v2}, Landroid/os/Parcel;->nativeReadByteArray(J[BI)Z

    move-result v0

    .line 3390
    .local v0, "valid":Z
    if-eqz v0, :cond_1

    .line 3393
    return-void

    .line 3391
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist readCallingWorkSourceUid()I
    .locals 2

    .line 972
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadCallingWorkSourceUid(J)I

    move-result v0

    return v0
.end method

.method public final whitelist readCharArray([C)V
    .locals 3
    .param p1, "val"    # [C

    .line 1579
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1580
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1582
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 1581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1587
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1585
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final greylist readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .line 3126
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final greylist-max-o readCharSequenceArray()[Ljava/lang/CharSequence;
    .locals 4

    .line 3420
    const/4 v0, 0x0

    .line 3422
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3423
    .local v1, "length":I
    if-ltz v1, :cond_0

    .line 3425
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 3427
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3429
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3433
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public final greylist-max-o readCharSequenceList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 3442
    const/4 v0, 0x0

    .line 3444
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3445
    .local v1, "length":I
    if-ltz v1, :cond_0

    .line 3446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 3448
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3449
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3448
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3453
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public final greylist readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 2
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 4796
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_0

    .line 4797
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 4799
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    return-object v1

    .line 4801
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_0
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public final whitelist readDouble()D
    .locals 2

    .line 3070
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist readDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .line 1730
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1731
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1732
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1733
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 1732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1738
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1736
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readException()V
    .locals 2

    .line 2929
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 2930
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 2931
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2932
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 2934
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final whitelist readException(ILjava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 2985
    const/4 v0, 0x0

    .line 2986
    .local v0, "remoteStackTrace":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2987
    .local v1, "remoteStackPayloadSize":I
    if-lez v1, :cond_0

    .line 2988
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2990
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->createException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v2

    .line 2992
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 2993
    new-instance v3, Landroid/os/RemoteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote stack trace:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 2995
    .local v3, "cause":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/util/ExceptionUtils;->appendCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2997
    .end local v3    # "cause":Landroid/os/RemoteException;
    :cond_1
    invoke-static {v2}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 2998
    return-void
.end method

.method public final greylist readExceptionCode()I
    .locals 4

    .line 2952
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2953
    .local v0, "code":I
    const/16 v1, -0x7f

    if-ne v0, v1, :cond_0

    .line 2954
    invoke-static {p0}, Landroid/app/AppOpsManager;->readAndLogNotedAppops(Landroid/os/Parcel;)V

    .line 2956
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2959
    :cond_0
    const/16 v1, -0x80

    if-ne v0, v1, :cond_2

    .line 2960
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2961
    .local v1, "headerSize":I
    if-nez v1, :cond_1

    .line 2962
    const-string v2, "Parcel"

    const-string v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2968
    :cond_1
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    .line 2972
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 2974
    .end local v1    # "headerSize":I
    :cond_2
    return v0
.end method

.method public final whitelist readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 3148
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 3149
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist readFixedArray(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 3984
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 3985
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 3986
    move-object v1, p1

    check-cast v1, [Z

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    goto/16 :goto_1

    .line 3987
    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 3988
    move-object v1, p1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_1

    .line 3989
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 3990
    move-object v1, p1

    check-cast v1, [C

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readCharArray([C)V

    goto :goto_1

    .line 3991
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 3992
    move-object v1, p1

    check-cast v1, [I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_1

    .line 3993
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 3994
    move-object v1, p1

    check-cast v1, [J

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readLongArray([J)V

    goto :goto_1

    .line 3995
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 3996
    move-object v1, p1

    check-cast v1, [F

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_1

    .line 3997
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 3998
    move-object v1, p1

    check-cast v1, [D

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readDoubleArray([D)V

    goto :goto_1

    .line 3999
    :cond_6
    const-class v1, Landroid/os/IBinder;

    if-ne v0, v1, :cond_7

    .line 4000
    move-object v1, p1

    check-cast v1, [Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readBinderArray([Landroid/os/IBinder;)V

    goto :goto_1

    .line 4001
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4002
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4003
    .local v1, "length":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 4007
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_8

    .line 4008
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;)V

    .line 4007
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4010
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_8
    nop

    .line 4013
    :goto_1
    return-void

    .line 4004
    .restart local v1    # "length":I
    :cond_9
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad length: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4011
    .end local v1    # "length":I
    :cond_a
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for fixed-size array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist readFixedArray(Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/Parcelable;",
            ">(TT;",
            "Landroid/os/Parcelable$Creator<",
            "TS;>;)V"
        }
    .end annotation

    .line 4050
    .local p1, "val":Ljava/lang/Object;, "TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TS;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4051
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4052
    move-object v1, p1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {p0, v1, p2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    goto :goto_1

    .line 4053
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4054
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4055
    .local v1, "length":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 4059
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4060
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 4059
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4062
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_1
    nop

    .line 4065
    :goto_1
    return-void

    .line 4056
    .restart local v1    # "length":I
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad length: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4063
    .end local v1    # "length":I
    :cond_3
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for fixed-size array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist readFixedArray(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/IInterface;",
            ">(TT;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TS;>;)V"
        }
    .end annotation

    .line 4024
    .local p1, "val":Ljava/lang/Object;, "TT;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TS;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4025
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Landroid/os/IInterface;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4026
    move-object v1, p1

    check-cast v1, [Landroid/os/IInterface;

    invoke-virtual {p0, v1, p2}, Landroid/os/Parcel;->readInterfaceArray([Landroid/os/IInterface;Ljava/util/function/Function;)V

    goto :goto_1

    .line 4027
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4028
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4029
    .local v1, "length":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 4033
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4034
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 4033
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4036
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_1
    nop

    .line 4039
    :goto_1
    return-void

    .line 4030
    .restart local v1    # "length":I
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad length: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4037
    .end local v1    # "length":I
    :cond_3
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for fixed-size array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readFloat()F
    .locals 2

    .line 3062
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFloat(J)F

    move-result v0

    return v0
.end method

.method public final whitelist readFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    .line 1692
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1693
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1694
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1695
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 1694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1700
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1698
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/os/Parcel;->readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readHashMap(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TK;>;",
            "Ljava/lang/Class<",
            "+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3289
    .local p2, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<+TK;>;"
    .local p3, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3290
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3291
    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readInt()I
    .locals 2

    .line 3047
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadInt(J)I

    move-result v0

    return v0
.end method

.method public final whitelist readIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    .line 1616
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1617
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1618
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1619
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 1618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1624
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1622
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readInterfaceArray([Landroid/os/IInterface;Ljava/util/function/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">([TT;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 1958
    .local p1, "val":[Landroid/os/IInterface;, "[TT;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1959
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1960
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1961
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    aput-object v2, p1, v1

    .line 1960
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1966
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1964
    :cond_1
    new-instance v1, Landroid/os/BadParcelableException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readInterfaceList(Ljava/util/List;Ljava/util/function/Function;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 3824
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3825
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3826
    .local v1, "N":I
    const/4 v2, 0x0

    .line 3827
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 3828
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3827
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3830
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3831
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3830
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3833
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 3834
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3833
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3836
    :cond_2
    return-void
.end method

.method public blacklist readLazyValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 12
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 4364
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    .line 4365
    .local v6, "start":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4366
    .local v7, "type":I
    invoke-direct {p0, v7}, Landroid/os/Parcel;->isLengthPrefixed(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4367
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4368
    .local v8, "objectLength":I
    if-gez v8, :cond_0

    .line 4369
    return-object v1

    .line 4371
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-static {v0, v8}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v9

    .line 4372
    .local v9, "end":I
    sub-int v10, v9, v6

    .line 4373
    .local v10, "valueLength":I
    invoke-virtual {p0, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4374
    new-instance v11, Landroid/os/Parcel$LazyValue;

    move-object v0, v11

    move-object v1, p0

    move v2, v6

    move v3, v10

    move v4, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel$LazyValue;-><init>(Landroid/os/Parcel;IIILjava/lang/ClassLoader;)V

    return-object v11

    .line 4376
    .end local v8    # "objectLength":I
    .end local v9    # "end":I
    .end local v10    # "valueLength":I
    :cond_1
    invoke-direct {p0, v7, p1, v1}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3242
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3243
    .local v0, "N":I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 3244
    return-void
.end method

.method public whitelist readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 1
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3256
    .local p1, "outVal":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3257
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3258
    .local v0, "n":I
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 3259
    return-void
.end method

.method public final whitelist readLong()J
    .locals 2

    .line 3054
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist readLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .line 1654
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1655
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1656
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1657
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 1656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1662
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1660
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3212
    return-void
.end method

.method public whitelist readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 3224
    .local p1, "outVal":Ljava/util/Map;, "Ljava/util/Map<-TK;-TV;>;"
    .local p3, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3225
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3226
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3227
    return-void
.end method

.method greylist-max-o readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .locals 6
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "n"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 5170
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5171
    return-void
.end method

.method public final whitelist readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4755
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public whitelist readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4768
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4769
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4950
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    return-object v0
.end method

.method public whitelist readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 4964
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4823
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readParcelableCreator(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .line 4837
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4838
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 1
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3855
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Parcel;->readParcelableListInternal(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 3869
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3870
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3871
    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->readParcelableListInternal(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readPersistableBundle()Landroid/os/PersistableBundle;
    .locals 1

    .line 3332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 3343
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3344
    .local v0, "length":I
    if-gez v0, :cond_0

    .line 3346
    const/4 v1, 0x0

    return-object v1

    .line 3349
    :cond_0
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1, p0, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Parcel;I)V

    .line 3350
    .local v1, "bundle":Landroid/os/PersistableBundle;
    if-eqz p1, :cond_1

    .line 3351
    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3353
    :cond_1
    return-object v1
.end method

.method public final greylist readRawFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    .line 3155
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o readRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "val"    # [Ljava/io/FileDescriptor;

    .line 3183
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3184
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 3185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3186
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    aput-object v2, p1, v1

    .line 3185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3191
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 3189
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist readSerializable()Ljava/io/Serializable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4996
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public whitelist readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5012
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5013
    nop

    .line 5014
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 5013
    :goto_0
    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readShortArray([S)V
    .locals 3
    .param p1, "val"    # [S

    .line 1542
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1543
    .local v0, "n":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1544
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1545
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p1, v1

    .line 1544
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1550
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1548
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readSize()Landroid/util/Size;
    .locals 3

    .line 3361
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3362
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3363
    .local v1, "height":I
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public final whitelist readSizeF()Landroid/util/SizeF;
    .locals 3

    .line 3371
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 3372
    .local v0, "width":F
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 3373
    .local v1, "height":F
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2
.end method

.method public whitelist readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3538
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 3552
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3553
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .locals 2

    .line 3563
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3564
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 3565
    const/4 v1, 0x0

    return-object v1

    .line 3567
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 3568
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    .line 3569
    return-object v1
.end method

.method public final greylist-max-o readSparseIntArray()Landroid/util/SparseIntArray;
    .locals 2

    .line 3579
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3580
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 3581
    const/4 v1, 0x0

    return-object v1

    .line 3583
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 3584
    .local v1, "sa":Landroid/util/SparseIntArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseIntArrayInternal(Landroid/util/SparseIntArray;I)V

    .line 3585
    return-object v1
.end method

.method public blacklist readSquashed(Landroid/os/Parcel$SquashReadHelper;)Landroid/os/Parcelable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel$SquashReadHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2715
    .local p1, "reader":Landroid/os/Parcel$SquashReadHelper;, "Landroid/os/Parcel$SquashReadHelper<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2716
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2718
    .local v1, "pos":I
    if-nez v0, :cond_0

    .line 2720
    invoke-interface {p1, p0}, Landroid/os/Parcel$SquashReadHelper;->readRawParceled(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 2721
    .local v2, "p":Landroid/os/Parcelable;, "TT;"
    invoke-direct {p0}, Landroid/os/Parcel;->ensureReadSquashableParcelables()V

    .line 2722
    iget-object v3, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2723
    return-object v2

    .line 2726
    .end local v2    # "p":Landroid/os/Parcelable;, "TT;"
    :cond_0
    sub-int v2, v1, v0

    .line 2728
    .local v2, "firstAbsolutePos":I
    iget-object v3, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 2729
    .local v3, "p":Landroid/os/Parcelable;
    if-nez v3, :cond_2

    .line 2730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2731
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2732
    iget-object v6, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2731
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2734
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Map doesn\'t contain offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : contains="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2736
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2734
    const-string v6, "Parcel"

    invoke-static {v6, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object v3
.end method

.method public final whitelist readString()Ljava/lang/String;
    .locals 1

    .line 3078
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString16()Ljava/lang/String;
    .locals 1

    .line 3088
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0}, Landroid/os/Parcel$ReadWriteHelper;->readString16(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString16Array([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    .line 1823
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1824
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1825
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1826
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1825
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1831
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1829
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist readString16NoHelper()Ljava/lang/String;
    .locals 2

    .line 3109
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString16(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString8()Ljava/lang/String;
    .locals 1

    .line 3083
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0}, Landroid/os/Parcel$ReadWriteHelper;->readString8(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString8Array([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    .line 1783
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1784
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1785
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1786
    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1785
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1791
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1789
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist readString8NoHelper()Ljava/lang/String;
    .locals 2

    .line 3104
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStringArray([Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # [Ljava/lang/String;

    .line 1750
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readString16Array([Ljava/lang/String;)V

    .line 1751
    return-void
.end method

.method public final greylist readStringArray()[Ljava/lang/String;
    .locals 1

    .line 3411
    invoke-virtual {p0}, Landroid/os/Parcel;->createString16Array()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStringList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3781
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3782
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3783
    .local v1, "N":I
    const/4 v2, 0x0

    .line 3784
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 3785
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3784
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3787
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3788
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3787
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3790
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 3791
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3790
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3793
    :cond_2
    return-void
.end method

.method public greylist-max-o readStringNoHelper()Ljava/lang/String;
    .locals 1

    .line 3099
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStrongBinder()Landroid/os/IBinder;
    .locals 2

    .line 3133
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadStrongBinder(J)Landroid/os/IBinder;

    move-result-object v0

    .line 3137
    .local v0, "result":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/os/Parcel;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3139
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 3141
    :cond_0
    return-object v0
.end method

.method public final whitelist readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)V"
        }
    .end annotation

    .line 3926
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3927
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 3928
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3929
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 3928
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3934
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 3932
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final greylist-max-o readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3942
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)V"
        }
    .end annotation

    .line 3628
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3629
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3630
    .local v1, "N":I
    const/4 v2, 0x0

    .line 3631
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 3632
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3631
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3634
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3635
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3634
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3637
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 3638
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3637
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3640
    :cond_2
    return-void
.end method

.method public final whitelist readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3958
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3959
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3961
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 4309
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist recycle()V
    .locals 4

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 555
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 557
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    .line 558
    sget-object v0, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    sget v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    if-ge v2, v1, :cond_0

    .line 560
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    iput-object v1, p0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 561
    sput-object p0, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    .line 562
    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    .line 564
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 566
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 567
    sget-object v0, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_1
    sget v2, Landroid/os/Parcel;->sHolderPoolSize:I

    if-ge v2, v1, :cond_2

    .line 569
    sget-object v1, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    iput-object v1, p0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 570
    sput-object p0, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    .line 571
    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/os/Parcel;->sHolderPoolSize:I

    .line 573
    :cond_2
    monitor-exit v0

    .line 575
    :goto_0
    return-void

    .line 573
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public blacklist replaceCallingWorkSourceUid(I)Z
    .locals 2
    .param p1, "workSourceUid"    # I

    .line 956
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeReplaceCallingWorkSourceUid(JI)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o restoreAllowFds(Z)V
    .locals 2
    .param p1, "lastValue"    # Z

    .line 734
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(JZ)V

    .line 735
    return-void
.end method

.method public blacklist restoreAllowSquashing(Z)V
    .locals 1
    .param p1, "previous"    # Z

    .line 2609
    iput-boolean p1, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2610
    if-nez p1, :cond_0

    .line 2611
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    .line 2613
    :cond_0
    return-void
.end method

.method public final greylist-max-o setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p1, "clz"    # Ljava/lang/Class;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 778
    :cond_0
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    return-void
.end method

.method public final whitelist setDataCapacity(I)V
    .locals 2
    .param p1, "size"    # I

    .line 724
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(JI)V

    .line 725
    return-void
.end method

.method public final whitelist setDataPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 713
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataPosition(JI)V

    .line 714
    return-void
.end method

.method public final whitelist setDataSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 704
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataSize(JI)V

    .line 705
    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 638
    iput p1, p0, Landroid/os/Parcel;->mFlags:I

    .line 639
    return-void
.end method

.method public whitelist setPropagateAllowBlocking()V
    .locals 1

    .line 660
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->addFlags(I)V

    .line 661
    return-void
.end method

.method public greylist-max-o setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V
    .locals 1
    .param p1, "helper"    # Landroid/os/Parcel$ReadWriteHelper;

    .line 584
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    :goto_0
    iput-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 585
    return-void
.end method

.method public final whitelist unmarshall([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 756
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)V

    .line 757
    return-void
.end method

.method public final whitelist writeArray([Ljava/lang/Object;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/Object;

    .line 1405
    if-nez p1, :cond_0

    .line 1406
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    return-void

    .line 1409
    :cond_0
    array-length v0, p1

    .line 1410
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1411
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1413
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1416
    :cond_1
    return-void
.end method

.method public greylist-max-r writeArrayMap(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1290
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1291
    return-void
.end method

.method greylist-max-o writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1260
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 1261
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    return-void

    .line 1266
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1267
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1276
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1283
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public greylist-max-r writeArraySet(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1329
    .local p1, "val":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1330
    .local v0, "size":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1332
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1331
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1334
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final whitelist writeBinderArray([Landroid/os/IBinder;)V
    .locals 3
    .param p1, "val"    # [Landroid/os/IBinder;

    .line 1834
    if-eqz p1, :cond_1

    .line 1835
    array-length v0, p1

    .line 1836
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1837
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1838
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1840
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1841
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1843
    :goto_1
    return-void
.end method

.method public final whitelist writeBinderList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 2068
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_0

    .line 2069
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2070
    return-void

    .line 2072
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2073
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2074
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2076
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2077
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2079
    :cond_1
    return-void
.end method

.method public final whitelist writeBlob([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 1013
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Parcel;->writeBlob([BII)V

    .line 1014
    return-void
.end method

.method public final whitelist writeBlob([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 1031
    if-nez p1, :cond_0

    .line 1032
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    return-void

    .line 1035
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 1036
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteBlob(J[BII)V

    .line 1037
    return-void
.end method

.method public final whitelist writeBoolean(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 1135
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    return-void
.end method

.method public final whitelist writeBooleanArray([Z)V
    .locals 3
    .param p1, "val"    # [Z

    .line 1473
    if-eqz p1, :cond_1

    .line 1474
    array-length v0, p1

    .line 1475
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1477
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1479
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1480
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    :goto_1
    return-void
.end method

.method public final whitelist writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/Bundle;

    .line 1341
    if-nez p1, :cond_0

    .line 1342
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    return-void

    .line 1346
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1347
    return-void
.end method

.method public final whitelist writeByte(B)V
    .locals 0
    .param p1, "val"    # B

    .line 1212
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    return-void
.end method

.method public final whitelist writeByteArray([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 981
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 982
    return-void
.end method

.method public final whitelist writeByteArray([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 992
    if-nez p1, :cond_0

    .line 993
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    return-void

    .line 996
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 997
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(J[BII)V

    .line 998
    return-void
.end method

.method public final whitelist writeCharArray([C)V
    .locals 3
    .param p1, "val"    # [C

    .line 1553
    if-eqz p1, :cond_1

    .line 1554
    array-length v0, p1

    .line 1555
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1557
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1559
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1560
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    :goto_1
    return-void
.end method

.method public final greylist writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    .line 1145
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1146
    return-void
.end method

.method public final greylist-max-o writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/CharSequence;

    .line 1873
    if-eqz p1, :cond_1

    .line 1874
    array-length v0, p1

    .line 1875
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1877
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1876
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1879
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1880
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    :goto_1
    return-void
.end method

.method public final greylist-max-o writeCharSequenceList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1888
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_1

    .line 1889
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1890
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1891
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1892
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1891
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1894
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1895
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    :goto_1
    return-void
.end method

.method public final whitelist writeDouble(D)V
    .locals 2
    .param p1, "val"    # D

    .line 1082
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(JD)I

    move-result v0

    .line 1083
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 1084
    invoke-static {v0}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1086
    :cond_0
    return-void
.end method

.method public final whitelist writeDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .line 1703
    if-eqz p1, :cond_1

    .line 1704
    array-length v0, p1

    .line 1705
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1707
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1706
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1709
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1710
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    :goto_1
    return-void
.end method

.method public final whitelist writeException(Ljava/lang/Exception;)V
    .locals 9
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2799
    invoke-static {p0}, Landroid/app/AppOpsManager;->prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V

    .line 2801
    invoke-static {p1}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v0

    .line 2802
    .local v0, "code":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2803
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 2804
    if-nez v0, :cond_1

    .line 2805
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 2806
    move-object v1, p1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 2808
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2810
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2811
    sget-boolean v1, Landroid/os/Parcel;->sParcelExceptionStackTrace:Z

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    .line 2812
    .local v1, "timeNow":J
    :goto_0
    sget-boolean v3, Landroid/os/Parcel;->sParcelExceptionStackTrace:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-wide v5, Landroid/os/Parcel;->sLastWriteExceptionStackTrace:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x3e8

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    .line 2814
    sput-wide v1, Landroid/os/Parcel;->sLastWriteExceptionStackTrace:J

    .line 2815
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2817
    :cond_3
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2819
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 2821
    :pswitch_0
    move-object v3, p1

    check-cast v3, Landroid/os/ServiceSpecificException;

    iget v3, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    goto :goto_2

    .line 2825
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 2826
    .local v3, "sizePosition":I
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2827
    move-object v4, p1

    check-cast v4, Landroid/os/Parcelable;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2828
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 2829
    .local v4, "payloadPosition":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2830
    sub-int v5, v4, v3

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2831
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2834
    .end local v3    # "sizePosition":I
    .end local v4    # "payloadPosition":I
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "val"    # Ljava/io/FileDescriptor;

    .line 1175
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V

    .line 1176
    return-void
.end method

.method public varargs whitelist writeFixedArray(Ljava/lang/Object;I[I)V
    .locals 1
    .param p2, "parcelableFlags"    # I
    .param p3, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I[I)V"
        }
    .end annotation

    .line 2204
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 2205
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2206
    return-void

    .line 2208
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/os/Parcel;->writeFixedArrayInternal(Ljava/lang/Object;II[I)V

    .line 2209
    return-void
.end method

.method public final whitelist writeFloat(F)V
    .locals 2
    .param p1, "val"    # F

    .line 1071
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFloat(JF)I

    move-result v0

    .line 1072
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 1073
    invoke-static {v0}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1075
    :cond_0
    return-void
.end method

.method public final whitelist writeFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    .line 1665
    if-eqz p1, :cond_1

    .line 1666
    array-length v0, p1

    .line 1667
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1669
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1671
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1672
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    :goto_1
    return-void
.end method

.method public final whitelist writeInt(I)V
    .locals 2
    .param p1, "val"    # I

    .line 1049
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInt(JI)I

    move-result v0

    .line 1050
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 1051
    invoke-static {v0}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1053
    :cond_0
    return-void
.end method

.method public final whitelist writeIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    .line 1590
    if-eqz p1, :cond_1

    .line 1591
    array-length v0, p1

    .line 1592
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1594
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1596
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1597
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    :goto_1
    return-void
.end method

.method public final whitelist writeInterfaceArray([Landroid/os/IInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">([TT;)V"
        }
    .end annotation

    .line 1858
    .local p1, "val":[Landroid/os/IInterface;, "[TT;"
    if-eqz p1, :cond_1

    .line 1859
    array-length v0, p1

    .line 1860
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1862
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1861
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1864
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1865
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    :goto_1
    return-void
.end method

.method public final whitelist writeInterfaceList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2090
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_0

    .line 2091
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    return-void

    .line 2094
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2095
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2096
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2097
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2098
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2099
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2101
    :cond_1
    return-void
.end method

.method public final whitelist writeInterfaceToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 910
    iput-object p1, p0, Landroid/os/Parcel;->interfaceName:Ljava/lang/String;

    .line 911
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(JLjava/lang/String;)V

    .line 912
    return-void
.end method

.method public final whitelist writeList(Ljava/util/List;)V
    .locals 3
    .param p1, "val"    # Ljava/util/List;

    .line 1386
    if-nez p1, :cond_0

    .line 1387
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    return-void

    .line 1390
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1391
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1392
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1394
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    :cond_1
    return-void
.end method

.method public final whitelist writeLong(J)V
    .locals 2
    .param p1, "val"    # J

    .line 1060
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(JJ)I

    move-result v0

    .line 1061
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 1062
    invoke-static {v0}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1064
    :cond_0
    return-void
.end method

.method public final whitelist writeLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .line 1627
    if-eqz p1, :cond_1

    .line 1628
    array-length v0, p1

    .line 1629
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1631
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1630
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1633
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1634
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1636
    :goto_1
    return-void
.end method

.method public final whitelist writeMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "val"    # Ljava/util/Map;

    .line 1227
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 1228
    return-void
.end method

.method greylist-max-o writeMapInternal(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1235
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 1236
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    return-void

    .line 1239
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1240
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 1241
    .local v1, "size":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1244
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1245
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1246
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, -0x1

    .line 1247
    goto :goto_0

    .line 1249
    :cond_1
    if-nez v1, :cond_2

    .line 1253
    return-void

    .line 1250
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v3, "Map size does not match number of entries!"

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist writeNoException()V
    .locals 3

    .line 2890
    invoke-static {p0}, Landroid/app/AppOpsManager;->prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V

    .line 2905
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2906
    const/16 v0, -0x80

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2908
    .local v0, "sizePosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2909
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 2910
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2911
    .local v1, "payloadPosition":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2912
    sub-int v2, v1, v0

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2913
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2914
    .end local v0    # "sizePosition":I
    .end local v1    # "payloadPosition":I
    goto :goto_0

    .line 2915
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2917
    :goto_0
    return-void
.end method

.method public final whitelist writeParcelable(Landroid/os/Parcelable;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "parcelableFlags"    # I

    .line 2545
    if-nez p1, :cond_0

    .line 2546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2547
    return-void

    .line 2549
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    .line 2550
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2551
    return-void
.end method

.method public final whitelist writeParcelableArray([Landroid/os/Parcelable;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .line 4291
    .local p1, "value":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_1

    .line 4292
    array-length v0, p1

    .line 4293
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4295
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4297
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 4298
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4300
    :goto_1
    return-void
.end method

.method public final whitelist writeParcelableCreator(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcelable;

    .line 2560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2561
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2562
    return-void
.end method

.method public final whitelist writeParcelableList(Ljava/util/List;I)V
    .locals 3
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2111
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_0

    .line 2112
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2113
    return-void

    .line 2116
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2117
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2118
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2123
    :cond_1
    return-void
.end method

.method public final whitelist writePersistableBundle(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/PersistableBundle;

    .line 1354
    if-nez p1, :cond_0

    .line 1355
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    return-void

    .line 1359
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1360
    return-void
.end method

.method public final greylist-max-o writeRawFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "val"    # Ljava/io/FileDescriptor;

    .line 1183
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V

    .line 1184
    return-void
.end method

.method public final greylist-max-o writeRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "value"    # [Ljava/io/FileDescriptor;

    .line 1193
    if-eqz p1, :cond_1

    .line 1194
    array-length v0, p1

    .line 1195
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1197
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1199
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1200
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    :goto_1
    return-void
.end method

.method public final whitelist writeSerializable(Ljava/io/Serializable;)V
    .locals 6
    .param p1, "s"    # Ljava/io/Serializable;

    .line 2748
    if-nez p1, :cond_0

    .line 2749
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2750
    return-void

    .line 2752
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2753
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2755
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2757
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2758
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2759
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 2761
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2766
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    nop

    .line 2767
    return-void

    .line 2762
    :catch_0
    move-exception v2

    .line 2763
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Landroid/os/BadParcelableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist writeShortArray([S)V
    .locals 3
    .param p1, "val"    # [S

    .line 1514
    if-eqz p1, :cond_1

    .line 1515
    array-length v0, p1

    .line 1516
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1518
    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1520
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1521
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    :goto_1
    return-void
.end method

.method public final whitelist writeSize(Landroid/util/Size;)V
    .locals 1
    .param p1, "val"    # Landroid/util/Size;

    .line 1367
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    return-void
.end method

.method public final whitelist writeSizeF(Landroid/util/SizeF;)V
    .locals 1
    .param p1, "val"    # Landroid/util/SizeF;

    .line 1376
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1377
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1378
    return-void
.end method

.method public final whitelist writeSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 1425
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    if-nez p1, :cond_0

    .line 1426
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    return-void

    .line 1429
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1430
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    const/4 v1, 0x0

    .line 1432
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1433
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1437
    :cond_1
    return-void
.end method

.method public final whitelist writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "val"    # Landroid/util/SparseBooleanArray;

    .line 1440
    if-nez p1, :cond_0

    .line 1441
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    return-void

    .line 1444
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1445
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1446
    const/4 v1, 0x0

    .line 1447
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1448
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1449
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    :cond_1
    return-void
.end method

.method public final greylist-max-o writeSparseIntArray(Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "val"    # Landroid/util/SparseIntArray;

    .line 1458
    if-nez p1, :cond_0

    .line 1459
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    return-void

    .line 1462
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1463
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    const/4 v1, 0x0

    .line 1465
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1466
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1470
    :cond_1
    return-void
.end method

.method public blacklist writeStackTrace(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 2866
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2867
    .local v0, "sizePosition":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2868
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 2869
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2870
    .local v2, "truncatedSize":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2871
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2872
    const-string v5, "\tat "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2871
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2874
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2875
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 2876
    .local v4, "payloadPosition":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2878
    sub-int v5, v4, v0

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2879
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2880
    return-void
.end method

.method public final whitelist writeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .line 1093
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString16(Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method public final blacklist writeString16(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 1103
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0, p1}, Landroid/os/Parcel$ReadWriteHelper;->writeString16(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public final blacklist writeString16Array([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    .line 1795
    if-eqz p1, :cond_1

    .line 1796
    array-length v0, p1

    .line 1797
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1799
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString16(Ljava/lang/String;)V

    .line 1798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1801
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1802
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    :goto_1
    return-void
.end method

.method public blacklist writeString16NoHelper(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .line 1124
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString16(JLjava/lang/String;)V

    .line 1125
    return-void
.end method

.method public final blacklist writeString8(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0, p1}, Landroid/os/Parcel$ReadWriteHelper;->writeString8(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1099
    return-void
.end method

.method public final blacklist writeString8Array([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    .line 1755
    if-eqz p1, :cond_1

    .line 1756
    array-length v0, p1

    .line 1757
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1759
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1758
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1761
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1762
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    :goto_1
    return-void
.end method

.method public blacklist writeString8NoHelper(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .line 1119
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString8(JLjava/lang/String;)V

    .line 1120
    return-void
.end method

.method public final whitelist writeStringArray([Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # [Ljava/lang/String;

    .line 1741
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString16Array([Ljava/lang/String;)V

    .line 1742
    return-void
.end method

.method public final whitelist writeStringList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2043
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 2044
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    return-void

    .line 2047
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2048
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2049
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2050
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2051
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2052
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2054
    :cond_1
    return-void
.end method

.method public greylist-max-o writeStringNoHelper(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .line 1114
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 1115
    return-void
.end method

.method public final whitelist writeStrongBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "val"    # Landroid/os/IBinder;

    .line 1153
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(JLandroid/os/IBinder;)V

    .line 1154
    return-void
.end method

.method public final whitelist writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IInterface;

    .line 1161
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1162
    return-void
.end method

.method public final whitelist writeTypedArray([Landroid/os/Parcelable;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .line 2145
    .local p1, "val":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_1

    .line 2146
    array-length v0, p1

    .line 2147
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2149
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2151
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 2152
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    :goto_1
    return-void
.end method

.method public whitelist writeTypedArrayMap(Landroid/util/ArrayMap;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;I)V"
        }
    .end annotation

    .line 1308
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-nez p1, :cond_0

    .line 1309
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    return-void

    .line 1312
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1313
    .local v0, "count":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1315
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1318
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final whitelist writeTypedList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1983
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1984
    return-void
.end method

.method public greylist-max-o writeTypedList(Ljava/util/List;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2018
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_0

    .line 2019
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    return-void

    .line 2022
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2023
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2024
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2026
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2027
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2029
    :cond_1
    return-void
.end method

.method public final whitelist writeTypedObject(Landroid/os/Parcelable;I)V
    .locals 1
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)V"
        }
    .end annotation

    .line 2167
    .local p1, "val":Landroid/os/Parcelable;, "TT;"
    if-eqz p1, :cond_0

    .line 2168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2169
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2171
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2173
    :goto_0
    return-void
.end method

.method public final whitelist writeTypedSparseArray(Landroid/util/SparseArray;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2002
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    if-nez p1, :cond_0

    .line 2003
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2004
    return-void

    .line 2006
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2007
    .local v0, "count":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2009
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2012
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writeValue(ILjava/lang/Object;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "v"    # Ljava/lang/Object;

    .line 2432
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2532
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unable to marshal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2523
    :pswitch_1
    move-object v0, p2

    check-cast v0, [F

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2524
    goto/16 :goto_0

    .line 2520
    :pswitch_2
    move-object v0, p2

    check-cast v0, [C

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 2521
    goto/16 :goto_0

    .line 2517
    :pswitch_3
    move-object v0, p2

    check-cast v0, [S

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeShortArray([S)V

    .line 2518
    goto/16 :goto_0

    .line 2514
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2515
    goto/16 :goto_0

    .line 2511
    :pswitch_5
    move-object v0, p2

    check-cast v0, [D

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 2512
    goto/16 :goto_0

    .line 2508
    :pswitch_6
    move-object v0, p2

    check-cast v0, Landroid/util/SizeF;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeSizeF(Landroid/util/SizeF;)V

    .line 2509
    goto/16 :goto_0

    .line 2505
    :pswitch_7
    move-object v0, p2

    check-cast v0, Landroid/util/Size;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    .line 2506
    goto/16 :goto_0

    .line 2448
    :pswitch_8
    move-object v0, p2

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 2449
    goto/16 :goto_0

    .line 2487
    :pswitch_9
    move-object v0, p2

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 2488
    goto/16 :goto_0

    .line 2478
    :pswitch_a
    move-object v0, p2

    check-cast v0, [Z

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 2479
    goto/16 :goto_0

    .line 2529
    :pswitch_b
    move-object v0, p2

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2530
    goto/16 :goto_0

    .line 2502
    :pswitch_c
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2503
    goto/16 :goto_0

    .line 2499
    :pswitch_d
    move-object v0, p2

    check-cast v0, [J

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2500
    goto/16 :goto_0

    .line 2496
    :pswitch_e
    move-object v0, p2

    check-cast v0, [I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2497
    goto/16 :goto_0

    .line 2526
    :pswitch_f
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 2527
    goto/16 :goto_0

    .line 2493
    :pswitch_10
    move-object v1, p2

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2494
    goto/16 :goto_0

    .line 2490
    :pswitch_11
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2491
    goto/16 :goto_0

    .line 2484
    :pswitch_12
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2485
    goto/16 :goto_0

    .line 2481
    :pswitch_13
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2482
    goto/16 :goto_0

    .line 2475
    :pswitch_14
    move-object v0, p2

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 2476
    goto/16 :goto_0

    .line 2472
    :pswitch_15
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2473
    goto :goto_0

    .line 2469
    :pswitch_16
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2470
    goto :goto_0

    .line 2466
    :pswitch_17
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2467
    goto :goto_0

    .line 2463
    :pswitch_18
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2464
    goto :goto_0

    .line 2460
    :pswitch_19
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2461
    goto :goto_0

    .line 2457
    :pswitch_1a
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2458
    goto :goto_0

    .line 2454
    :pswitch_1b
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2455
    goto :goto_0

    .line 2451
    :pswitch_1c
    move-object v1, p2

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2452
    goto :goto_0

    .line 2445
    :pswitch_1d
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2446
    goto :goto_0

    .line 2442
    :pswitch_1e
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2443
    goto :goto_0

    .line 2439
    :pswitch_1f
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2440
    goto :goto_0

    .line 2436
    :pswitch_20
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2437
    goto :goto_0

    .line 2434
    :pswitch_21
    nop

    .line 2534
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final whitelist writeValue(Ljava/lang/Object;)V
    .locals 5
    .param p1, "v"    # Ljava/lang/Object;

    .line 2315
    instance-of v0, p1, Landroid/os/Parcel$LazyValue;

    if-eqz v0, :cond_0

    .line 2316
    move-object v0, p1

    check-cast v0, Landroid/os/Parcel$LazyValue;

    .line 2317
    .local v0, "value":Landroid/os/Parcel$LazyValue;
    invoke-virtual {v0, p0}, Landroid/os/Parcel$LazyValue;->writeToParcel(Landroid/os/Parcel;)V

    .line 2318
    return-void

    .line 2320
    .end local v0    # "value":Landroid/os/Parcel$LazyValue;
    :cond_0
    invoke-static {p1}, Landroid/os/Parcel;->getValueType(Ljava/lang/Object;)I

    move-result v0

    .line 2321
    .local v0, "type":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    invoke-direct {p0, v0}, Landroid/os/Parcel;->isLengthPrefixed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2324
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2325
    .local v1, "length":I
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2327
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 2328
    .local v2, "start":I
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeValue(ILjava/lang/Object;)V

    .line 2329
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 2331
    .local v3, "end":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2332
    sub-int v4, v3, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2334
    .end local v1    # "length":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    goto :goto_0

    .line 2335
    :cond_1
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeValue(ILjava/lang/Object;)V

    .line 2337
    :goto_0
    return-void
.end method
