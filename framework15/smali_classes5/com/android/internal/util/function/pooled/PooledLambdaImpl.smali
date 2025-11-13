.class final Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.super Lcom/android/internal/util/function/pooled/OmniFunction;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;,
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/util/function/pooled/OmniFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FLAG_ACQUIRED_FROM_MESSAGE_CALLBACKS_POOL:I = 0x2000

.field private static final blacklist FLAG_RECYCLED:I = 0x800

.field private static final blacklist FLAG_RECYCLE_ON_USE:I = 0x1000

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PooledLambdaImpl"

.field static final blacklist MASK_EXPOSED_AS:I = 0x1fc000

.field static final blacklist MASK_FUNC_TYPE:I = 0xfe00000

.field private static final blacklist MAX_ARGS:I = 0xb

.field private static final blacklist MAX_POOL_SIZE:I = 0x32

.field static final blacklist sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

.field static final blacklist sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;


# instance fields
.field blacklist mArgs:[Ljava/lang/Object;

.field blacklist mConstValue:J

.field blacklist mFlags:I

.field blacklist mFunc:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmask(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smunmask(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    return-void
.end method

.method static blacklist acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/internal/util/function/pooled/PooledLambda;",
            ">(",
            "Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;",
            "Ljava/lang/Object;",
            "III",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    move/from16 v0, p2

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    const/high16 v2, 0xfe00000

    move/from16 v3, p4

    invoke-static {v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    const v2, 0x1fc000

    invoke-static/range {p3 .. p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v0, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    :cond_0
    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v5, p5

    invoke-static {v2, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x1

    move-object/from16 v6, p6

    invoke-static {v2, v4, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x2

    move-object/from16 v7, p7

    invoke-static {v2, v4, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x3

    move-object/from16 v8, p8

    invoke-static {v2, v4, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x4

    move-object/from16 v9, p9

    invoke-static {v2, v4, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x5

    move-object/from16 v10, p10

    invoke-static {v2, v4, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x6

    move-object/from16 v11, p11

    invoke-static {v2, v4, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v4, 0x7

    move-object/from16 v12, p12

    invoke-static {v2, v4, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 v4, 0x8

    move-object/from16 v13, p13

    invoke-static {v2, v4, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 v4, 0x9

    move-object/from16 v14, p14

    invoke-static {v2, v4, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 v4, 0xa

    move-object/from16 v15, p15

    invoke-static {v2, v4, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 v4, 0xb

    move-object/from16 v0, p16

    invoke-static {v2, v4, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v1
.end method

.method static blacklist acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    invoke-direct {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;-><init>()V

    move-object v0, v1

    :cond_0
    iget v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    nop

    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    if-ne p0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x2000

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    return-object v0
.end method

.method static blacklist acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .locals 3

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v1

    const/high16 v2, 0xfe00000

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    const v2, 0x1fc000

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    return-object v0
.end method

.method private blacklist checkNotRecycled()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance is recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, ","

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist doInvoke()Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/high16 v1, 0xfe00000

    invoke-virtual {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeReturnType(I)I

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    packed-switch v3, :pswitch_data_1

    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    return-object v4

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    return-object v4

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :pswitch_5
    packed-switch v3, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_6
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v18, v7

    check-cast v18, Lcom/android/internal/util/function/DodecFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v29

    const/16 v4, 0xb

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v30

    invoke-interface/range {v18 .. v30}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_7
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v18, v7

    check-cast v18, Lcom/android/internal/util/function/DodecPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v29

    const/16 v4, 0xb

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v30

    invoke-interface/range {v18 .. v30}, Lcom/android/internal/util/function/DodecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_8
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v18, v7

    check-cast v18, Lcom/android/internal/util/function/DodecConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v29

    const/16 v4, 0xb

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v30

    invoke-interface/range {v18 .. v30}, Lcom/android/internal/util/function/DodecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_9
    packed-switch v3, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_a
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v7

    check-cast v16, Lcom/android/internal/util/function/UndecFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_b
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v7

    check-cast v16, Lcom/android/internal/util/function/UndecPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_c
    iget-object v7, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v7

    check-cast v17, Lcom/android/internal/util/function/UndecConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-interface/range {v17 .. v28}, Lcom/android/internal/util/function/UndecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_d
    packed-switch v3, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_e
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/DecFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_f
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/DecPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_10
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/DecConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v17 .. v27}, Lcom/android/internal/util/function/DecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_11
    packed-switch v3, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_12
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/NonaFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_13
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/NonaPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_14
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/NonaConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v17 .. v26}, Lcom/android/internal/util/function/NonaConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_15
    packed-switch v3, :pswitch_data_6

    goto/16 :goto_0

    :pswitch_16
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/OctFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_17
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/OctPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_18
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/OctConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v17 .. v25}, Lcom/android/internal/util/function/OctConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_19
    packed-switch v3, :pswitch_data_7

    goto/16 :goto_0

    :pswitch_1a
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/HeptFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_1b
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/HeptPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_1c
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/HeptConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-interface/range {v17 .. v24}, Lcom/android/internal/util/function/HeptConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_1d
    packed-switch v3, :pswitch_data_8

    goto/16 :goto_0

    :pswitch_1e
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/HexFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v16 .. v22}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_1f
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/internal/util/function/HexPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v16 .. v22}, Lcom/android/internal/util/function/HexPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_20
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/internal/util/function/HexConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-interface/range {v17 .. v23}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_21
    packed-switch v3, :pswitch_data_9

    goto/16 :goto_0

    :pswitch_22
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/android/internal/util/function/QuintFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface/range {v5 .. v10}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_23
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/android/internal/util/function/QuintPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface/range {v5 .. v10}, Lcom/android/internal/util/function/QuintPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_24
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/android/internal/util/function/QuintConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface/range {v5 .. v10}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_25
    packed-switch v3, :pswitch_data_a

    goto/16 :goto_0

    :pswitch_26
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/QuadFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_27
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/QuadPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/util/function/QuadPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_28
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/QuadConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_29
    packed-switch v3, :pswitch_data_b

    goto/16 :goto_0

    :pswitch_2a
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/TriFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_2b
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/TriPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_2c
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/function/TriConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_2d
    packed-switch v3, :pswitch_data_c

    goto/16 :goto_0

    :pswitch_2e
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/BiFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_2f
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/BiPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_30
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/BiConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_31
    packed-switch v3, :pswitch_data_d

    goto :goto_0

    :pswitch_32
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Function;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_33
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Predicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :pswitch_34
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Consumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v4, 0x0

    return-object v4

    :pswitch_35
    packed-switch v3, :pswitch_data_e

    goto :goto_0

    :pswitch_36
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :pswitch_37
    iget-object v4, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    const/4 v4, 0x0

    return-object v4

    :goto_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown function type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method private blacklist doRecycle()V
    .locals 3

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    :goto_0
    nop

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const/16 v1, 0x800

    iput v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    invoke-virtual {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist fillInArg(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aput-object p1, v2, v1

    iget v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v2, v2

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v4

    or-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more arguments expected for provided arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " among "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getFuncTypeAsString()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<recycled>"

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v0

    const-string/jumbo v1, "supplier"

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const v0, 0x1fc000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Consumer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "consumer"

    return-object v1

    :cond_2
    const-string v2, "Function"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "function"

    return-object v1

    :cond_3
    const-string v2, "Predicate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, "predicate"

    return-object v1

    :cond_4
    const-string v2, "Supplier"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_5
    const-string v1, "Runnable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "runnable"

    return-object v1

    :cond_6
    return-object v0
.end method

.method private static blacklist hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isConstSupplier()Z
    .locals 2

    const/high16 v0, 0xfe00000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isInvocationArgAtIndex(I)Z
    .locals 3

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isRecycleOnUse()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isRecycled()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist mask(II)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shl-int v0, p1, v0

    and-int/2addr v0, p0

    return v0
.end method

.method private blacklist popArg(I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isInvocationArgAtIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    aput-object v2, v1, p1

    iget v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v1, v1

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    not-long v3, v3

    and-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    :cond_0
    return-object v0
.end method

.method private static blacklist setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_0

    aput-object p2, p0, p1

    :cond_0
    return-void
.end method

.method private static blacklist unmask(II)I
    .locals 3

    and-int v0, p1, p0

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getAsDouble()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getAsInt()I
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api getAsLong()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    return-wide v0
.end method

.method blacklist getFlags(I)I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    invoke-static {p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result v0

    return v0
.end method

.method public blacklist getTraceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->getLambdaName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->checkNotRecycled()V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v4, p4

    invoke-direct {v1, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v5, p5

    invoke-direct {v1, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v6, p6

    invoke-direct {v1, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v7, p7

    invoke-direct {v1, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v8, p8

    invoke-direct {v1, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v9, p9

    invoke-direct {v1, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v10, p10

    invoke-direct {v1, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v11, p11

    invoke-direct {v1, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v10, p10

    :cond_1
    move-object/from16 v11, p11

    goto :goto_0

    :cond_2
    move-object/from16 v6, p6

    :cond_3
    move-object/from16 v7, p7

    :cond_4
    move-object/from16 v8, p8

    :cond_5
    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    goto :goto_0

    :cond_6
    move-object/from16 v2, p2

    :cond_7
    move-object/from16 v3, p3

    :cond_8
    move-object/from16 v4, p4

    :cond_9
    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    :cond_a
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move v12, v0

    const/high16 v0, 0xfe00000

    invoke-virtual {v1, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v13

    const/16 v0, 0xf

    if-eq v13, v0, :cond_c

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v13, :cond_c

    iget-object v14, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v14, v14, v0

    sget-object v15, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-eq v14, v15, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing argument #"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " among "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v15, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_c
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    goto :goto_4

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v2

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v2, :cond_e

    invoke-direct {v1, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v0, :cond_10

    invoke-direct {v1, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    :cond_10
    throw v2
.end method

.method public blacklist negate()Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/BiPredicate;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/Predicate;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist recycle()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    :cond_0
    return-void
.end method

.method public blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method blacklist setFlags(II)V
    .locals 2

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    invoke-static {p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<recycled PooledLambda@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v1

    const-string v2, ")"

    const-string v3, "("

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    instance-of v4, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/high16 v4, 0xfe00000

    invoke-virtual {p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
