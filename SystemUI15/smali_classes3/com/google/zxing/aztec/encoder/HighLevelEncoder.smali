.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CHAR_MAP:[[I

.field public static final LATCH_TABLE:[[I

.field public static final MODE_NAMES:[Ljava/lang/String;

.field public static final SHIFT_TABLE:[[I


# instance fields
.field public final charset:Ljava/nio/charset/Charset;

.field public final text:[B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v3, 0xc

    const/16 v4, 0x2c

    const/16 v6, 0x1c

    const/16 v7, 0xd

    const/16 v8, 0x2e

    const-string v9, "MIXED"

    const-string v10, "PUNCT"

    const-string v11, "UPPER"

    const-string v12, "LOWER"

    const-string v13, "DIGIT"

    filled-new-array {v11, v12, v13, v9, v10}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    const/4 v9, 0x0

    const v10, 0x5001c

    const v11, 0x5001e

    const v12, 0x5001d

    const v13, 0xa03be

    filled-new-array {v9, v10, v11, v12, v13}, [I

    move-result-object v14

    const v15, 0x901ee

    filled-new-array {v15, v9, v11, v12, v13}, [I

    move-result-object v15

    const v0, 0x901dd

    const v1, 0xe3bbe

    const v5, 0x4000e

    const v2, 0x901dc

    filled-new-array {v5, v2, v9, v0, v1}, [I

    move-result-object v0

    filled-new-array {v12, v10, v13, v9, v11}, [I

    move-result-object v1

    const v2, 0xa03fe

    const v5, 0xa03fd

    const v10, 0x5001f

    const v11, 0xa03fc

    filled-new-array {v10, v11, v2, v5, v9}, [I

    move-result-object v2

    filled-new-array {v14, v15, v0, v1, v2}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v5, 0x100

    aput v5, v1, v2

    const/4 v5, 0x5

    aput v5, v1, v9

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v9

    const/16 v5, 0x20

    aput v2, v1, v5

    const/16 v1, 0x41

    :goto_0
    const/16 v10, 0x5a

    if-gt v1, v10, :cond_0

    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v10, v10, v9

    add-int/lit8 v11, v1, -0x3f

    aput v11, v10, v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v2

    aput v2, v1, v5

    const/16 v1, 0x61

    :goto_1
    const/16 v10, 0x7a

    if-gt v1, v10, :cond_1

    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v10, v10, v2

    add-int/lit8 v11, v1, -0x5f

    aput v11, v10, v1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v0

    aput v2, v1, v5

    const/16 v1, 0x30

    :goto_2
    const/16 v5, 0x39

    if-gt v1, v5, :cond_2

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v0

    add-int/lit8 v10, v1, -0x2e

    aput v10, v5, v1

    add-int/2addr v1, v2

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v0

    aput v3, v1, v4

    aput v7, v1, v8

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    move v3, v9

    :goto_3
    if-ge v3, v6, :cond_3

    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    const/4 v5, 0x3

    aget-object v4, v4, v5

    aget v5, v1, v3

    aput v3, v4, v5

    add-int/2addr v3, v2

    goto :goto_3

    :cond_3
    const/16 v3, 0x1f

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    move v4, v9

    :goto_4
    if-ge v4, v3, :cond_5

    aget v5, v1, v4

    if-lez v5, :cond_4

    sget-object v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    const/4 v8, 0x4

    aget-object v7, v7, v8

    aput v4, v7, v5

    :cond_4
    add-int/2addr v4, v2

    goto :goto_4

    :cond_5
    new-array v1, v0, [I

    const/4 v3, 0x6

    aput v3, v1, v2

    aput v3, v1, v9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    array-length v3, v1

    move v4, v9

    :goto_5
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    const/4 v7, -0x1

    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    add-int/2addr v4, v2

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v3, v1, v9

    const/4 v4, 0x4

    aput v9, v3, v4

    aget-object v2, v1, v2

    aput v9, v2, v4

    aput v6, v2, v9

    const/4 v2, 0x3

    aget-object v2, v1, v2

    aput v9, v2, v4

    aget-object v0, v1, v0

    aput v9, v0, v4

    const/16 v1, 0xf

    aput v1, v0, v9

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    iput-object p2, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method
