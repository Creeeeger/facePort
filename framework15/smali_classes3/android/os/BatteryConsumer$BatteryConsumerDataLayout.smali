.class Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryConsumerDataLayout"
.end annotation


# static fields
.field private static final blacklist KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

.field public static final blacklist POWER_MODEL_NOT_INCLUDED:I = -0x1


# instance fields
.field public final blacklist columnCount:I

.field public final blacklist customPowerComponentCount:I

.field public final blacklist customPowerComponentNames:[Ljava/lang/String;

.field public final blacklist firstCustomConsumedPowerColumn:I

.field public final blacklist firstCustomUsageDurationColumn:I

.field public final blacklist indexedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryConsumer$Key;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist keys:[Landroid/os/BatteryConsumer$Key;

.field private blacklist mPerComponentKeys:[[Landroid/os/BatteryConsumer$Key;

.field public final blacklist powerModelsIncluded:Z

.field public final blacklist powerStateDataIncluded:Z

.field public final blacklist processStateDataIncluded:Z

.field public final blacklist screenStateDataIncluded:Z

.field public final blacklist totalConsumedPowerColumnIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method private constructor blacklist <init>(I[Ljava/lang/String;ZZZZ)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v9, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    array-length v0, v9

    iput v0, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    move/from16 v12, p3

    iput-boolean v12, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerModelsIncluded:Z

    move/from16 v13, p4

    iput-boolean v13, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    iput-boolean v10, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    iput-boolean v11, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    move/from16 v0, p1

    add-int/lit8 v1, v0, 0x1

    iput v0, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    const/4 v7, 0x3

    if-ge v15, v7, :cond_4

    if-nez v10, :cond_0

    if-eqz v15, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_3

    if-nez v11, :cond_1

    if-eqz v6, :cond_1

    move/from16 v18, v6

    move/from16 v19, v7

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    move v5, v0

    move/from16 v16, v1

    :goto_2
    const/16 v0, 0x13

    if-ge v5, v0, :cond_2

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v5

    move/from16 v17, v5

    move v5, v15

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->addKeys(Ljava/util/List;ZZIIII)I

    move-result v16

    add-int/lit8 v5, v17, 0x1

    move/from16 v7, v19

    goto :goto_2

    :cond_2
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v1, v16

    :goto_3
    add-int/lit8 v6, v18, 0x1

    move/from16 v7, v19

    goto :goto_1

    :cond_3
    move/from16 v18, v6

    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_4
    iput v1, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    iget v0, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/2addr v1, v0

    iput v1, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    iget v0, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/2addr v1, v0

    iput v1, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    sget-object v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/BatteryConsumer$Key;

    iput-object v0, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    new-instance v0, Landroid/util/SparseArray;

    iget-object v2, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v2, v2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_5
    iget-object v2, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v2, v2, v0

    iget v3, v2, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v4, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v5, v2, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v6, v2, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-direct {v8, v3, v4, v5, v6}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keyIndex(IIII)I

    move-result v3

    iget-object v4, v8, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method synthetic constructor blacklist <init>(I[Ljava/lang/String;ZZZZLandroid/os/BatteryConsumer$BatteryConsumerDataLayout-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;-><init>(I[Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method private blacklist addKeys(Ljava/util/List;ZZIIII)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryConsumer$Key;",
            ">;ZZIIII)I"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v10, Landroid/os/BatteryConsumer$Key;

    const/4 v11, -0x1

    if-eqz p2, :cond_0

    add-int/lit8 v1, p7, 0x1

    move/from16 v6, p7

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p7

    move v6, v11

    :goto_0
    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v12, v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v1, v10

    move/from16 v2, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v1 .. v9}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIIIILandroid/os/BatteryConsumer$Key-IA;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_5

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetSUPPORTED_POWER_COMPONENTS_PER_PROCESS_STATE()Landroid/util/IntArray;

    move-result-object v1

    move/from16 v13, p4

    invoke-virtual {v1, v13}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    const/4 v2, 0x0

    move/from16 v16, v12

    move v12, v2

    move/from16 v2, v16

    :goto_2
    const/4 v3, 0x5

    if-ge v12, v3, :cond_4

    if-nez v12, :cond_2

    goto :goto_4

    :cond_2
    new-instance v14, Landroid/os/BatteryConsumer$Key;

    if-eqz p2, :cond_3

    add-int/lit8 v3, v2, 0x1

    move v7, v2

    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v2

    move v7, v11

    :goto_3
    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v15, v9, 0x1

    const/4 v10, 0x0

    move-object v2, v14

    move/from16 v3, p4

    move v4, v12

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v2 .. v10}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIIIILandroid/os/BatteryConsumer$Key-IA;)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v15

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move v12, v2

    goto :goto_5

    :cond_5
    move/from16 v13, p4

    :cond_6
    :goto_5
    return v12
.end method

.method private blacklist keyIndex(IIII)I
    .locals 2

    shl-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p2, 0x4

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x2

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    return v0
.end method


# virtual methods
.method blacklist getKey(IIII)Landroid/os/BatteryConsumer$Key;
    .locals 2

    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keyIndex(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryConsumer$Key;

    return-object v0
.end method

.method blacklist getKeyOrThrow(IIII)Landroid/os/BatteryConsumer$Key;
    .locals 4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->toString(IIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:[[Landroid/os/BatteryConsumer$Key;

    if-nez v0, :cond_0

    const/16 v0, 0x13

    new-array v0, v0, [[Landroid/os/BatteryConsumer$Key;

    iput-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:[[Landroid/os/BatteryConsumer$Key;

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    iget v6, v5, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    if-ne v6, p1, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/BatteryConsumer$Key;

    move-object v0, v2

    iget-object v2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:[[Landroid/os/BatteryConsumer$Key;

    aput-object v0, v2, p1

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
