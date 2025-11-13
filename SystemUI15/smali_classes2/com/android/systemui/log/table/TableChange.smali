.class public final Lcom/android/systemui/log/table/TableChange;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bool:Z

.field public columnName:Ljava/lang/String;

.field public columnPrefix:Ljava/lang/String;

.field public int:Ljava/lang/Integer;

.field public isInitial:Z

.field public str:Ljava/lang/String;

.field public timestamp:J

.field public type:Lcom/android/systemui/log/table/TableChange$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/log/table/TableChange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/log/table/TableChange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0xff

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/log/table/TableChange;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/android/systemui/log/table/TableChange$DataType;ZLjava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZLcom/android/systemui/log/table/TableChange$DataType;ZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    iput-object p3, p0, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/log/table/TableChange;->isInitial:Z

    iput-object p6, p0, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-boolean p7, p0, Lcom/android/systemui/log/table/TableChange;->bool:Z

    iput-object p8, p0, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    const/16 p1, 0x1f4

    invoke-static {p1, p3}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ZLcom/android/systemui/log/table/TableChange$DataType;ZLjava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const-string v4, ""

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/systemui/log/table/TableChange$DataType;->EMPTY:Lcom/android/systemui/log/table/TableChange$DataType;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v6, p7

    :goto_5
    and-int/lit8 v8, v0, 0x40

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    move-object v8, v9

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move p5, v5

    move-object/from16 p6, v7

    move/from16 p7, v6

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/log/table/TableChange;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/android/systemui/log/table/TableChange$DataType;ZLjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/log/table/TableChange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/log/table/TableChange;

    iget-wide v3, p0, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    iget-wide v5, p1, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/log/table/TableChange;->isInitial:Z

    iget-boolean v3, p1, Lcom/android/systemui/log/table/TableChange;->isInitial:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    iget-object v3, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/log/table/TableChange;->bool:Z

    iget-boolean v3, p1, Lcom/android/systemui/log/table/TableChange;->bool:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    const-string v1, "."

    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final getVal()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    sget-object v1, Lcom/android/systemui/log/table/TableChange$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/log/table/TableChange;->bool:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/log/table/TableChange;->isInitial:Z

    if-eqz p0, :cond_4

    const-string p0, "**"

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasData()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    sget-object v0, Lcom/android/systemui/log/table/TableChange$DataType;->EMPTY:Lcom/android/systemui/log/table/TableChange$DataType;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/log/table/TableChange;->isInitial:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/log/table/TableChange;->bool:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final reset(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    const/16 p1, 0x1f4

    invoke-static {p1, p3}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    invoke-static {p1, p4}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/log/table/TableChange;->isInitial:Z

    sget-object p1, Lcom/android/systemui/log/table/TableChange$DataType;->EMPTY:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p1, p0, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/log/table/TableChange;->bool:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    iget-object v2, p0, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/log/table/TableChange;->isInitial:Z

    iget-object v5, p0, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    iget-boolean v6, p0, Lcom/android/systemui/log/table/TableChange;->bool:Z

    iget-object v7, p0, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TableChange(timestamp="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", columnPrefix="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", columnName="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isInitial="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bool="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", int="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", str="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
