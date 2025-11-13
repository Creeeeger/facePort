.class public final Lcom/android/systemui/log/LogMessageImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/core/LogMessage;


# static fields
.field public static final Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;


# instance fields
.field public bool1:Z

.field public bool2:Z

.field public bool3:Z

.field public bool4:Z

.field public bool5:Z

.field public double1:D

.field public exception:Ljava/lang/Throwable;

.field public int1:I

.field public int2:I

.field public level:Lcom/android/systemui/log/core/LogLevel;

.field public long1:J

.field public long2:J

.field public messagePrinter:Lkotlin/jvm/functions/Function1;

.field public str1:Ljava/lang/String;

.field public str2:Ljava/lang/String;

.field public str3:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public tagSeparator:Ljava/lang/Character;

.field public threadId:J

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/log/LogMessageImpl$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/log/LogMessageImpl$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/log/LogMessageImpl;->Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZZJLjava/lang/Character;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/core/LogLevel;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJJDZZZZZJ",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/core/LogLevel;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    move v1, p10

    iput v1, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move v1, p11

    iput v1, v0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    move-wide v1, p12

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/log/LogMessageImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iget-object v1, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/core/LogLevel;

    iget-object v3, p1, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/core/LogLevel;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    iget-wide v5, p1, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iget v3, p1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    iget v3, p1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    iget-wide v5, p1, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    iget-wide v5, p1, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    iget-wide v5, p1, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iget-boolean v3, p1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iget-boolean v3, p1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    iget-boolean v3, p1, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    iget-boolean v3, p1, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    iget-boolean v3, p1, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    iget-wide v5, p1, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    iget-object p1, p1, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getBool1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    return p0
.end method

.method public final getBool2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    return p0
.end method

.method public final getBool3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    return p0
.end method

.method public final getBool4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    return p0
.end method

.method public final getBool5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    return p0
.end method

.method public final getDouble1()D
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    return-wide v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getInt1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    return p0
.end method

.method public final getInt2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    return p0
.end method

.method public final getLevel()Lcom/android/systemui/log/core/LogLevel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/core/LogLevel;

    return-object p0
.end method

.method public final getLong1()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    return-wide v0
.end method

.method public final getLong2()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    return-wide v0
.end method

.method public final getMessagePrinter()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getStr1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    return-object p0
.end method

.method public final getStr2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    return-object p0
.end method

.method public final getStr3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final getTagSeparator()Ljava/lang/Character;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    return-object p0
.end method

.method public final getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v4, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v4, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v4, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-static {v4, v5}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-wide v4, p0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public final reset(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/core/LogLevel;

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    iput-object p5, p0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput p2, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    iput-wide p3, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    const-wide/16 p5, 0x0

    iput-wide p5, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    iput-boolean p2, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p2, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean p2, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    iput-boolean p2, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    iput-boolean p2, p0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    iput-wide p3, p0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    return-void
.end method

.method public final setBool1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    return-void
.end method

.method public final setBool2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    return-void
.end method

.method public final setBool3(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    return-void
.end method

.method public final setBool4(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    return-void
.end method

.method public final setBool5(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    return-void
.end method

.method public final setDouble1(D)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    return-void
.end method

.method public final setInt1(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    return-void
.end method

.method public final setInt2(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    return-void
.end method

.method public final setLong1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    return-void
.end method

.method public final setLong2(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    return-void
.end method

.method public final setStr1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    return-void
.end method

.method public final setStr2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    return-void
.end method

.method public final setStr3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    return-void
.end method

.method public final setTagSeparator(Ljava/lang/Character;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    return-void
.end method

.method public final setThreadId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/core/LogLevel;

    iget-object v2, v0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    iget-object v5, v0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    iget-object v7, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    iget v10, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iget v11, v0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    iget-wide v12, v0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    iget-wide v14, v0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    move-wide/from16 v18, v14

    iget-boolean v14, v0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iget-boolean v15, v0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    move/from16 v20, v14

    iget-boolean v14, v0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    move/from16 v21, v14

    iget-boolean v14, v0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    move/from16 v22, v14

    iget-boolean v14, v0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    move/from16 v24, v14

    move/from16 v23, v15

    iget-wide v14, v0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    iget-object v0, v0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-wide/from16 v25, v14

    const-string v14, "LogMessageImpl(level="

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messagePrinter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", str1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", str2="

    const-string v2, ", str3="

    invoke-static {v0, v1, v8, v2, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", int1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", int2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", long1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", long2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", double1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bool1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bool2="

    const-string v2, ", bool3="

    move/from16 v3, v20

    move/from16 v4, v23

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", bool4="

    const-string v2, ", bool5="

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tagSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
