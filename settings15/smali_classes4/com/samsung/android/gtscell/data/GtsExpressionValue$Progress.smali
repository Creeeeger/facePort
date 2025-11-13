.class public final Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;
.super Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;",
        "Lcom/samsung/android/gtscell/data/GtsExpressionValue;",
        "value",
        "",
        "min",
        "max",
        "name",
        "",
        "(IIILjava/lang/String;)V",
        "getMax",
        "()I",
        "getMin",
        "getName",
        "()Ljava/lang/String;",
        "getValue",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final max:I

.field private final min:I

.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    iput p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    iput p3, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    iput-object p4, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;IIILjava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->copy(IIILjava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IIILjava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;
    .locals 0

    const-string/jumbo p0, "name"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    iget v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    iget v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    iget v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getMax()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    return p0
.end method

.method public final getMin()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Progress(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
